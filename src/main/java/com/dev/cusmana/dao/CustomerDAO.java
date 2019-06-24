package com.dev.cusmana.dao;

import com.dev.cusmana.entity.Customer;


import java.util.List;


public interface CustomerDAO {
     List<Customer> getCustomers();
     void saveCustomer(Customer customer);
     Customer getCustomer(int id);
     void deleteCustomer(int id);
}
