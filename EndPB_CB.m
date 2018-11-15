% filename:EndPB_CB
% Purpose:Locks in the current player’s move and switches to the next
%         player’s turn     
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

set(findobj('tag', 'EndPB'), 'string', 'End Turn')

if EndGame
    EndGame = 0;
    %update scores
    if ~TieBool
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
end



