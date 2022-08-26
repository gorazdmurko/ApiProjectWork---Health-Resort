package org.db2.murko.presker.api.healthresort.services;

import java.util.List;

public interface IService<T> {

    int save(T type);
    T get(Integer id);
    List<T> getAll();
}