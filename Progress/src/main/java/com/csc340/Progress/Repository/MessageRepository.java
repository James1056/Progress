package com.csc340.Progress.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.csc340.Progress.Types.Message;

public interface MessageRepository extends JpaRepository<Message, Long> {
    
}
