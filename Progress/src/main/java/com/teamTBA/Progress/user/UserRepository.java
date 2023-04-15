package com.teamTBA.Progress.user;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Dallin Pierce
 */
public interface UserRepository extends JpaRepository<User, Long> {
    public User findUserById(long id);
}
