package com.csc340.Progress.info;

import java.util.Date;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "gym")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter

public class Info {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private String description;
    private String image;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    
    public Info(String title, String description, String image, Date date) {
        this.title = title;
        this.description = description;
        this.image = image;
        this.date = date;
    }
}