package com.csc340.Progress.video;

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
@Table(name = "video")
@NoArgsConstructor
@Getter
@Setter
public class Video {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long trainerId;
    private String youtubeId;
    private String description;
    private int fitnessLevel;
    
    public Video(String youtubeId, String description, int fitnessLevel, User trainer){
        this.youtubeId = youtubeId;
        this.description = description;
        this.fitnessLevel = fitnessLevel;
        this.trainer = trainer;
    }
    
    @Transient
    private User trainer;
    @Transient
    private String thumbnail;
    @Transient
    private String title;
    
    public Video( String youtubeId, String description, int fitnessLevel) {
        this.youtubeId = youtubeId;
        this.description = description;
        this.fitnessLevel = fitnessLevel;
    }
}
