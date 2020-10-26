package com.springboot.webapp.loginregistration.Dao;


import com.springboot.webapp.loginregistration.Model.UserDetails;
import com.springboot.webapp.loginregistration.Repository.JPARepo;
import com.springboot.webapp.loginregistration.Service.ServiceClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceImpl implements ServiceClass {
    @Autowired
    private JPARepo jpaRepo;
    @Override
    public UserDetails register(UserDetails user) {
        return jpaRepo.save(user);
    }
}
