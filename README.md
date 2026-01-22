<h1><strong>One For All</strong></h1>

<h2><strong>Descrição</strong></h2>
<p align="justify">
  O projeto One For All tem como objetivo revisar e consolidar conceitos fundamentais de modelagem de dados e SQL.
  A partir de uma planilha não normalizada inspirada em uma versão simplificada do Spotify, o desafio consiste em normalizar os dados, criar e popular o banco SpotifyClone e, em seguida, resolver uma sequência de desafios por meio de queries SQL.
</p>

<h2><strong>Funcionalidades</strong></h2>
<ul>
  <li align="justify">Normalização da planilha para um modelo relacional (ex.: 1FN, 2FN e 3FN).</li>
  <li align="justify">Criação do banco <strong>SpotifyClone</strong> com tabelas e relacionamentos normalizados.</li>
  <li align="justify">Povoamento do banco a partir dos arquivos <code>.xlsx</code> fornecidos no repositório.</li>
  <li align="justify">Resolução de desafios com <strong>queries SQL</strong>, incluindo filtros, agregações, ordenações e junções.</li>
  <li align="justify">Validação por testes automatizados do projeto (ambiente Node + Jest) e execução facilitada com Docker.</li>
</ul>

<h2><strong>Demonstração do Projeto</strong></h2>
<p align="center">
  <em>Projeto sem interface gráfica, focado em banco de dados e SQL.</em>
  <br>
  <a href="https://github.com/williandpg/one-for-all" target="_blank"><strong>Acesse o repositório</strong></a>
</p>

<h2><strong>Tecnologias Utilizadas</strong></h2>
<ul>
  <li align="justify">
    <a href="https://www.mysql.com/" target="_blank"><strong>MySQL</strong></a>:
    banco de dados relacional utilizado para criação, normalização e consultas (queries) do SpotifyClone.
  </li>
  <li align="justify">
    <a href="https://www.docker.com/" target="_blank"><strong>Docker</strong></a>:
    padronização do ambiente e suporte à execução dos serviços necessários para o projeto.
  </li>
  <li align="justify">
    <a href="https://nodejs.org/" target="_blank"><strong>Node.js</strong></a>:
    usado para executar scripts e testes automatizados do projeto.
  </li>
  <li align="justify">
    <a href="https://jestjs.io/" target="_blank"><strong>Jest</strong></a>:
    framework de testes utilizado para validar as queries e resultados esperados.
  </li>
</ul>

<h2><strong>Estrutura do Projeto</strong></h2>
<p align="justify">A estrutura do projeto é organizada da seguinte forma:</p>
<pre><code>/
├── challenges/                     # desafios, queries e entregáveis do projeto
├── tests/                          # testes e expected results
├── SpotifyClone-Non-NormalizedTable.xlsx
├── SpotifyClone-Non-NormalizedTable-fav-songs.xlsx
├── docker-compose.yml
├── Dockerfile
├── jest.config.js
├── package.json
├── package-lock.json
└── README.md
</code></pre>

<h2><strong>Contato</strong></h2>
<p>
  <strong>Willian Gonçalves</strong> |
  <a href="https://www.linkedin.com/in/williandpg/" target="_blank"><strong>LinkedIn</strong></a> |
  <a href="https://github.com/williandpg" target="_blank"><strong>GitHub</strong></a> |
  <a href="https://williandpg.github.io/" target="_blank"><strong>Portfólio</strong></a> |
  <a href="mailto:goncalves.wdp@outlook.com" target="_blank"><strong>Email</strong></a>
</p>

<h2><strong>Créditos</strong></h2>
<p align="justify">
  Este projeto foi desenvolvido como parte do curso de Desenvolvimento Web Full Stack da Trybe, com foco em normalização, modelagem relacional e SQL.
</p>

<details>
  <summary><strong>English Version</strong></summary>

  <h1><strong>One For All</strong></h1>

  <h2><strong>Description</strong></h2>
  <p align="justify">
    The <strong>One For All</strong> project consolidates core <strong>data modeling</strong> and <strong>SQL</strong> skills.
    Starting from a denormalized spreadsheet inspired by a simplified Spotify database, the goal is to
    <strong>normalize the data</strong>, <strong>create and seed</strong> the <strong>SpotifyClone</strong> database, and then solve a set of challenges using <strong>SQL queries</strong>.
  </p>

  <h2><strong>Features</strong></h2>
  <ul>
    <li align="justify">Normalize the original spreadsheet into a relational model (e.g., 1NF, 2NF and 3NF).</li>
    <li align="justify">Create the <strong>SpotifyClone</strong> database with normalized tables and relationships.</li>
    <li align="justify">Seed the database using the provided <code>.xlsx</code> files in the repository.</li>
    <li align="justify">Solve SQL challenges using filters, aggregations, ordering and joins.</li>
    <li align="justify">Validate results using automated tests (Node + Jest) and optional Docker environment.</li>
  </ul>

  <h2><strong>Project Demonstration</strong></h2>
  <p align="center">
    <em>Project without graphical interface, focused on database and SQL.</em>
    <br>
    <a href="https://github.com/williandpg/one-for-all" target="_blank"><strong>Open repository</strong></a>
  </p>

  <h2><strong>Technologies Used</strong></h2>
  <ul>
    <li align="justify">
      <a href="https://www.mysql.com/" target="_blank"><strong>MySQL</strong></a>:
      relational database used to model, normalize and query the SpotifyClone schema.
    </li>
    <li align="justify">
      <a href="https://www.docker.com/" target="_blank"><strong>Docker</strong></a>:
      environment standardization and services orchestration.
    </li>
    <li align="justify">
      <a href="https://nodejs.org/" target="_blank"><strong>Node.js</strong></a>:
      used to run scripts and automated tests.
    </li>
    <li align="justify">
      <a href="https://jestjs.io/" target="_blank"><strong>Jest</strong></a>:
      test framework used to validate queries and expected results.
    </li>
  </ul>

  <h2><strong>Project Structure</strong></h2>
  <p align="justify">The project structure is organized as follows:</p>
  <pre><code>/
  ├── challenges/                     # challenges, SQL files and project deliverables
  ├── tests/                          # tests and expected results
  ├── SpotifyClone-Non-NormalizedTable.xlsx
  ├── SpotifyClone-Non-NormalizedTable-fav-songs.xlsx
  ├── docker-compose.yml
  ├── Dockerfile
  ├── jest.config.js
  ├── package.json
  ├── package-lock.json
  └── README.md
  </code></pre>

  <h2><strong>Contact</strong></h2>
  <p>
    <strong>Willian Gonçalves</strong> |
    <a href="https://www.linkedin.com/in/williandpg/" target="_blank"><strong>LinkedIn</strong></a> |
    <a href="https://github.com/williandpg" target="_blank"><strong>GitHub</strong></a> |
    <a href="https://williandpg.github.io/" target="_blank"><strong>Portfolio</strong></a> |
    <a href="mailto:goncalves.wdp@outlook.com" target="_blank"><strong>Email</strong></a>
  </p>

  <h2><strong>Credits</strong></h2>
  <p align="justify">
    This project was developed as part of the Trybe Full Stack Web Development course, focusing on normalization, relational modeling and SQL.
  </p>
</details>