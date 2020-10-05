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
	
	public int login(String userID, String userPassword) { // id와 비번을 받아온다.
		String SQL = "SELECT userPassword FROM USER WHERE userID=?"; // 유저라는 테이블에서 아이디라는 조건을 통해서 그에 맞는 비밀번호를 찾아오기
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); // where절 안에 있는 userID가 1번이다. 그 안에, 받아온 userID(자바)를 넣는다.
			rs = pstmt.executeQuery();
			while(rs.next()){
				if (rs.getString(1).equals(userPassword)) // rs.getstring 첫번째거인(
					return 1; // log in success
				else
					return 0; // 비밀번호 불일치
			}
			return -1; //id가 없을 때
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
			return pstmt.executeUpdate(); // 다 넣어주고 꼭 update해주기
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
