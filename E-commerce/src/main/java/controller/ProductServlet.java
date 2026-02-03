package controller;
import dao.ProductDAO;
import model.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = dao.getAllProducts();
        request.setAttribute("products", products);
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }
}
