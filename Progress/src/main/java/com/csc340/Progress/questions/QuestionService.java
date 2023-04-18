package com.csc340.Progress.questions;

import com.csc340.Progress.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository repo;
    @Autowired
    private UserRepository userRepo;

    public List<Question> getAllQuestions() {
        List<Question> questionList = repo.findAll();
            for (Question question: questionList) {
                question.setUser(userRepo.findUserById(question.getUserId()));
            }
            return questionList;
    }

    public Question getQuestion(Long opId) {
        Question question = repo.getReferenceById(opId);
        question.setUser(userRepo.findUserById(question.getUserId()));
        return question;
    }

    public void deleteQuestion(Long opId) { repo.deleteById(opId); }


    void saveQuestion(Question question) {

        repo.save(question);
    }

}
