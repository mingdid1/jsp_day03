package day03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class memberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public memberDAO() {
		con = DBConnect.getConnect();
		System.out.println("생성자 : " + con);
	}
	
	public ArrayList<memberDTO> getList() {
		ArrayList<memberDTO> list = new ArrayList<>();
		System.out.println("getList 호출");
		
		String sql = "select * from member";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				memberDTO dto = new memberDTO();
				
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_addr(rs.getString("m_addr"));
				
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int delete(String id) {
		System.out.println("id : " + id);
		String sql = "delete from member where m_id='"+id+"'";
		// String sql = "delete from member where m_id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public memberDTO info(String id) {
		memberDTO dto = null;
		String sql = "select * from member where m_id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new memberDTO();
				
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_addr(rs.getString("m_addr"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
//	public ResultSet info(String id) {
//		String sql = "select * from member where m_id='"+id+"'";
//		try {
//			ps = con.prepareStatement(sql);
//			rs = ps.executeQuery();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return rs;
//	}
	
	
	public int chkuser(String id, String pwd) {
		String sql = "select * from member where m_id='"+id+"'";
		int result=0;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) { // id 존재
				if (rs.getString("m_pwd").equals(pwd)) { // 로그인 성공
					result = 0;
				}else {	// 비밀번호 틀림
					result = 1;
				}
			}else { // id 존재하지 않음
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int reg(String id, String pwd, String name, String addr) {
		String sql = "insert into member values(?,?,?,?)";
		
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ps.setString(3, name);
			ps.setString(4, addr);
			result = ps.executeUpdate();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int change(String id, String pwd, String name, String addr) {
		String sql = "update member set m_pwd=?, m_name=?, m_addr=? where m_id=?";
		
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, name);
			ps.setString(3, addr);
			ps.setString(4, id);
			result = ps.executeUpdate();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
