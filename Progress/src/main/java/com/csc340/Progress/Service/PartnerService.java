package com.csc340.Progress.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc340.Progress.Repository.PartnerRepository;
import com.csc340.Progress.Types.PartnerRequest;

@Service
public class PartnerService {
    
    @Autowired
    private PartnerRepository repo;
    
    public List<PartnerRequest> getAllRequests() {
        return repo.findAll();
    }

   
}
