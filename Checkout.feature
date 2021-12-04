            #language: pt

            Funcionalidade:Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesso a pagina checkout

            Cenário: Cadastro de dados para compra
            Quando  eu preencher corretamentos todos os campos obrigatorios (*)
            E seleciono o botão finalizar compra
            Então o sistema deve informar " Compra realizada com sucesso"

            Cenário: Email inválido
            Quando eu preencher corretamentos todos os campos obrigatorios (*)
            E preencho o campo email "juliana.ebac"
            E seleciono o botão finalizar compra
            Então o sistema deve informar " Formato de email inválido"

            Cenário: Validação de senha
            Quando eu preencher corretamentos todos os campos obrigatorios (*)
            E preencho o campo email "null"
            E preencho o campo CEP "null"
            E seleciono o botão o botão finalizar compra
            Então o sistema deve informar " Campos obrigatórios (*) não podem estar em branco"

            Esquema do Cenário:Checkout
            Quando eu preencher dados <obrigatorio>
            E seleciono o botão o botão finalizar compra
            Então deve exiber <mensagem>
            Exemplos:
            | obrigatorio | obrigatorio | obrigatorio | obrigatorio    | obrigatorio | obrigatorio | obrigatorio   | obrigatorio   | mensagem                     |
            | Juliana     | Soares      | Brasil      | Rua das flores | São Paulo   | 08536440    | (11)4569-9685 | juliana@teste | Compra realizada com sucesso |
            | Sonia       | Silva       | Brasil      | Rua Rubi       | São Paulo   | 08536441    | (11)4569-9685 | Sonia@teste   | Compra realizada com sucesso |
            | José        | Ricardo     | Brasil      | Rua MDC        | São Paulo   | 08536442    | (11)4569-9685 | jose@teste    | Compra realizada com sucesso |
            | Cesar       | Santos      | Brasil      | Rua novembro   | São Paulo   | 08536443    | (11)4569-9685 | cesar@teste   | Compra realizada com sucesso |
            | Rafael      | Soares      | Brasil      | Rua esmeralda  | São Paulo   | 08536443    | (11)4569-9685 | rafael@teste  | Compra realizada com sucesso |