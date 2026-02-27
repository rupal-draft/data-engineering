create table users(
	id serial primary key,
	name varchar(50),
	email varchar(50) unique not null,
	phone varchar(13) unique not null
);

alter table users 
add column age INT;

insert into users(name,email,phone,age)
values
('Rupal Paul','Rupal.Paul@ibm.com','8617756189',23),
('Amit Sharma','amit.sharma@gmail.com','8617756001',25),
('Priya Das','priya.das@gmail.com','8617756002',22),
('Rahul Verma','rahul.verma@gmail.com','8617756003',28),
('Sneha Iyer','sneha.iyer@gmail.com','8617756004',24),
('Arjun Rao','arjun.rao@gmail.com','8617756005',27),
('Neha Kapoor','neha.kapoor@gmail.com','8617756006',26),
('Vikram Singh','vikram.singh@gmail.com','8617756007',29),
('Ananya Sen','ananya.sen@gmail.com','8617756008',21),
('Karan Mehta','karan.mehta@gmail.com','8617756009',30),
('Ishita Roy','ishita.roy@gmail.com','8617756010',23),
('Rohit Gupta','rohit.gupta@gmail.com','8617756011',31),
('Meera Nair','meera.nair@gmail.com','8617756012',22),
('Siddharth Jain','siddharth.jain@gmail.com','8617756013',27),
('Pooja Reddy','pooja.reddy@gmail.com','8617756014',24),
('Aditya Malhotra','aditya.malhotra@gmail.com','8617756015',26),
('Kavya Menon','kavya.menon@gmail.com','8617756016',25),
('Harsh Patel','harsh.patel@gmail.com','8617756017',28),
('Divya Sinha','divya.sinha@gmail.com','8617756018',23),
('Manish Yadav','manish.yadav@gmail.com','8617756019',29),
('Simran Kaur','simran.kaur@gmail.com','8617756020',24),
('Abhishek Bose','abhishek.bose@gmail.com','8617756021',27),
('Nikita Shah','nikita.shah@gmail.com','8617756022',22),
('Tushar Roy','tushar.roy@gmail.com','8617756023',26),
('Riya Banerjee','riya.banerjee@gmail.com','8617756024',21),
('Akash Choudhary','akash.choudhary@gmail.com','8617756025',30),
('Swati Kulkarni','swati.kulkarni@gmail.com','8617756026',25),
('Deepak Mishra','deepak.mishra@gmail.com','8617756027',28),
('Tanvi Sharma','tanvi.sharma@gmail.com','8617756028',23),
('Yash Agarwal','yash.agarwal@gmail.com','8617756029',29),
('Payal Verma','payal.verma@gmail.com','8617756030',24);


create table posts(
	id serial primary key,
	content varchar(2000) not null,
	photo_url varchar(100),
	likes INT default(0),
	user_id INT not null,
	foreign key (user_id) references users(id)
);

insert into posts(content,photo_url,likes,user_id)
values
('Morning workout done 💪', 'photo1.jpg', 10, 1),
('Learning PostgreSQL is fun!', 'photo2.jpg', 15, 2),
('Weekend vibes 🌴', 'photo3.jpg', 8, 3),
('Coffee + Code ☕', 'photo4.jpg', 25, 4),
('Exploring microservices architecture', 'photo5.jpg', 30, 5),
('GraphQL is powerful!', 'photo6.jpg', 12, 6),
('Docker + Kubernetes 🚀', 'photo7.jpg', 40, 7),
('Building scalable backend systems', 'photo8.jpg', 18, 8),
('Just deployed my project!', 'photo9.jpg', 22, 9),
('Debugging mode ON 😅', 'photo10.jpg', 5, 10),

('System design practice today', 'photo11.jpg', 14, 11),
('Learning joins in SQL', 'photo12.jpg', 9, 12),
('Foreign keys make sense now!', 'photo13.jpg', 11, 13),
('Indexing improves performance', 'photo14.jpg', 17, 14),
('REST vs gRPC discussion', 'photo15.jpg', 19, 15),
('Kafka event streaming 🔥', 'photo16.jpg', 27, 16),
('Redis caching implemented', 'photo17.jpg', 21, 17),
('Unit testing my APIs', 'photo18.jpg', 6, 18),
('Spring Boot magic ✨', 'photo19.jpg', 32, 19),
('Frontend + Backend integration done', 'photo20.jpg', 13, 20),

('Practicing DSA daily', 'photo21.jpg', 29, 21),
('Working on LinkedIn clone', 'photo22.jpg', 35, 22),
('Clean architecture matters', 'photo23.jpg', 16, 23),
('Optimizing database queries', 'photo24.jpg', 24, 24),
('Late night coding session 🌙', 'photo25.jpg', 20, 25),
('Understanding normalization', 'photo26.jpg', 7, 26),
('Added authentication module', 'photo27.jpg', 26, 27),
('Implemented role-based access', 'photo28.jpg', 18, 28),
('API Gateway configured', 'photo29.jpg', 34, 29),
('Payment service integrated', 'photo30.jpg', 28, 30),

('Cloud deployment successful ☁️', 'photo31.jpg', 31, 1),
('Learning about transactions', 'photo32.jpg', 9, 2),
('Handling concurrency issues', 'photo33.jpg', 12, 3),
('Practicing aggregation queries', 'photo34.jpg', 14, 4),
('Database relationships mastered!', 'photo35.jpg', 23, 5),
('Writing clean SQL queries', 'photo36.jpg', 17, 6),
('Exploring indexing strategies', 'photo37.jpg', 15, 7),
('Building RESTful APIs', 'photo38.jpg', 21, 8),
('Microservices communication via gRPC', 'photo39.jpg', 19, 9),
('Event-driven architecture', 'photo40.jpg', 33, 10),

('Continuous learning mindset', 'photo41.jpg', 11, 11),
('Version control with Git', 'photo42.jpg', 8, 12),
('Debugging production issues', 'photo43.jpg', 22, 13),
('Improving query performance', 'photo44.jpg', 27, 14),
('Designing scalable systems', 'photo45.jpg', 36, 15),
('Database constraints are important', 'photo46.jpg', 10, 16),
('Practicing advanced joins', 'photo47.jpg', 16, 17),
('Understanding ACID properties', 'photo48.jpg', 13, 18),
('Full stack development journey', 'photo49.jpg', 30, 19),
('Consistency > Motivation 💯', 'photo50.jpg', 45, 20);


SELECT constraint_name
FROM information_schema.table_constraints
WHERE table_name = 'posts'
AND constraint_type = 'FOREIGN KEY';

alter table posts drop constraint posts_user_id_fkey;

alter table posts 
add constraint posts_user_id_fkey
foreign key (user_id)
references users(id)
on delete cascade;


select * from users;
select  * from posts;

select name,content,photo_url from users u
inner join posts p
on u.id = p.user_id;


create table likes(
	id serial primary key,
	post_id INT not null references posts(id) on delete cascade,
	liked_by INT not null,
	foreign key (liked_by) references users(id) on delete cascade
);


insert into likes(post_id,liked_by)
values
(1,2),(1,3),(1,4),(1,5),(1,6),
(2,1),(2,3),(2,4),(2,7),(2,8),
(3,1),(3,2),(3,5),(3,6),(3,9),
(4,2),(4,3),(4,10),(4,11),(4,12),
(5,1),(5,4),(5,7),(5,8),(5,9),
(6,3),(6,4),(6,5),(6,6),(6,7),
(7,8),(7,9),(7,10),(7,11),(7,12),
(8,1),(8,2),(8,3),(8,4),(8,5),
(9,6),(9,7),(9,8),(9,9),(9,10),
(10,11),(10,12),(10,13),(10,14),(10,15),

(11,2),(11,4),(11,6),(11,8),(11,10),
(12,1),(12,3),(12,5),(12,7),(12,9),
(13,10),(13,11),(13,12),(13,13),(13,14),
(14,2),(14,5),(14,8),(14,11),(14,15),
(15,1),(15,4),(15,7),(15,10),(15,13),
(16,3),(16,6),(16,9),(16,12),(16,15),
(17,2),(17,3),(17,4),(17,5),(17,6),
(18,7),(18,8),(18,9),(18,10),(18,11),
(19,12),(19,13),(19,14),(19,15),(19,16),
(20,1),(20,2),(20,3),(20,4),(20,5),

(21,6),(21,7),(21,8),(21,9),(21,10),
(22,11),(22,12),(22,13),(22,14),(22,15),
(23,1),(23,5),(23,9),(23,13),(23,17),
(24,2),(24,6),(24,10),(24,14),(24,18),
(25,3),(25,7),(25,11),(25,15),(25,19),
(26,4),(26,8),(26,12),(26,16),(26,20),
(27,5),(27,9),(27,13),(27,17),(27,21),
(28,6),(28,10),(28,14),(28,18),(28,22),
(29,7),(29,11),(29,15),(29,19),(29,23),
(30,8),(30,12),(30,16),(30,20),(30,24);



-- Show all posts with author name


select p.id,p.content,u.name from posts p
left join users u 
on p.user_id = u.id;


-- Show all likes

select 
	p.content,
	u.name as liked_by
from likes l
left join posts p
on p.id = l.post_id 
left join users u
on u.id = l.liked_by;


-- Show all posts liked by a specific user

select 
	p.content,
	u.name
from likes l
left join posts p
on l.post_id = p.id
left join users u
on l.liked_by = u.id
where u.id = 5;


-- Count number of posts per user

select 
	u.name,
	count(p.id) as posts_count
from users u
left join posts p
on u.id = p.user_id 
group by u.id 
order by count(p.id) desc;

-- Count number of likes per post

select 
	p.content,
	count(l.id) as likes_count
from posts p
left join likes l
on p.id = l.post_id  
group by p.id 
order by count(l.id) desc;

-- Most active liker

select 
	u.name as most_active_liker,
	count(l.id) as total_likes
from users u
left join likes l
on u.id = l.liked_by  
group by u.id 
order by count(l.id) desc
limit 1;

-- Show users who never created any post

select 
	u.name
from users u
left join posts p
on u.id = p.user_id 
where p.id = null;

-- Show posts that have zero likes

select 
	p.content,
	count(l.id) as likes_count
from posts p
left join likes l
on p.id = l.post_id 
group by p.id
having count(l.id) = 0;


-- Show top 3 most liked posts with

select 
	p.content as post,
	u.name as author,
	count(l.id) as likes_count
from posts p
left join likes l
on l.post_id = p.id 
left join users u
on u.id = p.user_id 
group by p.id,p.content,u.name
order by count(l.id) desc
limit 3;

-- For each user, show:
--name
--number of posts
--total likes received across all their posts

select
	u.name,
	count(p.id) as posts_count,
	count(l.id) as likes_count
from users u
left join posts p
on u.id = p.user_id
left join likes l
on l.liked_by = u.id
group by u.id;


-- Show users who liked their own post

select 
	u.name,
	p.content
from posts p
inner join users u
on u.id = p.user_id 
inner join likes l
on l.post_id = p.id
where l.liked_by = p.user_id;


-- Users who liked each others post


SELECT DISTINCT
    u1.name AS user1,
    u2.name AS user2
FROM likes l1
JOIN posts p1 ON p1.id = l1.post_id

JOIN likes l2 
    ON l1.liked_by = p1.user_id        
    AND l2.liked_by = p1.user_id       

JOIN posts p2 
    ON p2.id = l2.post_id
    AND p2.user_id = l1.liked_by

JOIN users u1 ON u1.id = l1.liked_by
JOIN users u2 ON u2.id = p1.user_id

WHERE l1.liked_by <> p1.user_id;
	

																															
