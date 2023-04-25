package com.csc340.Progress.reply;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReplyRepository extends JpaRepository<Reply, Long> {

    public List<Reply> findRepliesByQuestionId(long questionId);
}
