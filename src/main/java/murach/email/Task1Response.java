package murach.email;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import murach.business.User;
//import murach.data.UserDB;
@WebServlet("/Task1/Response")
public class Task1Response extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String url = "Task1";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/Task1/home";    // the "join" page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String birth = request.getParameter("birth");
            String hearAbout = request.getParameter("hearAbout");
            String announcement = request.getParameter("announcement");
            String contact = request.getParameter("contact");
            //
            // store data in User object and save User object in db
            User user = new User(firstName, lastName, email, birth, hearAbout, announcement, contact);
//            UserDB.insert(user);
            String message="";
            if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || birth.isEmpty() || hearAbout==null || announcement==null || contact.isEmpty()) {
                message = "Please fill out all the information";
                request.setAttribute("message",message);
                url = "/Task1/home";
            }
            else {
                request.setAttribute("user", user);
                url = "/Task1/thanks.jsp";
            }
        }
        // forward request and response objects to specified URL
        getServletContext().getRequestDispatcher(url).forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
