package com.csc340.Progress.Types;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Entity
@Table(name = "Partner")
@NoArgsConstructor
@Getter
@Setter

public class PartnerRequest {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long user_id;
    private String text;

    public PartnerRequest(long user_id, String text) {
        this.user_id = user_id;
        this.text = text;
    }
}
