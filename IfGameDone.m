%filename: IfGameDone.m
%purpose: clears board, adjusts scores, re-initializes variables
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Emmy Nam 11/20/2018 13:45

 if EndGame
    %update scores
%     if ~TieBool
%         PlayerWins(Player) = PlayerWins(Player) + 1;
%         PlayerLosses(Opponent) = PlayerLosses(Opponent)+ 1;
%     end
    
    % clearBoard and reset GameState
    set(findobj('callback', 'BoxCB'), 'string', '')
    set(findobj('callback', 'BoxCB'), 'enable', 'on')
    WhoseTurn = 1;
    %ensures turn is toggled until otherwise 
    if TogTurn
        WhoseTurn = -WhoseTurn;
    end
    GameState = zeros(3,3);
    EndGame = 0;
    TieBool = 0;
    CheckWins = []; 
    PossibleMoves = [];
end