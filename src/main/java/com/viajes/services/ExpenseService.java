package com.viajes.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.viajes.models.Expense;
import com.viajes.repositories.ExpensesRepository;



@Service
public class ExpenseService {
	private final ExpensesRepository expensesRepo;
	
	public ExpenseService(ExpensesRepository expensesRepo) {
		this.expensesRepo = expensesRepo;
	}
	
	
//	Métodos útiles
	   // devuelve todos los gastos
    public List<Expense> allExpenses() {
        return expensesRepo.findAll();
    }
    // crea un gasto
    public Expense createBExpense(Expense b) {
        return expensesRepo.save(b);
    }
    // recupera un gasto
//    public Expense findExpense(Long id) {
//        Optional<Expense> optionalExpense = expensesRepo.findById(id);
//        if(optionalExpense.isPresent()) {
//            return optionalExpense.get();
//        } else {
//            return null;
//        }
//    }
}
