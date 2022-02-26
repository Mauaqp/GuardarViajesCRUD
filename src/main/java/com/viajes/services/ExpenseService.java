package com.viajes.services;

import java.util.List;
import java.util.Optional;

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
    public Expense findExpenseById(Long id) {
        Optional<Expense> optionalExpense = expensesRepo.findById(id);
        if(optionalExpense.isPresent()) {
            return optionalExpense.get();
        } else {
            return null;
        }
    }
    
//    Actualiza gasto
    public Expense updateExpense (Long id, Expense expense) {
    	Optional<Expense> optional = expensesRepo.findById(id);
    	if ( optional.isPresent()) {
    		Expense data = optional.get();
    		data.setName(expense.getName());
    		data.setVendor(expense.getVendor());
    		data.setAmmount(expense.getAmmount());
    		data.setDescription(expense.getDescription());
    		return this.expensesRepo.save(data);
    	}
    	else {
    		return null;
    	}
    }
    
//    Delete service
    public void deleteById (Long id) {
    	Optional<Expense> optional = expensesRepo.findById(id);
    	if ( optional.isPresent()) {
    		expensesRepo.deleteById(id);
    		System.out.println("--- EXPENSE DELETED ---");
    	}
    }
}
