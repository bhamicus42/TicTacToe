% filename:  MarkBox.m
% purpose:   Called by the ChooseNext scripts, which are used by the
%            computer to choose the computer's next move.  This script
%            marks the box that the computer selected.
% date:      11/6/18
% authors:   Ben Hoffman
% 
% Engr-6 Group Stomadoapod srjc

set(findobj('tag', ['Box', num2str(CompMoveChoice)]), 'string', PlayerSymbol)
GameState(CompMoveChoice) = WhoseTurn;