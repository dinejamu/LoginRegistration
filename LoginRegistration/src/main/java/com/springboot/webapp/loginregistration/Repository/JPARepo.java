package com.springboot.webapp.loginregistration.Repository;

import com.springboot.webapp.loginregistration.Model.UserDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JPARepo extends JpaRepository<UserDetails, Integer> {
}
