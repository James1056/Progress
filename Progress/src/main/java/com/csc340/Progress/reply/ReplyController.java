package com.csc340.Progress.reply;

import com.csc340.Progress.questions.QuestionService;
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
@RequestMapping("/replies")
public class ReplyController {

    @Autowired
    ReplyService replyService;
    @Autowired
    QuestionService questionService;
    @Autowired
    UserService userService;

    @GetMapping("/id={questionId}")
    public String getReplies(@PathVariable long questionId, Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("question", questionService.getQuestion(questionId));
        model.addAttribute("replies", replyService.getRepliesByQuestionId(questionId));
        return "questions/view-question";
    }

    @PostMapping("/createReply")
    public String createReply(Reply reply) {
        replyService.saveReply(reply);
        return "redirect:/questions/all";
    }



}
