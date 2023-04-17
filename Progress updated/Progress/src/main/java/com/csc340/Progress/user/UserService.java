package com.csc340.Progress.user;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dallin Pierce
 */
@Service
@AllArgsConstructor
public class UserService{
    
    @Autowired
    private final UserRepository repo;
    
    public User getUserById(long id) {
        return repo.findUserById(id);
    }
    
    public User getUserByUsername(String username) throws UsernameNotFoundException{
        return repo.findByUsername(username).orElseThrow( () ->
                new UsernameNotFoundException(username + "not found"));
    }
}
