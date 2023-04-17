package com.csc340.Progress.partnerRequest;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MessageRepository extends JpaRepository<Message, Long> {
    
    public List<Message> findMessagesByrequestid(long requestid);

}
