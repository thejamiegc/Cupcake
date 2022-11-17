package dat.backend.control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteFromCart", value = "/deletefromcart")
public class DeleteFromCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

//        HttpSession session = request.getSession();
//        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
//        Cupcake cupcake = (Cupcake) session.getAttribute("cupcake");
//        cart.remove(cupcake); //removes a cupcake to the shopping cart
//        session.setAttribute("cart", cart); //saves the new shopping cart on session scope
//        request.setAttribute("cartsize", cart.getNumberOfCupcakes());
//        request.getRequestDispatcher("shoppingcart.jsp").forward(request,response);
    }
}
