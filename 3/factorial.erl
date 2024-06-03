-module(factorial).
-export([factorial/1, factorial_tail/1]).

% Versión recursiva normal
factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N-1).

% Versión recursiva de cola
factorial_tail(N) -> factorial_tail(N, 1).

factorial_tail(0, Acc) -> Acc;
factorial_tail(N, Acc) when N > 0 -> factorial_tail(N-1, N*Acc).
