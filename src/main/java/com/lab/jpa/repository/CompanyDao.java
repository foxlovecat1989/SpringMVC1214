package com.lab.jpa.repository;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    Session session = null;
    
    private Session getSession(){
        try {
            Session session = sessionFactory.getCurrentSession();
        } catch (Exception e) {
            session = sessionFactory.openSession();
        }
        return  session;
    }
    
    // 查詢所有部門資料
    public List queryAllDepts(){
        List list = getSession().createQuery("from Department d").list();
        return list;
    }
    
    // 查詢所有社團資料
    public List queryAllClubs(){
        List list = getSession().createQuery("from Club c").list();
        return list;
    }
    
    
}
