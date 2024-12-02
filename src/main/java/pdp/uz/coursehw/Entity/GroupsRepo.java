package pdp.uz.coursehw.Entity;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import pdp.uz.coursehw.MyListener;

import java.util.List;

public class GroupsRepo {

    public static List<Groups> getGroups(int id) {
        try(EntityManager entityManager = MyListener.getEntityManagerFactory().createEntityManager();){
            entityManager.getTransaction().begin();
            Query nativeQuery = entityManager.createNativeQuery("select * from groups where module_id = ?", Groups.class);
            nativeQuery.setParameter(1, id);
            List<Groups> list = nativeQuery.getResultList();
            entityManager.getTransaction().commit();
            return list;
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}
