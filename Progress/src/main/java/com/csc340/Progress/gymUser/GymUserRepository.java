package com.csc340.Progress.gymUser;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dallin Pierce
 */
@Repository
public interface GymUserRepository extends JpaRepository<GymUser, Long> {
    public GymUser findUserById(long id);
    Optional<GymUser> findByUsername(String username);
}
