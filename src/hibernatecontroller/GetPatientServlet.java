package hibernatecontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import hibernatebean.Patient;

/*This is to retrieve all the patients registered*/

@WebServlet("/GetPatientServlet")
public class GetPatientServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	 
	   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		   Configuration configuration = new Configuration().configure();
		   StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
		   applySettings(configuration.getProperties());
		   SessionFactory factory = configuration.buildSessionFactory(builder.build());
		   
	      Session session = factory.openSession();
	 
	      Query query = session.createQuery("from Patient");
	 
	      List<Patient> patients = query.list();
	      session.flush();
	      session.close();
	      request.setAttribute("patients", patients);
	 
	      request.getRequestDispatcher("search.jsp").forward(request, response);        
	    }
}
