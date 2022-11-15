insert into categories (
	"name" 
)
values ('Front-end'),
('Backend');
--

insert into roles (
	"name"
)
values ('admin'),
('student'),
('teacher');
--

insert into users (
	id,
	first_name,
	last_name,
	inscribed_id,
	email,
	"password",
	age,
	rol_id
)
values (
	'aac9307f-b4f9-47b4-8f9b-81f0592e11c5',
	'Erick',
	'Butron',
	1,
	'erickbutron1@gmail.com',
	'1234',
	24,
	2
),(
	'9550ba17-94a2-4f63-9aac-246759837ee9',
	'Andre',
	'Alfaro',
	2,
	'andrealf1@gmail.com',
	'1234',
	25,
	2
);
--

insert into courses (
	title,
	description,
	category_id
)
values (
	'reactJS',
	'materia a cerca del frontend de las páginas web',
	1
),(
	'NodeJS',
	'materia a cerca del backend de base de datos',
	2
);
--

insert into inscribed(
	time_course,
	finish_course,
	courses_id 
)
values ('21 hours','December',1),('26 hours','December',2)
--

insert into course_videos (
	title,
	url,
	courses_id 
)
values ('react','https://www.youtube.com/watch?v=rLoWMU4L_qE&t=1009s',1),
('NodeJS','https://www.youtube.com/watch?v=BhvLIzVL8_o',2);
--


insert into "levelCourse" (
	level,
	courses_id 
)
values ('Benginer',1),('Advanced',2)
