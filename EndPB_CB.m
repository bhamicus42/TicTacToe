% filename:EndPB_CB
% Purpose:Locks in the current player’s move and switches to the next
%         player’s turn
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% last edited by Emmy Nam 11/20/2018 13:45

set(findobj('tag', 'EndPB'), 'string', 'End Turn') 
IfGameDone
