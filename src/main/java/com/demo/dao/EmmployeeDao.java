package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Employee;
@Repository //=@Component
public interface EmmployeeDao extends JpaRepository<Employee, Long>{

}
