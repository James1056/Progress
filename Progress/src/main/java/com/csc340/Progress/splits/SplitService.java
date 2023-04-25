package com.csc340.Progress.splits;

import com.csc340.Progress.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SplitService {
    
    @Autowired
    private SplitRepository repo;
    @Autowired
    private UserRepository userRepo;

    public List<Split> getAllSplits() {
        List<Split> splitList = repo.findAll();
        for (Split split : splitList) {
            split.setUser(userRepo.findUserById(split.getUserId()));
        }
        return splitList;
    }

    public Split getSplit(long splitId) {
        Split split = repo.getReferenceById(splitId);
        split.setUser(userRepo.findUserById(split.getUserId()));
        return split;
    }

    public void deleteSplit(long splitId) {
        repo.deleteById(splitId);
    }

    void saveSplit(Split split) {

        repo.save(split);
    }
}
