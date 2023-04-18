package com.csc340.Progress.splits;

import com.csc340.Progress.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name = "split")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter

public class Split {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    private int id;
    private int user_id;
    private String text;
    private String title;
    @Transient
    private User user;

    public Split(int id, String text, String title) {
        this.id = id;
        this.text = text;
        this.title = title;
    }
}
