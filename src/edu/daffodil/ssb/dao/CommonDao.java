package edu.daffodil.ssb.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@Component
public interface CommonDao <T>{
	T saveOrUpdate(T entity);
	T save(T entity);
	T update(T entity);
	void delete(T entity);
	List<T> find(T entity);
	List<T> findAll();

}
