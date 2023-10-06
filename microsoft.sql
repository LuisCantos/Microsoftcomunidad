CREATE DATABASE Microsoft;
USE Microsoft;

CREATE TABLE autores (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  nacionalidad VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE libros (
  id INT NOT NULL AUTO_INCREMENT,
  título VARCHAR(255) NOT NULL,
  autor_id INT NOT NULL,
  género VARCHAR(255) NOT NULL,
  editorial VARCHAR(255) NOT NULL,
  año INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (autor_id) REFERENCES autores(id)
);
