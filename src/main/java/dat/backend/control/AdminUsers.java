package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.UserFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminUsers", value = "/adminusers")
public class AdminUsers extends HttpServlet {
    private ConnectionPool connectionPool;

    @Override
    public void init() throws ServletException {
        this.connectionPool = ApplicationStart.getConnectionPool();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");
        HttpSession session = request.getSession();

        try {


            List<User> userList = UserFacade.getUserList(connectionPool);
            session.setAttribute("userList", userList);

            request.getRequestDispatcher("adminusers.jsp").forward(request, response);
        }catch (DatabaseException e){
            request.setAttribute("errormessage",e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    }
}
