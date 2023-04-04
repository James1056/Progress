package com.csc340.Progress.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc340.Progress.Service.MealPlanService;

@Controller
@RequestMapping("/progress")
public class MealController {

    @Autowired
    MealPlanService mealService;

    @GetMapping("mealPlan")
    public String getMealPlans(Model model) {
        model.addAttribute("meals", mealService.getAllMealPlans());
        return "/meal_plan.html";
    }

    @GetMapping("/mealPost")
    public String newMealPost(Model model) {
        return "/meal_plan_form.html";
    }
    
}
