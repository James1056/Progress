package com.csc340.Progress.meal;

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
@Table(name = "Meal")
@NoArgsConstructor
@Getter
@Setter

public class MealPlan {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long  user_id;
    private String text;

    public MealPlan(long user_id, String text, User user) {
        this.user_id = user_id;
        this.text = text;
        this.user = user;
    }

    @Transient
    private User user;
    
    public MealPlan(long user_id, String text) {
        this.user_id = user_id;
        this.text = text;
    }
}
