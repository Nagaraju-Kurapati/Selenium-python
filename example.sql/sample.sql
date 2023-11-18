create table employees(
cust_id int,
cust_name nvarchar(100),
cust_depart varchar(100),
cust_add varchar(100)
)

select * from employees


--DML statements insert,update,delete

insert into employees (cust_id,cust_name,cust_depart,cust_add)
values (01,'ram','sales','hyd'),
(02,'laxman','customer support','chennai')


--split()
select * from string_split('usa,uk,ind,pak',',')
select * from string_split('welcome to my home',' ')
select * from string_split('101-203-306-789-303-608','-')
select * from string_split('ram@kumar@siri@uha@ramya@laxman','@')
select * from string_split('22#45#78#90#52','#')
select * from string_split('101$203$306$789$303$608','$')


--rank(),dense_rank(),row_number()

select * from students

select*,rank() over(order by std_marks desc)as rank,
dense_rank() over(order by std_marks desc)as dense_rank,
row_number() over (order by std_marks desc) as row_num from students


select *,rank() over (partition by std_branch order by std_marks desc) as std_rank from students
select *,dense_rank() over (partition by std_branch order by std_marks desc) as stdden_rank from students
select *,ROW_NUMBER() over(partition by std_branch order by std_marks desc ) asstd_row_num from Students