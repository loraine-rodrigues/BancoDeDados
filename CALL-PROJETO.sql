-- Teste de procedures de livro

-- Inserir
call inserirProjeto(123456789,'projeto', 'tipo', 'verba',1234567809);

-- Buscar todos
call buscarProjeto();


-- Atualizar
call atualizarProjeto(12, 'TESTE', 'parcial- 2 anos', '7 bolsas integrais',1234567809 );

-- Excluir
call excluirProjeto(12);

select*from projeto;