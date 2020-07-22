package jsp06;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleEx
 */
@WebServlet("/LifeCycleEx")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleEx() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override //최초요청이 들어왔을때 딱 한번 실행.
    public void init() throws ServletException{
    	System.out.println("init");
    }
    
    @Override //마지막에 딱 한번 실행
    public void destroy() {
    	// TODO Auto-generated method stub
    	System.out.println("destroy");
    }
    
	@PostConstruct //선처리 작업
	private void initPostConstruct() { //메소드 변수명은 마음대로 지정.
		// TODO Auto-generated method stub
		System.out.println("initPostConstruct");
	}
	
	@PreDestroy //후처리 작업
	private void destroyPreDestroy() {
		// TODO Auto-generated method stub
		System.out.println("destroyPreDestroy");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
