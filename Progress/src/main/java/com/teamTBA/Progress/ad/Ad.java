package com.teamTBA.Progress.ad;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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
    //needed fo the view all and view individual display, though may be obtainable with a join instead
    private String username;
    private int fitnessLevel;
    private String text;

    public Ad( int fitnessLevel, String text) {
        this.fitnessLevel = fitnessLevel;
        this.text = text;
    }
    
}
