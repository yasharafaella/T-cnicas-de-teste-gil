            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesso a página de configurar Produto

            Cenário: Escolher Produto
            Quando eu escolho uma blusa na loja
            E seleciono a cor Rosa
            E seleciono o tamanho M
            E seleciono a quantidade 10
            Então o produto pode ser inserido com sucesso no carrinho

            Cenário: Validação do campo cor
            Quando eu escolho uma blusa na loja
            E deixo a opção cor vazia
            E seleciono o tamanho M
            E seleciono a quantidade 10
            Então deve exibir a mensagem de alerta "A opção cor é obrigatoria"

            Cenário: validação do campo tamanho
            Quando eu escolho uma blusa na loja
            E seleciono a cor Rosa
            E deixo a opção tamanho vazia
            E seleciono a quantidade 10
            Então deve exibir a mensagem de alerta "A opção tamanho é obrigatoria"

            Cenário: Validação quantidade de itens no carrinho
            Quando eu escolho uma blusa na loja
            E seleciono a cor Rosa
            E seleciono o tamanho M
            E seleciono a quantidade 11
            Então deve exibir a mensagem de alerta " Somente é permitido 10 produtos por venda"


            Quando eu escolho <produto>
            E seleciono <cor>
            E seleciono <tamanho>
            E seleciono <quantidade>
            Então deve exiber <mensagem> de inserido no carrinho

            Exemplos:
            | protudo | cor     | tamanho | quantidde | mensagem                         |
            | Blusa   | amarelo | M       | 05        | inserido com sucesso no carrinho |
            | Blusa   | rosa    | XG      | 10        | inserido com sucesso no carrinho |
            | Blusa   | azul    | p       | 07        | inserido com sucesso no carrinho |
            | Blusa   | verde   | G       | 02        | inserido com sucesso no carrinho |