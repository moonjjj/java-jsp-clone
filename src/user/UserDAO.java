package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO(){
		try {
			String jdbcURL = "jdbc:mysql://localhost:3306/BBS?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="12345";
			   Class.forName("com.mysql.jdbc.Driver");
			   conn = DriverManager.getConnection(jdbcURL, dbID, dbPassword);
			   
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) { // id�� ����� �޾ƿ´�.
		String SQL = "SELECT userPassword FROM USER WHERE userID=?"; // ������� ���̺��� ���̵��� ������ ���ؼ� �׿� �´� ��й�ȣ�� ã�ƿ���
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); // where�� �ȿ� �ִ� userID�� 1���̴�. �� �ȿ�, �޾ƿ� userID(�ڹ�)�� �ִ´�.
			rs = pstmt.executeQuery();
			while(rs.next()){
				if (rs.getString(1).equals(userPassword)) // rs.getstring ù��°����(
					return 1; // log in success
				else
					return 0; // ��й�ȣ ����ġ
			}
			return -1; //id�� ���� ��
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	public int join(User user) {
		String SQL="INSERT INTO USER VALUES(?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); // �� �־��ְ� �� update���ֱ�
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
