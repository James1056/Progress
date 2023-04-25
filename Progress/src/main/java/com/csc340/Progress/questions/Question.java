package com.csc340.Progress.questions;

import com.csc340.Progress.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name = "question")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long userId;
    private String text;
    @Transient
    private User user;



    public Question(String text, long userId) {
        this.text = text;
        this.userId = userId;
    }
}
