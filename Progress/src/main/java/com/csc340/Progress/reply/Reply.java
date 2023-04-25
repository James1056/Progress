package com.csc340.Progress.reply;

import com.csc340.Progress.questions.Question;
import com.csc340.Progress.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name = "reply")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Reply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long questionId;
    private String text;
    private long userId;
    
    @Transient
    private User user;
    @Transient
    private Question question;

    public Reply(String text, long questionId, long userId) {
        this.text = text;
        this.questionId = questionId;
        this.userId = userId;
    }
}
