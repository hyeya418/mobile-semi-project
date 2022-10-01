package myjqm;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/member_servlet/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//사용자가 요청한 주소 값
		String uri=request.getRequestURI();
		//컨텍스트 패스(웹 프로젝트의 이름, 식별자) => jsp02
		String context=request.getContextPath();
		//DAO 객체 생성
		StarbucksMemberDAO dao=new StarbucksMemberDAO();
			
		if(uri.indexOf("list.do") != -1) {//list.do 회원 목록
			Map<String, Object> map=new HashMap<>();
			List<StarbucksMemberDTO> list=dao.memberList();
			map.put("list", list);//맵에 자료를 저장
			map.put("count", list.size());//레코드의 개수(회원 수)
			
			//웹 영역에 저장(request영역)
			request.setAttribute("map", map);
			String page="/myjqm/member_list.jsp";
			//포워딩
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}else if(uri.indexOf("view.do") != -1) {//회원 이름 클릭 시 나오는 회원 정보
			String userid=request.getParameter("userid");
			System.out.println("클릭한 아이디 : "+userid);
			StarbucksMemberDTO dto=dao.memberDetail(userid);
			//웹 영역에 저장(request영역)
			request.setAttribute("dto", dto);
			String page="/myjqm/member_view.jsp";
			//포워딩
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);

		}else if(uri.indexOf("update.do") != -1) {//update.do 회원 정보 수정
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
			//레코드 수정 처리
			dao.update(dto);
			//페이지 이동(단순한 이동=>리다이렉트 처리)
			response.sendRedirect(context+"/myjqm/member.jsp");
			
		}else if(uri.indexOf("delete.do") != -1) {//delete.do 회원 정보 삭제
			String userid=request.getParameter("userid");
			//레코드 삭제 처리
			dao.delete(userid);
			//페이지 이동(단순한 이동=>리다이렉트 처리)
			response.sendRedirect(context+"/myjqm/member.jsp");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
