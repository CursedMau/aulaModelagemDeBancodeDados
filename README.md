# EduManage — banco de dados para gestão escolar

Projeto de estudo em SQL que modela informações de alunos, professores, disciplinas, turmas, matrículas, notas e frequência.

O objetivo é praticar a criação de um banco relacional e as operações necessárias para consultar e manter seus dados.

## O que está implementado

- Nove tabelas com chaves primárias.
- Relacionamentos com chaves estrangeiras em horários, matrículas, notas e frequência.
- Inserção de uma pequena base de exemplo.
- Consultas com `JOIN`, `WHERE`, `ORDER BY` e `LIMIT`.
- Exemplos de `UPDATE` e `DELETE`.

## Estrutura

Os arquivos ficam na pasta [aulaModelagemDeBancodeDados](aulaModelagemDeBancodeDados).

| Arquivo | Finalidade |
| --- | --- |
| [01_create_tables.sql](aulaModelagemDeBancodeDados/01_create_tables.sql) | Criação do banco e das tabelas. |
| [02_insert_data.sql](aulaModelagemDeBancodeDados/02_insert_data.sql) | Inserção dos dados de exemplo. |
| [03_select_queries.sql](aulaModelagemDeBancodeDados/03_select_queries.sql) | Consultas de matrículas, frequência, notas, horários e contatos. |
| [04_update.sql](aulaModelagemDeBancodeDados/04_update.sql) | Exemplos de atualização. |
| [05_delete.sql](aulaModelagemDeBancodeDados/05_delete.sql) | Exemplos de exclusão. |
| [Projeto_Logico_EduManage.docx](aulaModelagemDeBancodeDados/Projeto_Logico_EduManage.docx) | Documento do projeto lógico. |

## Banco utilizado

Os scripts usam **sintaxe MySQL**, incluindo `CREATE DATABASE IF NOT EXISTS` e `USE edumanage`. Utilize um servidor MySQL e um cliente SQL, como o MySQL Workbench.

A execução em PostgreSQL exige adaptação do script. O pgAdmin é uma ferramenta para PostgreSQL e não torna essa sintaxe compatível automaticamente.

## Como executar

1. Clone ou baixe o repositório.
2. Abra uma conexão MySQL em um ambiente de estudo e verifique que o banco `edumanage` não contém dados de outro projeto.
3. Execute `01_create_tables.sql`.
4. Mantenha `edumanage` selecionado e execute `02_insert_data.sql`.
5. Execute as consultas de `03_select_queries.sql`.
6. Para estudar alterações, leia e execute separadamente os exemplos em `04_update.sql` e `05_delete.sql`.

As etapas de criação de tabelas e inserção não são idempotentes: executá-las novamente no mesmo banco já preenchido pode gerar erros de objetos ou chaves duplicadas.

## Competências demonstradas

Modelagem relacional, integridade referencial, criação de tabelas, manipulação de dados e consultas com múltiplas tabelas.

## Escopo e próximos passos

O repositório contém scripts SQL e documentação. Uma aplicação web, API e autenticação ainda não fazem parte da implementação.

Melhorias propostas: adicionar diagrama de relacionamentos, regras de validação dos dados, índices orientados às consultas e um ambiente reproduzível para execução.

Esta documentação foi conferida por leitura dos scripts. Não foi executado um servidor MySQL nesta revisão.
