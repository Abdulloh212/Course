package pdp.uz.coursehw;

import jakarta.persistence.EntityManager;
import pdp.uz.coursehw.Entity.Payment;
import pdp.uz.coursehw.Entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try(EntityManager entityManager = MyListener.getEntityManagerFactory().createEntityManager();) {
        String amount = req.getParameter("amount");
        String id = req.getParameter("id");
        Payment payment = new Payment();
        entityManager.getTransaction().begin();
        Student student = entityManager.find(Student.class, id);
        payment.setAmount(Double.parseDouble(amount));
        payment.setStudent(student);
        entityManager.persist(payment);
        entityManager.getTransaction().commit();
        resp.sendRedirect("/Course.jsp");
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}
