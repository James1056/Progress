package com.csc340.Progress.user;

import java.sql.Date;
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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 *
 * @author Dallin Pierce
 */
@AllArgsConstructor
@Entity
@Table(name = "user")
@NoArgsConstructor
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String username;
    private String firstName;
    private String lastName;
    private Date dob;
    private String gender;
    private int fitnessLevel;
    private String password;
    private Long trainerId;
    
    @Transient
    private static PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    
    public User( String username, String firstName, String lastName, Date dob,
                               String gender, int fitnessLevel, String password, Long trainerId){    
        this.username =username;
        this.firstName = firstName;
        this.lastName =lastName;
        this.dob = dob;
        this.gender = gender;
        this.fitnessLevel = fitnessLevel;
        this.password = passwordEncoder.encode(password);
        this.trainerId = trainerId;    
    }
    
    @Transient
    private User trainer;

    public long getUserId() {
        return id;
    }
    
    
}
