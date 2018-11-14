% filename:TitleInit 
% Purpose:Allows user to navigate options and begin game
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

TitleHandle = gcf;

if ~exist('GameState')
    WhoseTurn = 1;
    GameState = zeros(3,3);

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


%If player score data doesn't already exist, the variables are initialized 
if ~exist('Player1Wins') || ResetScores
    PlayerWins =  [0,0];
    PlayerLosses = [0,0];
    Ties = 0;
end