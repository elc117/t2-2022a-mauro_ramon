## Trabalho 2 de Paradigmas da Computação
### Prolog

## Professora: Andrea Schwertner Charão
## Alunos: Mauro Trevisan e Ramon Godoy

# ChatBot:

* A primeira parte do nosso trabalho consiste num chatbot capaz de analisar mensagens e decodificá-las como um certo padrão a fim de gerar respostas padronizadas para diferentes orações que estão contidas no arquivo chat_database.pl
* Para dar início ao bate-papo deve-se utilizar:
  * No Windows: A ferramenta swi-prolog, clicar em file, clicar em consult e selecionar o arquivo chat_bot.pl. 
  * Linux ou MAC: A ferramenta de CLI swipl, inciar com <$ swipl> e então carregar o arquivo <?- [ chat_bot ].>.
  * Também é possível utilizar o programa no SWI-SH para navegador.
* Logo em seguida digite: 
    
    start_chat. 
    
* Por fim, para sair do programa escreva: 

    'tchau'.

* OBS: TODAS as frases devem ser feitas com aspas simples: 'exemplo', 'ola', 'qual eh seu nome?'
* Limitar-se ao uso de caracteres presentes na tabela ASCII, não usar: acentos, '~', 'ç', etc.  

# Sudoku:

* A segunda parte consiste numa versão mais complexa do jogo Sudoku. A partir de um exemplo dado em aula, 
foi buscada uma versão mais complexa do mesmo, que resolve o chamado "Miracle Sudoku", o qual incrementa a dificuldade
do já complexo Sudoku original com restrições adicionais.
* Para utilizar, carrege o arquivo no swipl ou swi-prolog GUI, e faça a consulta:

    problem(1, Rows), sudoku(Rows), maplist(label, Rows), maplist(portray_clause, Rows). 

   * ou

    problem(2, Rows), sudoku(Rows), maplist(label, Rows), maplist(portray_clause, Rows).

# Atividades propostas:
* Aumentar a *database* do josnei, seguindo o padrão contido no arquivo *chat_database.pl*.
* Procurar outros exemplos de "Miracle Sudoku" e criar novos problemas, seguindo o padrão do arquivo *sudoku.pl*.

## Referências:
* Chat Bot:
###
    https://www.youtube.com/watch?v=RS6j-xk_DqU - projeto de Fernando Cesar Ramos, estudante de CC
###
    https://swish.swi-prolog.org/example/eliza.pl - chatbot Elysa  
###
* Sudoku:
###
    https://www.swi-prolog.org/pldoc/man?section=clpfd-sudoku
###
    https://benjamincongdon.me/blog/2020/05/23/Solving-the-Miracle-Sudoku-in-Prolog/
###