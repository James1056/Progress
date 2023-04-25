package com.csc340.Progress.meal;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MealRepository extends JpaRepository<MealPlan, Long> {
    
}
