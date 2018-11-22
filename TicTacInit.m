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

GameSpaceVarInit
GamePopulate

% Scoreboard Names/ Symbols
set(findobj('tag','Player1Text'),'string',Player1Name);
set(findobj('tag','Player2Text'),'string',Player2Name);
set(findobj('tag', 'P1Symbol'),'string', 'X');
set(findobj('tag', 'P2Symbol'),'string', 'O');
