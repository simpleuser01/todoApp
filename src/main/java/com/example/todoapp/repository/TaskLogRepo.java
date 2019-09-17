package com.example.todoapp.repository;

import com.example.todoapp.model.TaskLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface TaskLogRepo extends JpaRepository<TaskLog, Integer> {
}
