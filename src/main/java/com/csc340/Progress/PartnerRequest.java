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
@Table(name = "Partner Request")
@NoArgsConstructor
@Getter
@Setter

public class PartnerRequest {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int user_id;
    private String text;

    public PartnerRequest(int user_id, String text) {
        this.user_id = user_id;
        this.text = text;
    }
}
