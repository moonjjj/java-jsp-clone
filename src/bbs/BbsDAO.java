package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {

		Connection conn;
		ResultSet rs;
		
		public BbsDAO(){
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

		public String getDate() { //����ð��� �������� �Լ�
			String SQL = "Select now()";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					return rs.getString(1); //���� �ÿ� �� �ð��� �״�� ���Ͻ�Ų��.
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return ""; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
		}
		
		
		public int getNext() { //�Խù� ��ȣ �ű��
			String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
			
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					return rs.getInt(1)+1; //�� �Խù� ���� ��ȣ�� �ű��.
				}
				return 1;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return -1; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
		}
		public ResultSet getBoard() throws SQLException {
			String SQL = "SELECT * FROM BBS";
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			return rs;
		}
		
		public int write(String bbsTitle, String userID, String bbsContent) {
			String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, bbsTitle);
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1);
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return -1; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
		}
			
		
	public ArrayList<Bbs> getList(int pageNumber){ 
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable =1 order by bbsID desc limit 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
	}
	
	public boolean nextPage(int pageNumber) {
	String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable =1";
	ArrayList<Bbs> list = new ArrayList<Bbs>();
	
	try {
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			return true;
		}	
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
	}
	
	public Bbs getBbs(int bbsID) {
		String SQL = "SELECT * FROM BBS WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
				while(rs.next()) {
					Bbs bbs = new Bbs();
					bbs.setBbsID(rs.getInt(1));
					bbs.setBbsTitle(rs.getString(2));
					bbs.setUserID(rs.getString(3));
					bbs.setBbsDate(rs.getString(4));
					bbs.setBbsContent(rs.getString(5));
					bbs.setBbsAvailable(rs.getInt(6));
					return bbs;
				}	
			
			} catch (SQLException e) {
			e.printStackTrace();
		}
		return null; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
	}
	
	public int update(int bbsID, String bbsTitle, String bbsContent) {
		String SQL = "UPDATE BBS SET bbsTitle=?,bbsContent=? WHERE bbsID=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
	}
	
	public int delete(int bbsID) {
		String SQL = "UPDATE BBS SET bbsAvailable = 0 where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate(); //��ȯ������ �����ߴ��� �˼�����
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� �����ÿ� �ƹ��͵� �� ���Ͻ�Ų��.
	}
}
