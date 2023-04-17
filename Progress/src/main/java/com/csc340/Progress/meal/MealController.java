package com.csc340.Progress.meal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/meal")
public class MealController {

    @Autowired
    MealPlanService mealService;

    @GetMapping("mealPlan")
    public String getMealPlans(Model model) {
        model.addAttribute("meals", mealService.getAllMealPlans());
        return "meal/meal_plan.html";
    }

    @GetMapping("/mealPost")
    public String newMealPost(Model model) {
        return "meal/meal_plan_form.html";
    }

    @PostMapping("/createMealPost")
    public String creatMealPlan(MealPlan mealPlan) {
        mealService.savePlan(mealPlan);
        return "redirect:/meal/mealPlan";
    }

    
}
