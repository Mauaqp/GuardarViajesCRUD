package com.viajes.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.viajes.models.Expense;
import com.viajes.services.ExpenseService;


@Controller
public class Viajes {
	
	@Autowired
	ExpenseService expenseService;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/expenses";
	}
	
	@GetMapping("/expenses")
	public String main(@ModelAttribute("expense") Expense expense, Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		System.out.println(expenses.get(0).getVendor());
		return "expenses.jsp";
	}
	
	@PostMapping("/expenses")
	public String createExpense (@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "expenses.jsp";
		}
		else {
			expenseService.createBExpense(expense);
			return "redirect:/expenses";
		}
		
	}
}