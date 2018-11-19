
% filename:ModesPM_CB.m
% Purpose:Allows select gameplay mode
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

%forces players to start new game if mode is changed
%Note: to ensure mode is correct if navigate to main menu, reset mode=1 in TitlePB_CB.m
%when go to title screen because human v. human is auto filled by PM 
if Mode ~= get(gcbo, 'value')
    clear GameState
    GameSpaceVarInit
end

Mode = get(gcbo, 'value');
if length(Mode)>1
    close all
else
    if Mode>1
    set(findobj('tag','Player2Text'),'string','Enter Computer Name')
    set(findobj('tag','TogTurnRB'),'string','Computer Starts')

    else
    set(findobj('tag','Player2Text'),'string','Enter Player 2 Name')
    set(findobj('tag','TogTurnRB'),'string','Player 2 Starts')
end
end
