package dat.backend.control;

import dat.backend.model.entities.Cupcake;
import dat.backend.model.entities.ShoppingCart;
import dat.backend.model.entities.Topping;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.UserFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCart", value = "/AddToCart")
public class AddToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

        int toppingID = Integer.parseInt(request.getParameter("toppings"));
        int bottomID = Integer.parseInt(request.getParameter("bottoms"));
        int amount = Integer.parseInt(request.getParameter("amount"));

        Cupcake cupcake = new Cupcake(toppingID,bottomID,amount);
        cart.add(cupcake);
        session.setAttribute("cart", cart);
        request.setAttribute("cartsize",cart.getNumberOfCupcakes());

        request.getRequestDispatcher("shoppingcart.jsp").forward(request,response);
    }
}
