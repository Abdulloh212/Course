package pdp.uz.coursehw.Entity;

import jakarta.persistence.EntityManager;
import pdp.uz.coursehw.MyListener;
import pdp.uz.coursehw.MyListener.*;

import java.util.List;

public class CourseRepo {
    public static List<Course> getCourses() {
     try(EntityManager entityManager = MyListener.getEntityManagerFactory().createEntityManager();){
         entityManager.getTransaction().begin();
         List<Course> fromCourse = entityManager.createQuery("from Course", Course.class).getResultList();
         entityManager.getTransaction().commit();
         return fromCourse;
     } catch (RuntimeException e) {
         throw new RuntimeException(e);
     }
    }
}
