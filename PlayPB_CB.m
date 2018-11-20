% filename:PlayPB_CB 
% Purpose:Allows user to begin game
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

%last edited by Ben 11/14/18 1:20 PM

close
open TicTacGame.fig

[TetrisSoundData, TetrisSound]= audioread('Tetris.ogg');
TetrisObject= audioplayer(TetrisSoundData, TetrisSound);
play (TetrisObject);
