% filename:  GamePopulate.m
% Purpose:   Populates game board and (SCORES?) if player leaves to help, main menu, or credits
% date:      11/19/2018
% Authors:   Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Emmy Nam 11/19/2018 15:25


if exist('GameState')
    for BoxIndex = 1:9
        if GameState(BoxIndex) == 1
            set(findobj('tag', ['Box', num2str(BoxIndex)]), 'string', 'X')
        elseif GameState(BoxIndex) == -1
            set(findobj('tag', ['Box', num2str(BoxIndex)]), 'string', 'O')
        else 
            set(findobj('tag', ['Box', num2str(BoxIndex)]), 'string', '')
        end
    end
    CheckWins = [];
end
