package hibernatecontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;


import hibernatebean.Patient;

/*This retrieves the patient required from the search panel*/

public class SearchServlet extends HttpServlet {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	       	
		 String searchName = request.getParameter("searchName");
		 
	        	Configuration configuration = new Configuration().configure();
	 		   StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
	 		   applySettings(configuration.getProperties());
	 		   SessionFactory factory = configuration.buildSessionFactory(builder.build());
	 		   
	 	      Session session = factory.openSession();
	 	 
	 	      Query query = session.createQuery("from Patient where firstName='" + searchName+"'");
	 	 
	 	      List<Patient> searchPatients = query.list();
	 	      session.flush();
	 	      session.close();
	 	      request.setAttribute("patientsList", searchPatients);
	 	 
	 	      request.getRequestDispatcher("searchview.jsp").forward(request, response); 
	    }
}
