package com.csc340.Progress.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.csc340.Progress.Types.PartnerRequest;

public interface PartnerRepository extends JpaRepository<PartnerRequest, Long>  {
    
}
