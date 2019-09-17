package com.example.todoapp.model;


import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GeneratorType;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int userId;

    @NotEmpty(message = "Поле имя пользователя не может быть пустым")
    @Column(name = "user_name")
    private String userName;

    @NotEmpty(message = "Поле фамилия не может быть пустым")
    @Column(name = "user_surname")
    private String surName;

    @NotEmpty(message = "Поле отчество не может быть пустым")
    @Column(name = "user_patronymic")
    private String patronymic;

    @NotEmpty(message = "Поле логин не может быть пустым")
    @Column(name = "user_login")
    private String login;

    @NotEmpty(message = "Поле пароль не может быть пустым")
    @Column(name = "user_password")
    private String password;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Task> tasks;

    public User() {
    }

    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
