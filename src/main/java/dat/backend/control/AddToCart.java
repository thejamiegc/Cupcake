package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Bottom;
import dat.backend.model.entities.Cupcake;
import dat.backend.model.entities.ShoppingCart;
import dat.backend.model.entities.Topping;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.CupcakeFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCart", value = "/addtocart")
public class AddToCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        //ConnectionPool connectionPool = ApplicationStart.getConnectionPool();
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

        int toppingID = Integer.parseInt((request.getParameter("toppings")));
        int bottomID = Integer.parseInt((request.getParameter("bottoms")));
        int quantity = Integer.parseInt((request.getParameter("quantity")));

        //int cupcakePrice = Integer.parseInt((request.getParameter("cupcakePrice")));
        //Topping topping = CupcakeFacade.getToppingByID(toppingID, connectionPool);
        //Bottom bottom = CupcakeFacade.getBottomByID(bottomID, connectionPool);

        Cupcake cupcake = new Cupcake(toppingID, bottomID, quantity);
        cart.add(cupcake); //adds a cupcake to the shopping cart
        session.setAttribute("cart", cart); //saves the new shopping cart on session scope
        request.setAttribute("cartsize", cart.getNumberOfCupcakes());
        request.getRequestDispatcher("shoppingcart.jsp").forward(request, response);
    }
}
