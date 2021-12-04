            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de dois número
            Quando eu somar < valor 1> + < valor 2>
            Então o resultado da soma deve ser <resultado>

            Exemplos:
            | valor 1 | valor 2 | resultado |
            | 10      | 20      | 30        |
            | 20      | 30      | 50        |
            | 30      | 40      | 70        |

