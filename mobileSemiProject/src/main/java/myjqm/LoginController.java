package myjqm;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		//사용자가 요청한 주소 값
		String uri=request.getRequestURI();
		//컨텍스트 패스(웹 프로젝트의 이름, 식별자) => mobileSemiProject
		String context=request.getContextPath();
		//DAO 객체 생성
		StarbucksMemberDAO dao=new StarbucksMemberDAO();
		
		if(uri.indexOf("login.do") != -1) {//login.do로 요청이 도달하면 =>로그인
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");

			String name=dao.loginCheck(userid, passwd);
			String message="";//보낼 메시지
			String page="";//이동할 페이지 주소
			if(name==null) {//로그인 실패
				message="아이디 또는 비밀번호가 일치하지 않습니다.";
				message=URLEncoder.encode(message, "utf-8");
				page="/myjqm/login_m.jsp?message="+message;
			}else {//로그인 성공
				message=name+"님 환영합니다!🙌";
				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("message", message);
				page="/myjqm/login_success.jsp";
			}
			System.out.println(message);
			response.sendRedirect(request.getContextPath()+page);
			
		}else if(uri.indexOf("logout.do") != -1) {//logout.do로 요청이 도달하면 =>로그아웃
			HttpSession session=request.getSession();
			session.invalidate();//세션 초기화
			String message=URLEncoder.encode("로그아웃되었습니다.","utf-8");
			response.sendRedirect(request.getContextPath()
					+"/myjqm/login_m.jsp?message="+message);
			
			
			
		}else if(uri.indexOf("remind_id.do") != -1) {//회원 ID찾기
			String email=request.getParameter("email");
			StarbucksMemberDTO dto=new StarbucksMemberDTO();
			dto.setEmail(email);
			String result=dao.remindIdCheck(dto);
			//웹 영역에 저장
			request.setAttribute("result", result);
			String page="/myjqm/remind_id_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}else if(uri.indexOf("remind_pw.do") != -1) {//회원 PW찾기
			String userid=request.getParameter("userid");
			String email=request.getParameter("email");
			StarbucksMemberDTO dto = new StarbucksMemberDTO();
			
			dto.setUserid(userid);
			dto.setEmail(email);
			String result=dao.remindPwChech(dto);
			System.out.println(result);
			//웹 영역에 저장
			request.setAttribute("result", result);
			String page="/myjqm/remind_pw_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
