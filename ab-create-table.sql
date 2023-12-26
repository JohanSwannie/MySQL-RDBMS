-- Maximum columns per primary or foreign key ==> 32
-- Maximum columns in total allowed in a table ==> 4096 

CREATE TABLE IF NOT EXISTS checklists (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  task_id INT, 
  title VARCHAR(255) NOT NULL, 
  is_completed BOOLEAN NOT NULL DEFAULT FALSE, 
  PRIMARY KEY (id, task_id), 
  CONSTRAINT task_id_fk
  FOREIGN KEY (task_id) 
      REFERENCES tasks (id) 
      ON UPDATE RESTRICT 
      ON DELETE CASCADE
);