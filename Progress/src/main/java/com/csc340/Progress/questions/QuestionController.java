package com.csc340.Progress.questions;


import com.csc340.Progress.reply.ReplyService;
import com.csc340.Progress.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
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
    
    @Autowired
    UserService userService;
    
    @Autowired
    ReplyService replyService;

    @GetMapping("/all")
    public String getQuestions( Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("questionList", questionService.getAllQuestions());
        return "questions/list-questions";
    }

    @GetMapping("/id={questionId}")
    public String getQuestion(@PathVariable long questionId, Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("replies", replyService.getRepliesByQuestionId(questionId));
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
    public String newQuestionForm(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "questions/new-question";
    }


}
