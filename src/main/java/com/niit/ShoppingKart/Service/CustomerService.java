package com.niit.ShoppingKart.Service;

import java.util.List;

import com.niit.ShoppingKart.Model.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers();
	
	public Customer getCustById(int customerId);
	
	void update(Customer customer);
	
	public Customer get(String username);
	
	public boolean CustomerAlreadyExist(String email, boolean b);

}

