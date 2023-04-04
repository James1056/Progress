package com.csc340.Progress.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.csc340.Progress.Types.User;

public interface UserRepository extends JpaRepository<User, Long> {
    
}
