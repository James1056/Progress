package com.csc340.Progress.Types;

import java.sql.Date;

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
@Table(name = "User")
@NoArgsConstructor
@Getter
@Setter

public class User {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    private String username;
    private String first_name;
    private String last_name;
    private Date DOB;
    private String gender;
    private long fitness_level;
    private String password;

    public User(String username, String first_name, String last_name, Date DOB, String gender, long fitness_level, String password) {
        this.username = username;
        this.first_name = first_name;
        this.last_name = last_name;
        this.DOB = DOB;
        this.gender = gender;
        this.fitness_level = fitness_level;
        this.password = password;
    }

    
}
