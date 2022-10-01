package myjqm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join_servlet/*")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//사용자가 요청한 주소 값
		String uri=request.getRequestURI();
		//컨텍스트 패스(웹 프로젝트의 이름, 식별자) => mobileSemiProject
		String context=request.getContextPath();
		//DAO 객체 생성
		StarbucksMemberDAO dao=new StarbucksMemberDAO();
		
		if(uri.indexOf("join.do") != -1) {//join.do 회원 등록
			
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String tel=request.getParameter("tel");
			String birth=request.getParameter("birth");
			String address1=request.getParameter("address1");	
			
			StarbucksMemberDTO dto=new StarbucksMemberDTO();//dto생성
			dto.setUserid(userid);//dto에 setter를 통해 데이터 저장
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setTel(tel);
			dto.setBirth(birth);
			dto.setAddress1(address1);
			dao.insert(dto);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
