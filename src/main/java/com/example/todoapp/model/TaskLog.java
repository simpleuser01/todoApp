package com.example.todoapp.model;


import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "task_logs")
public class TaskLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "log_id")
    private int logId;

    @NotEmpty(message = "Поле описание задания не может быть пустым")
    @Column(name = "task_description")
    private String taskDescription;

    @Min(value = 1, message = "Поле время на задание не может быть пустым либо меньше нуля")
    @Column(name = "task_time")
    private int taskTime;

    @ManyToOne
    @JoinColumn(name = "task_id_fk")
    Task task;

    public TaskLog() {
    }

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public String getTaskDescription() {
        return taskDescription;
    }

    public void setTaskDescription(String taskDescription) {
        this.taskDescription = taskDescription;
    }

    public int getTaskTime() {
        return taskTime;
    }

    public void setTaskTime(int taskTime) {
        this.taskTime = taskTime;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }
}
