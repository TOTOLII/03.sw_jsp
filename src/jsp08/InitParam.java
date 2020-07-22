package jsp08;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion.Setting;

import sun.security.action.GetIntegerAction;

/**
 * Servlet implementation class ServletInitParam
 */

// servlet파일에 직접 기술
@WebServlet(urlPatterns = {"/InitP"}, initParams = {@WebInitParam(name="id",value="aaaa"), @WebInitParam(name="pw",value="99999")})

public class InitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParam() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/* 서블릿, xml 파일에 직접 기술 할때 받아 오기 위한 변수 설정 및 가져오는 방법
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);*/

		
		String id = getServletContext().getInitParameter("id");
		String pw = getServletContext().getInitParameter("pw");
		
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
