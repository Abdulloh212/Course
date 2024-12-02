package pdp.uz.coursehw.Entity;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import pdp.uz.coursehw.MyListener;

import java.util.List;

public class ModuleRepo {
    public static List<Module> getModules(int id) {
        try(EntityManager entityManager = MyListener.getEntityManagerFactory().createEntityManager();){
            entityManager.getTransaction().begin();
            Query nativeQuery = entityManager.createNativeQuery("select * from module where course_id  = ?", Module.class);
            nativeQuery.setParameter(1, id);
            List<Module> list = nativeQuery.getResultList();
            entityManager.getTransaction().commit();
            return list;
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}
