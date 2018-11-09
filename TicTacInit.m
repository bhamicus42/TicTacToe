% filename:TicTacInit 
% Purpose:
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

WhoseTurn = 1
Player = 'Player1'
GameState = zeros(3,3)

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
ResetScores = 0; %toggle variable to allow players to reset scores

%WILL BE STORED IN TITLE INIT
if ~exist('PlayerWins1') || ResetScores
    PlayerWins1 =  0;
    PlayerWins2 = 0;
    Ties = 0;
end
%///////////////////