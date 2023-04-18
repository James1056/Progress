package com.csc340.Progress.reply;

import com.csc340.Progress.questions.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @GetMapping("/id={questionId}")
    public String getReplies(@PathVariable long questionId, Model model) {
        model.addAttribute("question", questionService.getQuestion(questionId));
        model.addAttribute("replies", replyService.getRepliesByQuestionId(questionId));
        return "questions/view-question";
    }

    @PostMapping("/createReply")
    public String createReply(Reply reply) {
        replyService.saveReply(reply);
        return "redirect:/questions/list-questions";
    }



}
