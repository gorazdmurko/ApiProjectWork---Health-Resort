package org.db2.murko.presker.api.healthresort.dao.impl;

import org.db2.murko.presker.api.healthresort.dao.IDao;
import org.db2.murko.presker.api.healthresort.entity.Blagajne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BlagajneDaoImpl implements IBlagajneDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public int create(Blagajne blagajne) {
        Integer result = (Integer) hibernateTemplate.save(blagajne);    // template saves the object into DB

        return result;
    }

    @Override
    public Blagajne get(Integer id) {
        return hibernateTemplate.get(Blagajne.class, id);
    }

    @Override
    public List<Blagajne> getAll() {
        return hibernateTemplate.loadAll(Blagajne.class);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
