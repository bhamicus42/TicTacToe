
% filename:ModesPM_CB.m
% Purpose:Allows select gameplay mode
% date: 11/6/18
% Authors: Kyle Rockwell
% Engr-6 Group Stomadoapod srjc

Mode = get(gcbo, 'value');
if length(Mode)>1
    close all
else
    if Mode>1
    set(findobj('tag','Player2Text'),'string','Enter Computer Name')
    set(findobj('tag','TogTurnRB'),'string','Computer Starts')

    else
    set(findobj('tag','Player2Text'),'string','Enter Player two Name')
    set(findobj('tag','TogTurnRB'),'string','Player two Starts')
end
end