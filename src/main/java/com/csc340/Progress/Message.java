package main.java.com.csc340.Progress;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructr
@Entity
@Table(name = "Message")
@NoArgsConstructor
@Getter
@Setter

public class Message {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int user_id;
    private int resposne_user_id;
    private String text;

    public Message(int user_id, int resposne_user_id, String text) {
        this.user_id = user_id;
        this.resposne_user_id = resposne_user_id;
        this.text = text;
    }
}
