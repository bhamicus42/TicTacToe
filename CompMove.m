% filename:  CompMove.m
% Purpose:   This script causes the computer to choose the next move based
%            on the difficulty setting.
% date:      11/23/18
% Authors:   Ben Hoffman
% Engr-6 Group Stomadoapod srjc

% last edited by Ben Hoffman 11/23/2018 9:31 AM

if (Mode > 1) & (EndGame ~= 1)
        SetPlayerData
        PossibleMoves = find(~GameState);

        switch Mode
            case 2
                ChooseNextEasy
            case 3
                ChooseNextModerate
            case 4
                ChooseNextExpert
        end
        
        WhoseTurn = -WhoseTurn;
        CheckForEndGame
    end
