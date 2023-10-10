package murach.download;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User;
@WebServlet("/Task2/download")
public class Task2download extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
// get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums"; // default action
        }
// perform action and set URL to appropriate page
        String url = "/Task2/ListofAlbums";
        if (action.equals("viewAlbums")) {
            url = "/Task2/ListofAlbums";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        }
// forward to the view
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
// perform action and set URL to appropriate page
        String url = "/Task2/ListofAlbums";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }
// forward to the view
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String checkUser(HttpServletRequest request,
                             HttpServletResponse response) {
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        User user = (User) session.getAttribute("user");
        String url;
// if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");
// if cookie doesn't exist,
            if (emailAddress.isEmpty()) {
                url = "/Task2/register.jsp";
            } else {
// if cookie exists, create User object and go to Downloads page
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/User.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/Task2/" + productCode + "_download.jsp";
            }
        }
// if User object exists, go to Downloads page
        else {
            url = "/Task2/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {
// get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
// store the data in a User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
// write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/User.txt");
        UserIO.add(user, path);
// store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
// add a cookie that stores the user's email to browser
        Cookie c = new Cookie("userEmail", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c.setPath("/");
        response.addCookie(c);
        String productCode = (String) session.getAttribute("productCode");
        String url = "/Task2/" + productCode + "_download.jsp";
        return url;
    }
}

