CREATE TABLE usuario (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
  	autor VARCHAR(50) NOT NULL,
  	ano_publi INTEGER NOT NULL
  
);

CREATE TABLE emprestimos (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    livro_id INTEGER NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    status TEXT NOT NULL CHECK (status IN ('ATIVO', 'DEVOLVIDO')),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);