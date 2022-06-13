:- include(chat_database).

start_chat:-
    write('Olá! Eu sou o chatbot!'), nl,
    repeat, nl,
    read(Entrada),
    match_search(Entrada, Resposta),
    write(Resposta), nl,
    fim(Entrada).

fim(Entrada) :- Entrada = ('tchau').

match_search(Entrada, Resposta) :- match(Entrada, Resposta), !.