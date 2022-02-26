package com.viajes.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.viajes.models.Expense;

@Repository
public interface ExpensesRepository extends CrudRepository<Expense, Long>{
	List<Expense> findAll();
	
	List<Expense> findByName(String name);

}
