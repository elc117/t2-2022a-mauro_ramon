:- include(chat_database).

start_chat:-
    format('Olá! Eu sou o chatbot!'), nl,
    repeat, nl,
    read(Entrada),
    match_search(Entrada, Resposta),
    format(Resposta), nl,
    fim(Entrada).

fim(Entrada) :- Entrada = ('tchau').

match_search(Entrada, Resposta) :- match(Entrada, Resposta), !.