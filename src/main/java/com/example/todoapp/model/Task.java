package com.example.todoapp.model;


import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;

@Entity
@Table(name = "tasks")

public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "task_id")
    private int taskId;

    @NotEmpty(message = "Поле название задания не может быть пустым")
    @Column(name = "task_name")
    private String taskName;

    @Column(name = "task_state")
    private String taskState;

    @ManyToOne
    @JoinColumn(name = "user_id_fk")
    private User user;

    @OneToMany(mappedBy = "task")
    List<TaskLog> logs;

    public Task() {
    }


    public List<TaskLog> getLogs() {
        return logs;
    }

    public void setLogs(List<TaskLog> logs) {
        this.logs = logs;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskState() {
        return taskState;
    }

    public void setTaskState(String taskState) {
        this.taskState = taskState;
    }
}
