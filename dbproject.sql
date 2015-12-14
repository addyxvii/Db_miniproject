-- -----------------------------------------------------
-- Table `cohort`
-- -----------------------------------------------------
CREATE TABLE  cohort (
  id_cohort INTEGER PRIMARY KEY,
  Name VARCHAR(45) NULL,
  Location VARCHAR(45) NULL,
)
;


-- -----------------------------------------------------
-- Table `Students`
-- -----------------------------------------------------
CREATE TABLE Students (
  id_Students INTEGER PRIMARY KEY,
  id_cohort INTEGER REFERENCES cohort(id_cohort),
  First_Name VARCHAR(45) NOT NULL,
  Last_Name VARCHAR(45) NOT NULL,
  CONSTRAINT fk_Students_cohort
)
;


-- -----------------------------------------------------
-- Table `Instructors`
-- -----------------------------------------------------
CREATE TABLE Instructors (
  id_Instructors INTEGER PRIMARY KEY,
  First_Name VARCHAR(45) NOT NULL,
  Last_Name VARCHAR(45) NOT NULL,
)
;


-- -----------------------------------------------------
-- Table `Projects`
-- -----------------------------------------------------
CREATE TABLE Projects (
  id_projects INTEGER PRIMARY KEY,
  Project_Name VARCHAR(45) NULL,
  Project_Description VARCHAR(255) NULL,
  PRIMARY KEY (cohort_idcohort),
)
;
CREATE TABLE Projects_cohort(
id_projects_cohort INTEGER PRIMARY KEY,
id_projects INTEGER REFERENCES Projects(id_projects),
id_cohort INTEGER REFERENCES cohort(id_cohort),
);

-- -----------------------------------------------------
-- Table `Exercises`
-- -----------------------------------------------------
CREATE TABLE Exercises (
  id_exercises VARCHAR(45) NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  )
;
CREATE TABLE Exercises_cohort(
id_exercises_cohort INTEGER PRIMARY KEY,
id_exercises INTEGER REFERENCES Exercises(id_exercises),
id_cohort INTEGER REFERENCES cohort(id_cohort),
);

-- -----------------------------------------------------
-- Table `instructor_cohort`
-- -----------------------------------------------------
CREATE TABLE instructor_cohort (
  id_instructor_cohort INTEGER PRIMARY KEY,
  id_Instructors INTEGER REFERENCES Instructors(id_Instructors),
  id_cohort INTEGER REFERENCES cohort(id_cohort),
  )
;

INSERT INTO cohort values(1,'g15','Platte');
INSERT INTO cohort values(2,'g18','Platte');
INSERT INTO cohort values(3,'g11','Golden Triangle');
INSERT INTO cohort values(4,'g16','SF');
INSERT INTO cohort values(5,'g17','Seattle');

INSERT INTO Instructors values(1,'Kyle','Coberly');
INSERT INTO Instructors values(2,'Danny','Fritz');
INSERT INTO Instructors values(3,'CJ','Reynolds');
INSERT INTO Instructors values(4,'Roberto','Ortega');
INSERT INTO Instructors values(5,'Steve','Smith');

INSERT INTO instructor_cohort values(1,1,1);
INSERT INTO instructor_cohort values(2,2,2);
INSERT INTO instructor_cohort values(3,2,3);
INSERT INTO instructor_cohort values(4,4,4);

INSERT INTO Students values(1,2,'Joe','Schmo');
INSERT INTO Students values(2,4,'Liz','Whiz');
INSERT INTO Students values(3,3,'Roger','Todger');
INSERT INTO Students values(1,4,'Jeb','Buschlite');
INSERT INTO Students values(1,5,'Lisa','Silver');

INSERT INTO Projects values(1,'Jquery Boxes','Use Jquery to manipiulate DOM elements.');
INSERT INTO Projects values(2,'Flex Box Froggy','Use Flex Box to place frog on screen.');
INSERT INTO Projects values(3,'galvanize eats','q1 assesment.');
INSERT INTO Projects values(4,'Stop light','Use event handlers to manipulate stoplight');
INSERT INTO Projects values(5,'Save World','Stop the kar-daz-eins.');

INSERT INTO Projects_cohort values(1,2,3);
INSERT INTO Projects_cohort values(2,4,3);
INSERT INTO Projects_cohort values(3,5,2);
INSERT INTO Projects_cohort values(4,2,5);
INSERT INTO Projects_cohort values(5,1,5);

INSERT INTO Projects values(1,'Jquery Boxes','Use Jquery to manipiulate DOM elements.');
INSERT INTO Projects values(2,'Flex Box Froggy','Use Flex Box to place frog on screen.');
INSERT INTO Projects values(3,'galvanize eats','q1 assesment.');
INSERT INTO Projects values(4,'Stop light','Use event handlers to manipulate stoplight');
INSERT INTO Projects values(5,'Save World','Stop the kar-daz-eins.');

INSERT INTO Projects_cohort values(1,2,3);
INSERT INTO Projects_cohort values(2,4,3);
INSERT INTO Projects_cohort values(3,5,2);
INSERT INTO Projects_cohort values(4,2,5);
INSERT INTO Projects_cohort values(5,1,5);
