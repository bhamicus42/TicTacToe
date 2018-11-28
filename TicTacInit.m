% filename: TicTacInit 
% Purpose:  initialize the game board as blank and player scores as blank
% for the first round
% date:     11/6/18
% Authors:  Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
%
% Engr-6 Group Stomadoapod srjc

GameSpaceVarInit
GamePopulate

% Scoreboard Names/ Symbols
set(findobj('tag','Player1Text'),'string',Player1Name);
set(findobj('tag','Player2Text'),'string',Player2Name);
set(findobj('tag', 'P1Symbol'),'string', 'X');
set(findobj('tag', 'P2Symbol'),'string', 'O');

%If player2/comp goes first, this executes.
if TogTurn  
    CompMove
    if Mode<2
       set(findobj('tag','Player2Text'),'BackgroundColor',[1 1 0]);
         set(findobj('tag','Player1Text'),'BackgroundColor',[0.94 0.94 0.94]);
    end
else
    if Mode<2
       set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
           set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
    end
        
end
