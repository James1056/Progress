package com.csc340.Progress.reply;

import com.csc340.Progress.questions.QuestionRepository;
import com.csc340.Progress.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ReplyService {

    @Autowired
    private ReplyRepository replyRepo;
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private QuestionRepository questionRepo;



    public Reply getReply(Long opId) {
        Reply reply = replyRepo.getReferenceById(opId);
        reply.setUser(userRepo.findUserById(reply.getUserId()));
        reply.setQuestion(questionRepo.findQuestionById(reply.getQuestionId()));
        return reply;
    }

    public List<Reply> getRepliesByQuestionId(Long questionId) {
        List<Reply> replyList = (List<Reply>) replyRepo.findRepliesByQuestionId(questionId);
        for (Reply reply : replyList) {
            reply.setUser(userRepo.findUserById(reply.getUserId()));
            reply.setQuestion(questionRepo.findQuestionById(questionId));
        }

        return replyList;
    }

    void saveReply(Reply reply) {
        replyRepo.save(reply);
    }

}
