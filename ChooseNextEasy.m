% filename: ChooseNextEasy.m
% purpose:  Chooses an available box at random and marks it
% date:     11/6/18
% authors:  Ben Hoffman
% 
% Engr-6 Group Stomadoapod srjc

% generate random int from 1 to length of PossibleMoves\
% chosen move is PossibleMoves(rand)

CompMoveChoice = PossibleMoves(randi(length(PossibleMoves)));
% set(findobj('tag', ['Box', num2str(CompMoveChoice)]), 'string', PlayerSymbol)
% GameState(CompMoveChoice) = WhoseTurn;
MarkBox