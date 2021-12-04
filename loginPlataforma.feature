#language: pt

Funcionalidade:Login Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesso a pagina minha conta EBAC-SHOP

Cenário: Acessar tela de checkout
Quando eu digitar o usuário "juliana.silva@ebac.com"
E a senha "mudar@123"
Então deve direcionar o cliente para tela de checkout

Cenário: Validação de usuario
Quando eu digitar o usuário "juliana@.com"
E a senha "mudar@123"
Então deve exibir a mensagem de alerta " Usuário ou senha inválidos”"

Cenário: Validação de senha
Quando eu digitar o usuário "juliana.silva@ebac.com"
E a senha "0000"
Então deve exibir a mensagem de alerta " Usuário ou senha inválidos”"
