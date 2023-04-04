package com.csc340.Progress.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc340.Progress.Repository.MealRepository;
import com.csc340.Progress.Types.MealPlan;


@Service
public class MealPlanService {

    @Autowired
    private MealRepository repo;
    
    public List<MealPlan> getAllMealPlans() {
        return repo.findAll();
    }
    
}
