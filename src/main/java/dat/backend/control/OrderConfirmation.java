package dat.backend.control;

import dat.backend.model.entities.Order;
import dat.backend.model.entities.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "OrderConfirmation", value = "/orderconfirmation")
public class OrderConfirmation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");

        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
    }
}
