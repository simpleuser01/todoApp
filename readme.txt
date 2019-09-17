/***********************mysql settings**********************/

database settings in resources/static/todoAppDump.sql
or execute scripts in resources/static/mysql



/***********************url address**********************/

localhost:8008/todoApp/
all other info at FAQ



/***********************sql scripts from task**********************/

1.
select u.user_id, u.user_name, u.user_surname, u.user_login, u.user_password, count(task_id) from users u
  left join tasks t
  on u.user_id=t.user_id_fk
  group by u.user_id;



2.
select u.user_id, u.user_name, u.user_surname, u.user_login, u.user_password, sum(tl.task_time) from users u
  inner join tasks t
  on u.user_id=t.user_id_fk
  inner join task_logs tl
  on t.task_id=tl.task_id_fk
  group by u.user_id
  having sum(tl.task_time)>=100;