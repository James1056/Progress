package com.csc340.Progress.gymUser;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dallin Pierce
 */
@Service
public class GymUserDetailsService implements UserDetailsService{
    
    @Autowired
    private GymUserRepository repo;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        GymUser gymUser = repo.findByUsername(username).orElseThrow( () ->
                new UsernameNotFoundException(username + "not found"));

        return new org.springframework.security.core.userdetails.User(
                gymUser.getUsername(), gymUser.getPassword(), new ArrayList<>());
    }
}
