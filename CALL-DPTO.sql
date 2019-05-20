-- Teste de procedures de livro

-- Inserir
call inserirDPTO(123,'Limpeza', 'quadra A-12');

-- Buscar todos
call buscarDPTO();


-- Atualizar
call atualizarDPTO(560, 'TI', 'quadra A-12');

-- Excluir
call excluirDPTO(123);

select*from projeto;