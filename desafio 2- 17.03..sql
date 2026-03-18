CREATE SCHEMA DESAFIO;
USE DESAFIO;

CREATE TABLE Docente (
    id_docente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(60) NOT NULL,
    documento VARCHAR(11) UNIQUE NOT NULL,
    area_atuacao VARCHAR(60),
    contato VARCHAR(15)
);

CREATE TABLE Disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    carga_horaria INT,
    nivel VARCHAR(20),
    id_docente INT,
    FOREIGN KEY (id_docente) REFERENCES Docente(id_docente)
);

INSERT INTO Docente (nome_completo, documento, area_atuacao, contato) VALUES
('João Roberto', '12345678001', 'Matemática', '988126451'),
('Farias Silva', '87654321002', 'Ciências', '908213551'),
('Juliano Pereira', '12309878003', 'Geografia', '10824451'),
('Alazan Sales', '12345123004', 'Biologia', '908224451'),
('Wesley Safado', '19856578005', 'Música', '448926451'),
('Rey Vaqueiro', '13425780006', 'Artes', '903241451'),
('Igor Cunho', '12325678007', 'Veterinária', '908256616'),
('Lulinha', '12145885008', 'Anatomia', '90890451'),
('Zé Vaqueiro', '12358780009', 'Locução', '90897121'),
('Zé Barreto', '12325878010', 'Gestão', '97862429');

INSERT INTO Disciplina (titulo, carga_horaria, nivel, id_docente) VALUES
('Geometria', 30, 'Básico', 1),
('Física Quântica', 40, 'Avançado', 2),
('Cartografia', 50, 'Médio', 3),
('Genética', 30, 'Básico', 4),
('Harmonia', 35, 'Médio', 5),
('Escultura', 50, 'Médio', 6),
('Zootecnia', 40, 'Avançado', 7),
('Fisiologia', 45, 'Médio', 8),
('Dicção', 20, 'Básico', 9),
('Agronegócio', 35, 'Avançado', 10);

UPDATE Disciplina SET carga_horaria = 60 WHERE id_disciplina = 1;

SELECT * FROM Disciplina WHERE carga_horaria > 30;

SELECT 
    COUNT(*) AS total_registros, 
    AVG(carga_horaria) AS media_horas, 
    MAX(carga_horaria) AS maior_carga 
FROM Disciplina;

SELECT id_docente, COUNT(*) FROM Disciplina GROUP BY id_docente;

SELECT nivel, COUNT(*) FROM Disciplina GROUP BY nivel;

SELECT d.titulo, p.nome_completo
FROM Disciplina d
INNER JOIN Docente p ON d.id_docente = p.id_docente;