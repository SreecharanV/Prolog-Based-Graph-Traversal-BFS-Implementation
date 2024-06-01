% Define graph representation
edge(a, [b, c]).
edge(b, [a, d, e]).
edge(c, [a, f]).
edge(d, [b]).
edge(e, [b]).
edge(f, [c]).

% Breadth-First Search (BFS) Algorithm
bfs(Start, Goal, Path) :-
    bfs_helper([[Start]], Goal, Path).

bfs_helper([[Goal|Visited]|_], Goal, [Goal|Visited]).
bfs_helper([Path|Paths], Goal, FinalPath) :-
    extend(Path, NewPaths),
    append(Paths, NewPaths, Paths1),
    bfs_helper(Paths1, Goal, FinalPath).

extend([Node|Path], NewPaths) :-
    findall([NewNode, Node|Path],
            (edge(Node, Neighbors), member(NewNode, Neighbors), \+ member(NewNode, Path)),
            NewPaths).
% Predicate to find path between nodes using BFS
find_path(Start, Goal, Path) :-
    (   connected(Start, Goal) ->  % Check if nodes are connected
        bfs(Start, Goal, Path),
        reverse(Path, ReversedPath),
        format('Path found using BFS: ~w~n', [ReversedPath])
    ;   format('Nodes ~w and ~w are not connected.~n', [Start, Goal])
    ).

% Predicate to check if two nodes are connected
connected(Start, Goal) :-
    bfs(Start, Goal, _).

% Predicate to run the test cases and print the results
test :-
    find_path(a, f, _),
    find_path(a, b, _),
    find_path(c, d, _),
    find_path(b, f, _),
    find_path(e, a, _),
    find_path(d, c, _),
    find_path(b, a, _),
    find_path(a, z, _),
    find_path(a, g, _),
    halt.

:- initialization(test, main).
