% filename:  GameSpaceVarInit.m
% Purpose:   Initializes important gamespace variables if they have not
%            already been initialized.
% date:      11/16/18
% Authors:   Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Ben Hoffman 11/24/2018 8:39 AM

if ~exist('GameState')
    WhoseTurn = 1;
    %ensures turn is toggled until otherwise 
    if TogTurn
        WhoseTurn = -WhoseTurn;
    end
    GameState = zeros(3,3);
    
    %this is needed for a select case in ChooseNextExpert
    GameStateHistory = GameState;

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
end

% The normal ~exist('var') doesn't work, because apparently some other file
% named Mode exists, but not a variable, so ~exist('Mode') returns false
% even if no variable 'Mode' exists in workspace
if exist('Mode') ~= 1
    Mode = 1;
end

if ~exist('Player1Name')
    Player1Name = 'Player1';
end
if ~exist('Player2Name')
    Player2Name = 'Player2';
end
