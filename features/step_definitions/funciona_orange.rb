
# Cenário: Cadastrar novo usuário
Dado(/^que esteja na pagina principal do site ORANGEHRM$/) do
  visit 'https://enterprise-demo.orangehrmlive.com/'
end

Quando(/^realizar login com usuário e senha$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')

end

Quando(/^clicar no botão Login$/) do
  find(:id, 'btnLogin').click

end

Quando(/^na tela exibida clicar no menu PIM$/) do
  find(:id, 'menu_pim_viewPimModule').click
end

Quando(/^clicar no link Add Employee$/) do
 find(:id, 'menu_pim_addEmployee').click
end

Quando(/^Preencher os campos obrigatórios \(Marcados com \*\)$/) do
  fill_in('firstName', :with => 'Cebolinha')
  fill_in('lastName', :with => 'CC')
  select('Canadian Development Center', :from => 'location')
 

end

Quando(/^clicar no botão Save$/) do
  find(:id, 'btnSave').click
 


end

Então(/^será exibido o cadastro do funcionário e após alguns segundo será feito o logout do sistema$/) do
 find(:id, 'welcome').click
 click_link('Logout')
 
end


#Cenário: Editar empregado

Dado(/^que esteja na pagina inicial do site ORANGEHRM$/) do
 visit 'https://enterprise-demo.orangehrmlive.com/'
end

Quando(/^efetuar o login usando usuário e senha$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')

end

Quando(/^clicar no botão login$/) do
  find(:id, 'btnLogin').click

  
end

Quando(/^na tela que foi exibida clicar no menu PIM$/) do
  find(:id, 'menu_pim_viewPimModule').click

  
end

Quando(/^clicar no botão Employee List$/) do
  find(:id, 'menu_pim_viewEmployeeList').click

  
end

Quando(/^preencher o campo Employee Name com o nome do funcionário cadastrado$/) do
 fill_in('empsearch_id', :with => '0098')
 
 
end

Quando(/^clicar no botão Search$/) do
  find(:id, 'searchBtn').click



end

Quando(/^clicar no registro do empregado$/) do
  click_link('0098')
 
end

Quando(/^clicar no botão Edit$/) do
  find(:id, 'btnSave').click
 
end

Quando(/^preencher o campo Middle Name$/) do
  fill_in('personal[txtEmpMiddleName]', :with => 'Cascão')

end

Quando(/^clicar no botão Salvar$/) do
  find(:id, 'btnSave').click

end

Então(/^será exibido o cadastro atualizado$/) do
  sleep 10
end