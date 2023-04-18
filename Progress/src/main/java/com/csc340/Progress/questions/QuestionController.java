package com.csc340.Progress.questions;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    QuestionService questionService;

    @GetMapping("/all")
    public String getQuestions(Model model) {
        model.addAttribute("questionList", questionService.getAllQuestions());
        return "questions/list-questions";
    }

    @GetMapping("/id={questionId}")
    public String getQuestion(@PathVariable long questionId, Model model) {
        model.addAttribute("question", questionService.getQuestion(questionId));
        return "questions/view-question";
    }

    @PostMapping("/create")
    public String createQuestion(Question question) {

        questionService.saveQuestion(question);
        return "redirect:/questions/all";
    }

    @PostMapping("/update")
    public String updateQuestion(Question question) {
        questionService.saveQuestion(question);
        return "redirect:/questions/all";
    }

    @GetMapping("/new-question")
    public String newQuestionForm(Model model) {
        return "questions/new-question";
    }


}
