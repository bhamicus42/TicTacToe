% filename:TitleInit 
% Purpose:Allows user to navigate options and begin game
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

TitleHandle = gcf;

if exist('WhoseTurn')
    WhoseTurn = -1;
end

GameState = zeros(3,3)