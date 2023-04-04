package csc340.Progress.info;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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

/**
 *
 * @author tdlga
 */
public class Info {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private String description;
    private String image;
    
    public Info(String title, String description, String image){
        this.title = title;
        this.description = description;
        this.image = image;
    }
}
