# Trabalho 2 de Paradigmas da Computação
## Prolog

### Professora: Andrea Schwertner Charão
### Alunos: Mauro Trevisan e Ramon Godoy

# ChatBot:

* A primeira parte do nosso trabalho consiste num chatbot capaz de analisar mensagens e decodificá-las como um certo padrão a fim de gerar respostas padronizadas para diferentes orações que estão contidas no arquivo chat_database.pl
* Para dar início ao bate-papo deve-se utilizar a ferramenta swi-prolog, clicar em file, clicar em consult e selecionar o arquivo chat_bot.pl. Logo em seguida digite: 
##    
    start_chat. 
##   
* Por fim, para sair do programa escreva: 
##
    'tchau'.
##
* OBS: TODAS as frases devem ser feitas com aspas simples: 'exemplo', 'ola', 'qual eh seu nome?'
* Limitar-se ao uso de caracteres presentes na tabela ASCII, não usar: acentos, '~', 'ç', etc.  

# Sudoku:

* A segunda parte consiste numa versão mais complexa do jogo Sudoku. A partir de um exemplo dado em aula, 
foi buscada uma versão mais complexa do mesmo, que resolve o chamado "Miracle Sudoku", o qual incrementa a dificuldade
do já complexo Sudoku original com restrições adicionais.
* Para utilizar, carrege o arquivo no swipl ou swi-prolog GUI, e faça a consulta:
##
    problem(1, Rows), sudoku(Rows), maplist(label, Rows), maplist(portray_clause, Rows). 
##
   * ou
##
    problem(2, Rows), sudoku(Rows), maplist(label, Rows), maplist(portray_clause, Rows).
##

## Atividades propostas:
* Faça você mesmo!
    Experimente aumentar a *database* do Josnei!! Seguindo o padrão e as observações no arquivo *chat_database.pl* crie 
novos padrões de assuntos e respostas para o chat_bot responder.
* Pesquise outros exemplos de "Miracle Sudoku" e, seguindo o padrão de problemas no arquivo *sudoku.pl*, crie e teste outros problemas para o resolvedor de sudoku miraculoso.

## Referências:
### Chat Bot:
    https://www.youtube.com/watch?v=RS6j-xk_DqU 
##  
    https://swish.swi-prolog.org/example/eliza.pl  
## 

### Sudoku:
    https://www.swi-prolog.org/pldoc/man?section=clpfd-sudoku
## 
    https://benjamincongdon.me/blog/2020/05/23/Solving-the-Miracle-Sudoku-in-Prolog/
