package com.csc340.Progress.user;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
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
    private UserRepository repo;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        User gymUser = repo.findByUsername(username).orElseThrow( () ->
                new UsernameNotFoundException(username + "not found"));
        ArrayList<SimpleGrantedAuthority> authList = new ArrayList<>();
        switch(gymUser.getFitnessLevel()){
            case 1 -> authList.add(new SimpleGrantedAuthority("ROLE_BEGINNER"));
            case 2 -> authList.add(new SimpleGrantedAuthority("ROLE_INTERMEDIATE"));
            case 3 -> authList.add(new SimpleGrantedAuthority("ROLE_ADVANCED"));
            case 4 -> authList.add(new SimpleGrantedAuthority("ROLE_TRAINER"));
            case 5 -> authList.add(new SimpleGrantedAuthority("ROLE_OWNER"));
        }

        if(gymUser.getFitnessLevel() <= 3){
            if(gymUser.getTrainerId() != null){
                authList.add(new SimpleGrantedAuthority("ROLE_HAS_TRAINER"));
            } else {
                authList.add(new SimpleGrantedAuthority("ROLE_NO_TRAINER"));
            }
        }
        
        return new org.springframework.security.core.userdetails.User(
                gymUser.getUsername(), gymUser.getPassword(), authList);
    }
}
