%filename: GameOverPB.m
%purpose: clears GameOverPB announcement, updates scores, and clears board
% date: 11/12/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

set(findobj('tag', 'GameOverPB'), 'Visible', 'off')
set(findobj('tag', 'GameOverPB'), 'Enable', 'off')
EndGame = 0;

%update scores
if ~Tie
    PlayerWins(Player) = PlayerWins(Player) + 1
    PlayerLosses(Opponent) = PlayerLosses(Opponent)+ 1;
end
% clearBoard and reset GameState
set(findobj('callback', 'BoxCB'), 'string', '')
WhoseTurn = 1;
GameState = zeros(3,3);
EndGame = 0;
TieBool = 0;
CheckWins = [];


