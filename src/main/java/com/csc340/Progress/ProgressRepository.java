package main.java.com.csc340.Progress;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProgressRepository extends JpaRepository<Book, Long>  {
    
}
