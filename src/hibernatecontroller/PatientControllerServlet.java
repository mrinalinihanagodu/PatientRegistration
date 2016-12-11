package hibernatecontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hibernatedao.PatientDAO;

/*This inserts the new registered patient*/

@WebServlet("/PatientControllerServlet")
public class PatientControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
 
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phoneNumber");
        String freeTextInfo = request.getParameter("freeTextInfo");
        
        HttpSession session = request.getSession(true);
        try {
            PatientDAO patientDAO = new PatientDAO();
            patientDAO.addPatientDetails(firstName, lastName, dob, gender, phone, freeTextInfo);
            response.sendRedirect("GetPatientServlet");
        } catch (Exception e) {
 
            e.printStackTrace();
        }
    }
}
