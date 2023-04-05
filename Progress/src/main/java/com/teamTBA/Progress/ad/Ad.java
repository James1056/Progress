package com.teamTBA.Progress.ad;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
//import jakarta.persistence.JoinColumn;
//import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//import com.teamTBA.Progress.user.User;

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
//    @ManyToOne
//    @JoinColumn(name = "trainer_id", referencedColumnName = "id")
    private long trainerId;
    private int fitnessLevel;
    private String text;

    public Ad( int fitnessLevel, String text) {
        this.fitnessLevel = fitnessLevel;
        this.text = text;
    }
    
}
