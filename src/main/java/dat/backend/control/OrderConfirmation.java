package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Order;
import dat.backend.model.entities.OrderLine;
import dat.backend.model.entities.ShoppingCart;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.OrderFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderConfirmation", value = "/orderconfirmation")
public class OrderConfirmation extends HttpServlet {
ConnectionPool connectionPool;
    public void init() throws ServletException {
        this.connectionPool = ApplicationStart.getConnectionPool();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        try {

            if(user.getBalance() >= cart.cartTotal()){

                user.setBalance((user.getBalance() - cart.cartTotal()));

                int orderID = OrderFacade.createOrder(user.getUserID(),connectionPool);
                List<OrderLine> orderLineList = new ArrayList<>();

                for(int i = 0; i< cart.getCupcakeList().size();i++){
                    OrderLine tmpOrderLine = new OrderLine(
                            cart.getCupcakeList().get(i).getTopping().getToppingPrice(),
                            cart.getCupcakeList().get(i).getBottom().getBottomPrice(),
                            cart.getCupcakeList().get(i).getQuantity(),
                            orderID,
                            cart.getCupcakeList().get(i).getTopping().getToppingID(),
                            cart.getCupcakeList().get(i).getBottom().getBottomID());
                    orderLineList.add(tmpOrderLine);
                }
                session.setAttribute("orderLineList",orderLineList);
                request.getRequestDispatcher("orderconfirmation.jsp").forward(request, response);
            }

            request.getRequestDispatcher("shoppingcart.jsp").forward(request, response);
        }
        catch (DatabaseException e){
            request.setAttribute("errormessage", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }

    }

}
