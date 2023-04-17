package com.csc340.Progress.ad;
/**
 * Last Updated: 4/6/2023
 * This class represents trainer-ad entities from the progress database
 * Authors: Dallin Pierce
 */

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

/**
 *
 * @author Dallin Pierce
 */
@AllArgsConstructor
@Entity
@Table(name = "ad")
@NoArgsConstructor
@Getter
@Setter
public class Ad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long adId;
    private long trainerId;
    private int fitnessLevel;
    private String text;

    public Ad( int fitnessLevel, String text, User trainer, long trainerId) {
        this.fitnessLevel = fitnessLevel;
        this.text = text;
        this.trainer = trainer;
        
    }
    
    @Transient
    private User trainer;
    
    public Ad( int fitnessLevel, String text) {
        this.fitnessLevel = fitnessLevel;
        this.text = text;
        
    }
    
}
