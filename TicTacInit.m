% filename: TicTacInit 
% Purpose:  initialize the game board as blank and player scores as blank
% for the first round
% date:     11/6/18
% Authors:  Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% 
% Engr-6 Group Stomadoapod srjc

%Because the player may choose to navigate away from the gameboard while a
%game is in progress, this if statement checks to see if the variables have
%already been set up.  If they have, then these initializations are
%skipped.

%populates game board if player leaves to help, main menu, or credits
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


