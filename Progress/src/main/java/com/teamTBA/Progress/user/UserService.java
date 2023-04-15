package com.teamTBA.Progress.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dallin Pierce
 */
@Service
public class UserService {
    
    @Autowired
    private UserRepository repo;
    
    public User getUserById(long id) {
        return repo.findUserById(id);
    }
}
