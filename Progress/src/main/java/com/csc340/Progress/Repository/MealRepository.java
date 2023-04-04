package com.csc340.Progress.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.csc340.Progress.Types.MealPlan;

public interface MealRepository extends JpaRepository<MealPlan, Long> {
    
}
