# 📦 Projeto: Gestão de Acervo de Livros (Java Servlets, JSP & SQLite)

Este projeto acadêmico foi desenvolvido como parte da disciplina de **Sistemas Web I (CBTSWE1)**, ministrada pelo professor Wellington Tuler Moraes, no Instituto Federal de Educação, Ciência e Tecnologia de São Paulo (IFSP) — Campus Cubatão. O objetivo é implementar uma aplicação web completa de CRUD (Create, Read, Update, Delete) para o gerenciamento de um acervo de livros. 

A aplicação evolui conceitos arquiteturais, utilizando **Java Servlets** sob o padrão de projeto **Front Controller**, páginas dinâmicas em **JSP**, e persistência de dados em um banco de dados relacional **SQLite** com gerenciamento de dependências via **Maven**.

## 🎯 Objetivos

- **Arquitetura Front Controller**: Centralizar o fluxo de requisições web utilizando um único Servlet (`ControllerServlet.java`) que intercepta e roteia as chamadas com base no `web.xml`.
- **Persistência em Banco de Dados**: Implementar as operações de armazenamento, leitura, atualização e exclusão utilizando a API JDBC para conectar a um arquivo local do SQLite, eliminando a necessidade de um servidor de banco externo.
- **Automação de Infraestrutura**: O repositório de dados (`BookDAO.java`) é capaz de verificar, criar a tabela e injetar os dados iniciais dinamicamente em tempo de execução.
- **Design System Moderno**: Construir uma interface gráfica responsiva e moderna utilizando Bootstrap 5, Fontes do Google (Inter) e componentes em formato de "SaaS/Cards".
- **Gerenciamento via Maven**: Migrar o controle de dependências externas (JSTL, Servlet API, SQLite Driver) integralmente para o arquivo `pom.xml`.
- **Tratamento de Exceções**: Desenvolver uma página customizada de erro (`erro.jsp`) para capturar e exibir falhas na execução do sistema.

## 🛠️ Ferramentas Utilizadas

- Java (Servlets / Jakarta EE)
- JSP (JavaServer Pages) e JSTL (`jstl-1.2.jar`)
- SQLite 3 & API JDBC (`sqlite-jdbc`)
- Eclipse IDE (Convertido para Maven Project)
- HTML5, CSS3 Customizado e Bootstrap 5
- Apache Tomcat (Servidor Web)
- Apache Maven (Gerenciamento de Build e Dependências)

## 🗄️ Estrutura de Dados (SQLite)

Os dados são armazenados localmente em um arquivo de banco de dados (`bookstore.db`). A entidade gerenciada é **BOOK**, contendo os seguintes atributos na tabela `book`:

| Atributo | Tipo no Java | Tipo no SQLite | Descrição |
| :--- | :--- | :--- | :--- |
| **id** | `int` | `INTEGER PRIMARY KEY AUTOINCREMENT` | Identificador numérico e único do livro. |
| **title** | `String` | `TEXT NOT NULL UNIQUE` | Título ou nome oficial da obra. |
| **author** | `String` | `TEXT NOT NULL` | Nome completo do autor principal. |
| **price** | `float` | `REAL NOT NULL` | Preço comercial em formato decimal. |

## 🗂️ Estrutura do Projeto

```text
📁 project-book-management/
├── 📁tp03-books-management
│   ├── 📁 WebContent/
│       ├── 📁 WEB-INF/
│       │   └── 📄 web.xml
│       ├── 📄 bookForm.jsp
│       ├── 📄 bookList.jsp
│       ├── 📄 creditos.jsp
│       ├── 📄 erro.jsp
│       └── 📄 index.jsp
│   ├── 📁 src/net/codejava/javaee/bookstore/
│       ├── 📄 Book.java
│       ├── 📄 BookDAO.java
│       └── 📄 ControllerServlet.java
|   ├── 📄 database.sql
|   └── 📄 pom.xml
└── 📄 .gitignore
└── 📄 README.md
```

## 🚀 Como Executar

1.  **Configuração do Ambiente (Eclipse):**
      - Clone este repositório para a sua máquina local.
      - Importe a pasta do projeto no Eclipse: `File > Import > Maven > Existing Maven Projects`.
      - Crie manualmente uma pasta chamada `sqlite` na raiz do seu disco local (Caminho exato: `C:/sqlite/`). O arquivo do banco de dados será gerado automaticamente lá.
      - Clique com o botão direito no projeto e selecione `Run As > Maven Install` para garantir que o driver do SQLite e o JSTL sejam baixados e empacotados.
      - Certifique-se de que o servidor Apache Tomcat (versão 9.x) está configurado na sua IDE.

2.  **Iniciando a Aplicação:**
      - Acesse a aba Servers, clique com o botão direito no seu Tomcat e selecione `Clean....`
      - Clique em `Start` para inicializar o servidor de aplicação.
      - Abra o navegador e acesse a raiz do projeto (ajustando a porta conforme a configuração local): `http://localhost:8080/project-book-management/index.jsp`.

## 👨‍🏫 Autores

  - **Stiven Richardy Silva Rodrigues** Estudante de Análise e Desenvolvimento de Sistemas | IFSP — Campus Cubatão  
    [@Stiven-Richardy](https://github.com/Stiven-Richardy)

  - **Guilherme Mendes de Sousa** Estudante de Análise e Desenvolvimento de Sistemas | IFSP — Campus Cubatão  
    [@Guilh3rme-M3ndes](https://github.com/Guilh3rme-M3ndes)

## 📚 Referências

  - Tutorial Base (CodeJava CRUD): https://www.codejava.net/coding/jsp-servlet-jdbc-mysql-create-read-update-delete-crud-example
  - Driver SQLite JDBC (Maven Repository): https://mvnrepository.com/artifact/org.xerial/sqlite-jdbc
  - Jakarta Standard Tag Library (JSTL): https://javaee.github.io/tutorial/jsf-el.html
