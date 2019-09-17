package com.example.todoapp.repository;

import com.example.todoapp.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;


@Repository
@Transactional
public interface TaskRepo extends JpaRepository<Task, Integer> {

}
