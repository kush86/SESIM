package ucsc.mis.orm.dao.impl;

import ucsc.mis.orm.dao.UniversalDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;

public class UniversalDaoImpl<T extends Serializable> implements UniversalDao<T> {

    @Autowired
    private SessionFactory sessionFactory;

    public Long save(T object) {
        Session session = getCurrentSession();
        return (Long) session.save(object);
    }

    public void update(T object) {
        Session session = getCurrentSession();
        session.update(object);
    }

    public void delete(T object) {
        Session session = getCurrentSession();
        session.delete(object);
    }

    public void merge(T object){
        Session session = getCurrentSession();
        session.merge(object);
    }

    public Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
