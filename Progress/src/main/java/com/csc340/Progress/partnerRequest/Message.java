package com.csc340.Progress.partnerRequest;

import com.csc340.Progress.user.User;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Entity
@Table(name = "Message")
@NoArgsConstructor
@Getter
@Setter

public class Message {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long requestid;
    private long response_user_id;
    private String text;

    public Message(long requestid, long response_user_id, String text, User user) {
        this.requestid = requestid;
        this.response_user_id = response_user_id;
        this.text = text;
        this.user = user;
    }

    @Transient
    private User user;
    
    public Message(long requestid, long response_user_id, String text) {
        this.requestid = requestid;
        this.response_user_id = response_user_id;
        this.text = text;
    }

}
