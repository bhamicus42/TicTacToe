% filename:Player1EB_CB.m
% Purpose:Allows user to enter name of player 1
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc
   PlayerWins=[0,0];
 Ties= 0;
 PlayerLosses =[0,0];
    Player1Name=get(findobj('tag','Player1EB'),'string');
    set(findobj('tag','Player1EB'),'string','')
