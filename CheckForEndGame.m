% filename:  CheckForEndGame.m
% Purpose:   Checks to see if GameState represents a win or tie.  EndGame
%            conditions are switched to true if so.
% date:      11/16/18
% Authors:   Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc



%Checks for possible wins
for Index = 1:length(PossWins)
    CheckWins = [CheckWins, abs(sum(GameState(PossWins(Index,:))))];
end
if max(CheckWins) == 3
    EndGame = 1;
else
    CheckWins = [];
end

%checks for tie
if (sum(sum(abs(GameState)))) == 9
    Ties = Ties + 1;
    TieBool = 1;
    EndGame = 1;
end

if EndGame
    set(findobj('tag', 'EndPB'), 'string', 'Play Again')
end