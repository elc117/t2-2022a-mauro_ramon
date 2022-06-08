/*
    Não coloque letra maiuscula nas entradas, nem utilize acentos ou ~
*/

match(Entrada, Resposta) :- assunto(Entrada, Assunto), resposta(Assunto, Resposta).

assunto(Entrada, Assunto) :- Entrada = 'oi',                            Assunto = cumprimento.
assunto(Entrada, Assunto) :- Entrada = 'ola',                           Assunto = cumprimento.
assunto(Entrada, Assunto) :- Entrada = 'e ai',                          Assunto = cumprimento.
assunto(Entrada, Assunto) :- Entrada = 'fala ae',                       Assunto = cumprimento.

assunto(Entrada, Assunto) :- Entrada = 'tudo bem?',                     Assunto = cumprimento_pergunta.
assunto(Entrada, Assunto) :- Entrada = 'tudo bem contigo?',             Assunto = cumprimento_pergunta.
assunto(Entrada, Assunto) :- Entrada = 'tudo bem com voce?',            Assunto = cumprimento_pergunta.
assunto(Entrada, Assunto) :- Entrada = 'como vai?',                     Assunto = cumprimento_pergunta.
assunto(Entrada, Assunto) :- Entrada = 'como vai voce?',                Assunto = cumprimento_pergunta.

assunto(Entrada, Assunto) :- Entrada = 'qual eh seu nome?',             Assunto = identidade.
assunto(Entrada, Assunto) :- Entrada = 'como voce se chama?',           Assunto = identidade.
assunto(Entrada, Assunto) :- Entrada = 'me diga seu nome?',             Assunto = identidade.
assunto(Entrada, Assunto) :- Entrada = 'diga-me teu nome?',             Assunto = identidade.
assunto(Entrada, Assunto) :- Entrada = 'qual eh teu nome?',             Assunto = identidade.

assunto(Entrada, Assunto) :- Entrada = 'de onde voce eh?',              Assunto = natalidade.
assunto(Entrada, Assunto) :- Entrada = 'onde voce nasceu?',             Assunto = natalidade.
assunto(Entrada, Assunto) :- Entrada = 'de que pais voce eh?',          Assunto = natalidade.
assunto(Entrada, Assunto) :- Entrada = 'qual sua nacionaidade?',        Assunto = natalidade.
assunto(Entrada, Assunto) :- Entrada = 'em que pais voce nasceu?',      Assunto = natalidade.

assunto(Entrada, Assunto) :- Entrada = 'eu estou feliz',                Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'eu estou muito feliz',          Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'eu estou contente',             Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'eu estou muito contente',       Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'me sinto alegre',               Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'me sinto feliz',                Assunto = sentimento_bom.
assunto(Entrada, Assunto) :- Entrada = 'me sinto muito feliz',          Assunto = sentimento_bom.

assunto(Entrada, Assunto) :- Entrada = 'eu estou triste',               Assunto = sentimento_ruim.
assunto(Entrada, Assunto) :- Entrada = 'eu estou muito triste',         Assunto = sentimento_ruim.
assunto(Entrada, Assunto) :- Entrada = 'eu estou chateado',             Assunto = sentimento_ruim.
assunto(Entrada, Assunto) :- Entrada = 'eu estou muito chateado',       Assunto = sentimento_ruim.

assunto(Entrada, Assunto) :- Entrada = 'beijos',                        Assunto = beijos.
assunto(Entrada, Assunto) :- Entrada = 'bjs',                           Assunto = beijos.
assunto(Entrada, Assunto) :- Entrada = 'S2',                            Assunto = beijos.

assunto(Entrada, Assunto) :- Entrada = '[]s',                           Assunto = abracos.
assunto(Entrada, Assunto) :- Entrada = 'abracos',                       Assunto = abracos.
assunto(Entrada, Assunto) :- Entrada = 'abraco',                        Assunto = abracos.

assunto(Entrada, Assunto) :- Entrada = 'java',                          Assunto = programacao.
assunto(Entrada, Assunto) :- Entrada = 'haskell',                       Assunto = programacao.
assunto(Entrada, Assunto) :- Entrada = 'prolog',                        Assunto = programacao.
assunto(Entrada, Assunto) :- Entrada = 'python',                        Assunto = programacao.
assunto(Entrada, Assunto) :- Entrada = 'c',                             Assunto = programacao.
assunto(Entrada, Assunto) :- Entrada = 'c++',                           Assunto = programacao.

assunto(Entrada, Assunto) :- Entrada = 'andrea',                        Assunto = prof.
assunto(Entrada, Assunto) :- Entrada = 'andrea charao',                 Assunto = prof.
assunto(Entrada, Assunto) :- Entrada = 'andrea schwertner charao',      Assunto = prof.

assunto(Entrada, Assunto) :- Entrada = 'tchau',                         Assunto = tchau.

assunto(_Entrada, Assunto) :- Assunto = vazio.

resposta(Assunto, Resposta) :- Assunto = cumprimento,           Resposta = 'Ola!, acho que ja me apresentei!'.
resposta(Assunto, Resposta) :- Assunto = cumprimento_pergunta,  Resposta = 'Eu estou muito bem! Obrigado por perguntar!'.
resposta(Assunto, Resposta) :- Assunto = identidade,            Resposta = 'Meu nome eh Josnei!'.
resposta(Assunto, Resposta) :- Assunto = sentimento_bom,        Resposta = 'Fico feliz em saber que voce se sente assim!'.
resposta(Assunto, Resposta) :- Assunto = sentimento_ruim,       Resposta = 'Fico triste em saber que voce se sente assim!'.
resposta(Assunto, Resposta) :- Assunto = natalidade,            Resposta = 'Eu sou brasileiro!'.
resposta(Assunto, Resposta) :- Assunto = abracos,               Resposta = '[]s'.
resposta(Assunto, Resposta) :- Assunto = beijos,                Resposta = 'S2'.
resposta(Assunto, Resposta) :- Assunto = programacao,           Resposta = 'Eh uma linguagem de progrmacao'.
resposta(Assunto, Resposta) :- Assunto = prof,                  Resposta = 'MELHOR PROFESSORA!!!!!!!!!'.

resposta(Assunto, Resposta) :- Assunto = tchau,                 Resposta = 'Tchau! Foi muito bom falar contigo! Ate mais!'.

resposta(Assunto, Resposta) :- Assunto = vazio,                 Resposta = 'Desculpe, nao tenho resposta para isso'.