#language: pt
#utf-8

Funcionalidade: Manter empregado
	Eu como administrador do site
	Quero gerir os funcionarios do site
	Para manter as informações atualizadas

Cenário: Cadastrar novo usuário
	Dado que esteja na pagina principal do site ORANGEHRM
	Quando realizar login com usuário e senha
	E clicar no botão Login
	E na tela exibida clicar no menu PIM
	E clicar no link Add Employee
	E Preencher os campos obrigatórios (Marcados com *)
	E clicar no botão Save
	Então será exibido o cadastro do funcionário e após alguns segundo será feito o logout do sistema


Cenário: Editar empregado
	Dado que esteja na pagina inicial do site ORANGEHRM
	Quando  efetuar o login usando usuário e senha
	E clicar no botão login
	E na tela que foi exibida clicar no menu PIM
	E clicar no botão Employee List
	E preencher o campo Employee Name com o nome do funcionário cadastrado
	E clicar no botão Search
	E clicar no registro do empregado
	E clicar no botão Edit
	E preencher o campo Middle Name
	E clicar no botão Salvar
	Então será exibido o cadastro atualizado

	