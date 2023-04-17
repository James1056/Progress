package com.csc340.Progress.user;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dallin Pierce
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    public User findUserById(long id);
    Optional<User> findByUsername(String username);
    
}
