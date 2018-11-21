% filename:TogTurnPB_CB
% Purpose:Allows user to toggle which player goes first
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc


% last edited by Emmy Nam 11/21/2018 14:20

TogTurn = get(gcbo,'Value');

if ~exist('GameState')
    GameSpaceVarInit
% elseif TogTurn
%     WhoseTurn = -WhoseTurn
% elseif ~TogTurn
%     WhoseTurn = 1
end
%WhoseTurn = -WhoseTurn;

WhoseTurn = -WhoseTurn
