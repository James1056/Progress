package com.teamTBA.Progress.ad;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dallin Pierce
 */
@Service
public class AdService {
    
    @Autowired
    private AdRepository repo;

    public List<Ad> getAllAds() {
        return repo.findAll();
    }

    public Ad getAd(long adId) {
        return repo.getReferenceById(adId);
    }

    public void deleteAd(long adId) {
        repo.deleteById(adId);
    }

    void saveAd(Ad ad) {
        repo.save(ad);
    }
    
}
