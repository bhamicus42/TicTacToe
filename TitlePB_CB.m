% filename:TitlePB_CB
% Purpose:Brings user back to title screen
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Emmy Nam 11/20/2018 13:45

Mode = 1;

if ~exist('TogTurn')
    TogTurn = 0;
end

IfGameDone

close
open TitleFig.fig
