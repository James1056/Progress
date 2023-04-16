package com.csc340.Progress.ad;
/**
 * Last Updated: 4/6/2023
 * This class interfaces with the database to retrieve and save trainer-ads
 * Authors: Dallin Pierce
 */

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.csc340.Progress.gymUser.GymUserRepository;

/**
 *
 * @author Dallin Pierce
 */
@Service
public class AdService {
    
    @Autowired
    private AdRepository repo;
    
    @Autowired
    private GymUserRepository userRepo;

    public List<Ad> getAllAds() {
        List<Ad> adList = repo.findAll();
        for(Ad ad : adList){
            ad.setTrainer(userRepo.findUserById(ad.getTrainerId()));
        }
        return adList;
    }

    public Ad getAd(long adId) {
        Ad ad = repo.getReferenceById(adId);
        ad.setTrainer(userRepo.findUserById(ad.getTrainerId()));
        return ad;
    }

    void saveAd(Ad ad) {
        repo.save(ad);
    }
    
}
