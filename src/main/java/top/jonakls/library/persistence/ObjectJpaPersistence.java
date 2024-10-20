package top.jonakls.library.persistence;

import top.jonakls.library.entity.ObjectEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class ObjectJpaPersistence<T extends ObjectEntity> {

    private final Class<T> clazz;
    private final EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("LibraryPU");

    public ObjectJpaPersistence(Class<T> clazz) {
        this.clazz = clazz;
    }

    public EntityManager getEntityManager() {
        return entityManagerFactory.createEntityManager();
    }

    public boolean save(final T object) {
        EntityManager em = null;
        boolean result;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(object);
            em.getTransaction().commit();
            result = true;
        } catch (Exception e) {
            result = false;
        } finally {
            if (em != null) {
                em.close();
            }
        }
        return result;
    }

    public T findOne(final int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(clazz, id);
        } finally {
            em.close();
        }
    }

    public void updateOne(final T object) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.merge(object);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void deleteOne(final T object) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.remove(em.merge(object));
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    /**
     * Encontrar un objeto por un campo específico
     *
     * @param fieldName Nombre del campo a buscar
     * @param value     Valor del campo a buscar
     * @return Objeto encontrado o null si no se encuentra
     */
    public T findObjectByField(String fieldName, Object value) {
        EntityManager em = getEntityManager();
        try {
            return em.createQuery("SELECT o FROM " + clazz.getSimpleName() + " o WHERE o." + fieldName + " = :value", clazz)
                    .setParameter("value", value)
                    .getSingleResult();
        } catch (Exception e) {
            return null;
        } finally {
            em.close();
        }
    }

    /**
     * Encontrar todos los objetos de la entidad en la base de datos
     *
     * @return Lista de objetos de la entidad
     */
    public List<T> findAll() {
        EntityManager em = getEntityManager();
        try {
            return em.createQuery("SELECT o FROM " + clazz.getSimpleName() + " o", clazz)
                    .getResultList();
        } finally {
            em.close();
        }
    }
}
