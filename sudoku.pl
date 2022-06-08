:- use_module(library(clpfd)).

sudoku(Rows) :-
    length(Rows, 9), maplist(same_length(Rows), Rows),
    append(Rows, Vs), Vs ins 1..9,
    maplist(all_different, Rows),
    transpose(Rows, Columns),
    maplist(all_different, Columns),
    Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is],
    blocks(As, Bs, Cs),
    blocks(Ds, Es, Fs),
    blocks(Gs, Hs, Is),
    append(Chunk1,       [_, _], Rows),
    append([_|Chunk2],   [_],    Rows),
    append([_,_|Chunk3], [],     Rows),
    maplist(ortho_adjacent, Chunk1, Chunk2, Chunk3),
    maplist(knights_move,   Chunk1, Chunk2, Chunk3),
    maplist(kings_move,     Chunk1, Chunk2, Chunk3).

blocks([], [], []).
blocks([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
        all_different([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
        blocks(Ns1, Ns2, Ns3).

ortho_adjacent([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
    abs(N1 - N2) #> 1, abs(N1 - N4) #> 1,
    abs(N3 - N2) #> 1, abs(N3 - N6) #> 1,
    abs(N7 - N4) #> 1, abs(N7 - N8) #> 1,
    abs(N9 - N8) #> 1, abs(N9 - N6) #> 1,
    append([N2, N3], Ns1, Z1),
    append([N5, N6], Ns2, Z2),
    append([N8, N9], Ns3, Z3),
    ortho_adjacent(Z1, Z2, Z3).
ortho_adjacent([_,_], [_,_], [_,_]).

kings_move([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
        all_different([N1, N2, N4]), all_different([N4, N7, N8]),
        all_different([N2, N3, N6]), all_different([N8, N9, N6]),
        all_different([N5, N4, N2]), all_different([N2, N5, N6]),
        all_different([N5, N6, N7]), all_different([N4, N5, N8]),
        append([N2, N3], Ns1, Z1),
        append([N5, N6], Ns2, Z2),
        append([N8, N9], Ns3, Z3),
        kings_move(Z1, Z2, Z3).
kings_move([_,_], [_,_], [_,_]).

knights_move([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
    N1 #\= N6, N1 #\= N8,
    N3 #\= N8, N3 #\= N4,
    N7 #\= N2, N7 #\= N6,
    N9 #\= N4, N9 #\= N2,
    append([N2, N3], Ns1, Z1),
    append([N5, N6], Ns2, Z2),
    append([N8, N9], Ns3, Z3),
    knights_move(Z1, Z2, Z3).
knights_move([_,_], [_,_], [_,_]).

problem(1, [[_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,1,_,_,_,_,_,_],
            [_,_,_,_,_,_,2,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_]]).

problem(2, [[_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,4,_,_,_,_],
            [_,_,3,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,_,_,_,_]]).