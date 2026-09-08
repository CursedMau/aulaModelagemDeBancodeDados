# Sistema de Gestão Escolar — EduManage

Projeto de estudo com criação e manipulação de dados em SQL.

Esta pasta contém criação de tabelas, inserção de dados, consultas, atualizações, exclusões e o documento do projeto lógico.

## Como usar

1. Clone ou baixe o repositório.
2. Abra uma conexão com um servidor MySQL em um ambiente de estudo.
3. Execute `01_create_tables.sql` e mantenha o banco `edumanage` selecionado.
4. Execute `02_insert_data.sql` e consulte os exemplos em `03_select_queries.sql`.
5. Leia os efeitos de `04_update.sql` e `05_delete.sql` antes de executá-los na base de exemplo.

Os comandos `CREATE DATABASE IF NOT EXISTS` e `USE` seguem a sintaxe MySQL. Para usar PostgreSQL/pgAdmin, é necessário adaptar o script.

Os scripts de criação de tabelas e inserção devem ser usados inicialmente em um banco novo; sua repetição pode gerar erros de objetos ou chaves duplicadas.

[Leia a apresentação completa do projeto](../README.md).
