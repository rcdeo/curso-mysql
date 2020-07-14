/*

REQUISITOS PARA CONEXÃO COM O BANCO DE DADOS:
- ip do servidor (hostname);
- porta;
- usuário;
- senha.

Obs.: 
- Evitar acentuação em nome de bancos e tabelas.
- Ctrl + Eneter (executa a linha do cursor).

*/

CREATE DATABASE banco;
USE banco;

CREATE DATABASE banco2;
USE banco2;
USE banco; /* para excluir um banco, deve sair dele antes */
DROP DATABASE banco2;