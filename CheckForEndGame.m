% filename:  CheckForEndGame.m
% Purpose:   Checks to see if GameState represents a win or tie.  EndGame
%            conditions are switched to true if so.
% date:      11/16/18
% Authors:   Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Emmy Nam 11/20/2018 13:45

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
    if ~TieBool
        PlayerWins(Player) = PlayerWins(Player) + 1;
        PlayerLosses(Opponent) = PlayerLosses(Opponent)+ 1;
    end
    set(findobj('tag', 'EndPB'), 'string', 'Play Again')
    set(findobj('callback', 'BoxCB'), 'enable', 'off')

    %Scoreboard W/T/L
    set(findobj('tag','P1Wins'),'string',num2str(PlayerWins(1)));
    set(findobj('tag','P2Wins'),'string',num2str(PlayerWins(2)));
    set(findobj('tag','Ties'),'string',num2str(Ties));
    set(findobj('tag','P1Losses'),'string',num2str(PlayerLosses(1)));
    set(findobj('tag','P2Losses'),'string',num2str(PlayerLosses(2)));
end
