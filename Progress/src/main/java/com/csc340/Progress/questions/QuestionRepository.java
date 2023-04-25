package com.csc340.Progress.questions;

import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<Question, Long> {

    public Question findQuestionById(long id);
}
