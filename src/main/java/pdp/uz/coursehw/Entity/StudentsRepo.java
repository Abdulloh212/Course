package pdp.uz.coursehw.Entity;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import pdp.uz.coursehw.MyListener;

import java.util.List;

public class StudentsRepo {
    public static List<Student> getStudents(int id) {
        try (EntityManager entityManager = MyListener.getEntityManagerFactory().createEntityManager()) {
            Query nativeQuery = entityManager.createNativeQuery(
                    "SELECT * FROM student WHERE group_id = ?", Student.class
            );
            nativeQuery.setParameter(1, id);
            return nativeQuery.getResultList();
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new RuntimeException("Error fetching students: " + e.getMessage(), e);
        }
    }
}

