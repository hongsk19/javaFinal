import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Color;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class LoginForm extends JFrame implements ActionListener{
	
	private JTextField textField;
	private JTextField textField_1;
	private JButton btnCancel = new JButton("Cancel");
	private JButton btnLogin = new JButton("Login");
	
	@Override
	public void actionPerformed(ActionEvent e) {
//		System.out.println("e.getSource() = "+e.getSource());
		
		if(e.getSource() == btnCancel) {
			System.exit(0);
		}else {
//			DB 연결 해가지고 ID PW 가 같으면
			/*
			 * 1. ojdbc6.jar 파일 가져와서 프로젝트에 빌드패스 설정
			 * 2. class.forname 함수로 class 추가 되었는지 확인
			 * 3. Connection DriverManager.getConnection DB 연결
			 * 4. prepareStartement pstmt so1 구문 지정
			 * 5. Resultset 테이블 내용 담기.
			 * 
			 * insert update delete -> excuteUpdate(); 반환값이 0,1
			 * select -> executeQuery(); 반환값이 테이블
			 */
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1234");
				pstmt= conn.prepareStatement("select * from member where id =? and pw=?");
				pstmt.setString(1, textField.getText());
				pstmt.setString(2, textField_1.getText());
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
//					System.out.println("id = "+rs.getString(1));
//					System.out.println("pw = "+rs.getString(2));
					setVisible(false);
					new MainForm();
				}else {
					JOptionPane.showMessageDialog(null,"로그인 정보를 확인 하세요");
				}
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
			  try {
				rs.close();
				pstmt.close();
				conn.close();
				}catch(SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	}
	
	LoginForm(){
		setLocationRelativeTo(null);
		
		setTitle("LoginForm");
		
		
		setSize(300,400);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		getContentPane().setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBackground(new Color(0,0,153));
		panel.setBounds(0, 0, 284, 85);
		getContentPane().add(panel);
		panel.setLayout(null);
		
		JLabel lblLoginForm = new JLabel("Login Form");
		lblLoginForm.setFont(new Font("HY궁서B", Font.PLAIN, 20));
		lblLoginForm.setForeground(Color.WHITE);
		lblLoginForm.setBounds(49, 10, 190, 65);
		panel.add(lblLoginForm);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBackground(new Color(51,204,204));
		panel_1.setBounds(0, 84, 284, 278);
		getContentPane().add(panel_1);
		panel_1.setLayout(null);
		
		
		btnCancel.setFont(new Font("HY궁서B", Font.PLAIN, 12));
		btnCancel.setBounds(28, 179, 103, 57);
		panel_1.add(btnCancel);
		
		
		btnLogin.setFont(new Font("HY궁서B", Font.PLAIN, 12));
		btnLogin.setBounds(143, 179, 103, 57);
		panel_1.add(btnLogin);
		
		JLabel lblId = new JLabel("ID");
		lblId.setForeground(Color.WHITE);
		lblId.setFont(new Font("HY궁서B", Font.PLAIN, 20));
		lblId.setBounds(39, 42, 57, 24);
		panel_1.add(lblId);
		
		JLabel lblPw = new JLabel("PW");
		lblPw.setForeground(Color.WHITE);
		lblPw.setFont(new Font("HY궁서B", Font.PLAIN, 20));
		lblPw.setBounds(39, 100, 57, 24);
		panel_1.add(lblPw);
		
		textField = new JTextField();
		textField.setFont(new Font("HY궁서B", Font.PLAIN, 20));
		textField.setBounds(108, 39, 116, 30);
		panel_1.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("HY궁서B", Font.PLAIN, 20));
		textField_1.setColumns(10);
		textField_1.setBounds(108, 97, 116, 30);
		panel_1.add(textField_1);
		
		setVisible(true);
		
		btnCancel.addActionListener(this);
		btnLogin.addActionListener(this);
	}
	
	public static void main(String[] args) {
		new LoginForm();
	}

	
}
