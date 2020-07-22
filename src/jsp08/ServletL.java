package jsp08;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletL implements ServletContextListener {

	@Override //가장 마지막에 실행됨
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("contextDestroyed");
		// TODO Auto-generated method stub

	}

	@Override //가장먼저 실행됨
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("contextInitialized");
		// TODO Auto-generated method stub
 
	}

}
