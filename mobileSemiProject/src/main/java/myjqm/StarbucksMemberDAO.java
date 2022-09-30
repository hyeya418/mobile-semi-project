package myjqm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DB;

public class StarbucksMemberDAO {
	//로그인 확인
	public String loginCheck(String userid, String passwd) {
		String name=null;//리턴할 값(이름)
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;//select문 처리 결과셋
		try {
			conn=DB.getConn();//DB연결처리
			String sql="select name from starbucks_member where userid=? and passwd=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);//1은 첫번째 물음표를 지정
			pstmt.setString(2, passwd);//2는 두번째 물음표를 지정
			rs=pstmt.executeQuery();//select문 전용 실행메소드
			if(rs.next()) {//레코드가 존재하면(로그인 성공)
				name=rs.getString("name");//이름 저장
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return name;
	}
	//회원 목록 출력
	public List<StarbucksMemberDTO> memberList() {
		List<StarbucksMemberDTO> items = new ArrayList<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql = "select * from starbucks_member order by join_date";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();//select문 전용 sql실행 메소드
			while(rs.next()) {//다음 레코드가 존재하면 true
				StarbucksMemberDTO dto = new StarbucksMemberDTO();
				dto.setUserid(rs.getString("userid"));
				dto.setPasswd(rs.getString("passwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setBirth(rs.getString("birth"));
				dto.setAddress1(rs.getString("address1"));
				dto.setJoin_date(rs.getDate("join_date"));
				items.add(dto);//List에 dto추가
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt!=null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return items;
	}//end memberList()
	
	//회원 등록
	public void insert(StarbucksMemberDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DB.getConn();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into starbucks_member ");
			sql.append(" (userid,passwd,name,email,tel,birth,address1) values ");
			sql.append(" (?,?,?,?,?,?,?)");
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getTel());
			pstmt.setString(6, dto.getBirth());
			pstmt.setString(7, dto.getAddress1());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}//end insert()
	
	//회원 상세정보
	public StarbucksMemberDTO memberDetail(String userid) {
		StarbucksMemberDTO dto = null;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql = "select * from starbucks_member where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();//select문 전용 메소드
			if(rs.next()) {//레코드가 하나일 때는 if문을 씀
				dto=new StarbucksMemberDTO();//dto생성
				dto.setUserid(userid);
				dto.setPasswd(rs.getString("passwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setBirth(rs.getString("birth"));
				dto.setAddress1(rs.getString("address1"));
				dto.setJoin_date(rs.getDate("join_date"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}//end memberDetail()

	//회원 정보 수정
	public void update(StarbucksMemberDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DB.getConn();
			StringBuilder sb=new StringBuilder();
			sb.append("update starbucks_member set ");
			sb.append(" passwd=?, name=?, email=?, tel=?, address1=? ");
			sb.append(" where userid=?");
			pstmt=conn.prepareStatement(sb.toString());
			pstmt.setString(1, dto.getPasswd());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getAddress1());
			pstmt.setString(6, dto.getUserid());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}//end update()

	//회원 정보 삭제
	public void delete(String userid) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DB.getConn();
			String sql="delete from starbucks_member where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}//end delete()
	
	//회원 ID찾기
	public String remindIdCheck(StarbucksMemberDTO dto) {
		String result="";//리턴할 값
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql="select userid from starbucks_member where email=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEmail());
			rs=pstmt.executeQuery();
			if(rs.next()) {//값이 존재하면(ID 찾기 성공)
				result="가입한 아이디는 "+ rs.getString("userid") +"입니다.";
			}else {
				result="가입하지 않은 이메일입니다.";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}//end remindIdCheck()
	
	//회원 PW찾기
	public String remindPwChech(StarbucksMemberDTO dto) {
		String result="";//리턴할 값
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String spl = "select passwd from starbucks_member where userid=? and email=?";
			pstmt=conn.prepareStatement(spl);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getEmail());
			rs=pstmt.executeQuery();
			if(rs.next()) {//값이 존재하면(PW찾기 성공)
				result="비밀번호는 " + rs.getString("passwd") + " 입니다. \n로그인 페이지로 이동하시겠습니까?"; 
			}else {
				result="가입하지 않은 아이디입니다. \n다시 입력하려면 취소를 눌러주세요.";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}//end remindPwChech();
	
	
}
