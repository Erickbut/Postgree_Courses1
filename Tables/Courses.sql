CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "inscribed_id" int,
  "email" varchar,
  "password" varchar,
  "age" int,
  "rol_id" int
);

CREATE TABLE "inscribed" (
  "id" serial PRIMARY KEY,
  "time_course" varchar,
  "finish_course" varchar,
  "courses_id" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "category_id" int
);

CREATE TABLE "levelCourse" (
  "id" serial PRIMARY KEY,
  "level" varchar,
  "courses_id" int
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "courses_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("rol_id") REFERENCES "roles" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("inscribed_id") REFERENCES "inscribed" ("id");

ALTER TABLE "inscribed" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "levelCourse" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");
