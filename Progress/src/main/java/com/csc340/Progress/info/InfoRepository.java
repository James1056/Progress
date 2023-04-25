package com.csc340.Progress.info;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author tdlga
 */
public interface InfoRepository extends JpaRepository<Info, Long> {

    List<Info> findByIdIn(List<Long> infoIds);
}
