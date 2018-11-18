% filename:TitleInit 
% Purpose:Allows user to navigate options and begin game
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

TitleHandle = gcf;

GameSpaceVarInit

%If player score data doesn't already exist, the variables are initialized 
if ~exist('Player1Wins') || ResetScores
    PlayerWins =  [0,0];
    PlayerLosses = [0,0];
    Ties = 0;
end