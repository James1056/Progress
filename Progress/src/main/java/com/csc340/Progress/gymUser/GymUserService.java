package com.csc340.Progress.gymUser;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dallin Pierce
 */
@Service
@AllArgsConstructor
public class GymUserService{
    
    @Autowired
    private final GymUserRepository repo;
    
    public GymUser getUserById(long id) {
        return repo.findUserById(id);
    }
}
