package controller;
import dao.ProductDAO;
import model.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cartProducts = (List<Product>) session.getAttribute("cartProducts");
        if (cartProducts == null) cartProducts = new ArrayList<>();

        String action = request.getParameter("action");
        if ("add".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Product p = dao.getProductById(id);
            if (p != null) cartProducts.add(p);
        } else if ("remove".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            cartProducts.removeIf(prod -> prod.getId() == id);
        }

        // Calculate total
        double total = cartProducts.stream().mapToDouble(Product::getPrice).sum();

        session.setAttribute("cartProducts", cartProducts);
        request.setAttribute("cartProducts", cartProducts);
        request.setAttribute("total", total);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }
}
