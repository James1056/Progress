package com.csc340.Progress.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc340.Progress.Repository.UserRepository;
import com.csc340.Progress.Types.User;

@Service
public class UserService {
    
    @Autowired
    private UserRepository repo;
    
    public List<User> getAllRequests() {
        return repo.findAll();
    }

   
}
