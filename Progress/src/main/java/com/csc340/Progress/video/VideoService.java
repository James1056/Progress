package com.csc340.Progress.video;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.csc340.Progress.user.UserRepository;

/**
 *
 * @author Dallin Pierce
 */
@Service
public class VideoService {
    
    @Autowired
    private VideoRepository repo;
    
    @Autowired
    private UserRepository userRepo;
    
    public List<Video> getVideosByTrainerId(long trainerId) {
        List<Video> videoList = repo.findVideosByTrainerId(trainerId);
        for(Video video : videoList){
            video.setTrainer(userRepo.findUserById(video.getTrainerId()));
        }
        return videoList;
    }
    
    public Video getVideo(long id) {
        return repo.getReferenceById(id);
    }
    
    void saveVideo(Video video) {
        repo.save(video);
    }
}
