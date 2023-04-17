package com.csc340.Progress.meal;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc340.Progress.user.UserRepository;

@Service
public class MealPlanService {

    @Autowired
    private MealRepository repo;

    @Autowired
    private UserRepository userRepo;
    
    public List<MealPlan> getAllMealPlans() {
        List<MealPlan> mealList = repo.findAll();
        for(MealPlan meal : mealList) {
            meal.setUser(userRepo.findUserById(meal.getUser_id()));
        }
        return mealList;
    }

    public MealPlan getPlan(long id) {
        MealPlan meal = repo.getReferenceById(id);
        meal.setUser(userRepo.findUserById(meal.getUser_id()));
        return meal;
    }

    public void savePlan(MealPlan mealPlan) {
        repo.save(mealPlan);
    }
    
}

