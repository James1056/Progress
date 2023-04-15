package com.teamTBA.Progress.video;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Dallin Pierce
 */
public interface VideoRepository extends JpaRepository<Video, Long>{
    public List<Video> findVideosByTrainerId(long trainerId);
}
