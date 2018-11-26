% filename:TogTurnPB_CB
% Purpose:Allows user to toggle which player goes first
% date: 11/6/18
% Authors: Emmy Nam
% Engr-6 Group Stomadoapod srjc

% last edited by Ben Hoffman 11/23/18 9:24 AM

clear GameState,

TogTurn = get(gcbo,'Value');

if ~exist('GameState')
    GameSpaceVarInit
% elseif TogTurn
%     WhoseTurn = -WhoseTurn
% elseif ~TogTurn
%     WhoseTurn = 1
end

% WhoseTurn = -WhoseTurn;
