
create table users(
	id int(50) not null PRIMARY KEY AUTO_INCREMENT,
    name varchar(1000) not null,
    email varchar(1000) not null,
    phone_number int(50) not null,
    role varchar(1000) not null
);

create table logbooks(
	id int(50) not null PRIMARY KEY AUTO_INCREMENT,
    user_id int (50),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    title varchar(1000) not null,
    description varchar(1000) not null,
    date DATE not null
);
    

create table tasks(
	id int(50) not null PRIMARY KEY AUTO_INCREMENT,
    user_id int (50),
    FOREIGN KEY (user_id) REFERENCES users(id),
    title varchar(1000) not null,
    content varchar(1000) not null,
    date_created  DATE not null,
    score int(200) not null,
    deadline DATE not null
);
    


insert into users(name,email,phone_number,role) 
values('Nfon Andrew', 'nfonandrew@gmail.com', '677521223', 'Supervisor'),
	  ('Ankinibom Muso', 'ankinisings@gmail.com', '654378213', 'Supervisor'),
      ('Kamdem Syntyche', 'kamdemsyntyche@gmail.com', '652485054', 'Intern'),
      ('Divina Mbel', 'divinaanye@gmail.com', '656602233', 'Intern'),
      ('Ase SIlvester', 'slyking@gmail.com', '680827761', 'Intern'),
      ('Anjinwie Sandrine', 'sandracastino@gmail.com', '680187254', 'Intern'),
      ('Ankinibom Donald', 'ankinibomsonald113@gmail.com', '677765687', 'Intern'),
      ('Sama Albright', 'samaalbright@gmail.com', '652312803', 'Intern'),
      ('Karl Njiose', 'karlnjiose@gmail.com', '678754231', 'Intern'),
      ('Chemutah Denzel', 'chemuahdenzel@gmail.com', '678754231', 'Intern')


insert into logbooks(user_id,title,description,`date`)
values('3','Form Handling','I was assigned a task to build a simple logging system using functional php. The superglobals $GET and $POST are used for form handling. Both methods creat an array. It holds key and value pairs where key=name of the form control and values=input data of the form. $GET is passed through the URL protocol while $POST is passes through the HTTP POST METHOD', '2023/02/23'),
('4','Django Framework','Django is a python framework used that is used to build applications. I navigated the framework through practical examples such as building a simple logging sytem so i familiarise myself with it', '2023/03/02'),
('5','Introduction to Tyescript and Kotlin','Resources were given by my supervisor whereby he asked us to read through, watch videos and understand and he gave some task to carry out with respect to the resources sent', '2023/02/25'),
('6','Databases for all','my supervisor sent me resources to go through in which it spoke about databases,  database types, database management systems, database normalisartion and mysql', '2023/03/06'),
('7','Introduction to GIT and GITHUB','A session was held were i had the basics of git and github  I learned the basic commands such as git init, git add ., git commit -m "", git push and got the basic understand of the online hosting platform', '2023/02/24'),
('8','Mobile App Development','I wad introduced to mobile app development where I learned of the various languages such as Dart, framework known as Flutter. I was assigned a task to install the programs needed for this field ', '2023/02/18'),
('9','introduction to Front-End Development','resources were sent by my supervisor with regars to Frot-End. we were expected to install the various software needed for the course and aswell navigate w3schools too learn the basics', '2023/03/03'),
('10','Introduction to Computer Engineering','We had a session where i was introduced to computer engineering, its various carriers and Methodologies', '2023/03/02');