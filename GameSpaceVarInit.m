% filename:  GameSpaceVarInit.m
% Purpose:   Initializes important gamespace variables if they have not
%            already been initialized.
% date:      11/16/18
% Authors:   Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc


if ~exist('GameState')
    WhoseTurn = 1;
    GameState = zeros(3,3);
    Mode = 1;

    PossWins = [1,2,3;
                4,5,6;
                7,8,9;
                1,4,7;
                2,5,8;
                3,6,9;
                1,5,9;
                3,5,7];

    EndGame = 0;
    CheckWins = [];
    TieBool = 0; %logical indicates if cats game
    ResetScores = 0; %toggle variable to allow players to reset scores
else
    %add something to populate squares if the player navigated away from the
    %gameboard in the middle of a game
end

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


    
    
    
