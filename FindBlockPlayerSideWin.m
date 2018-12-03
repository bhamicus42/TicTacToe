%filename: FindBlockPlayerSideWin.m
%purpose: find move that stops player from forcing win when they start on
%side and have a corner
%author: Emmy Nam

if sum(GameState([2, 7])) == 2 || sum(GameState([3, 4])) == 2
    CompMoveChoice = 1;
elseif sum(GameState([2, 9])) == 2 || sum(GameState([1, 6])) == 2
    CompMoveChoice = 3;
elseif sum(GameState([1, 8])) == 2 || sum(GameState([4, 9])) == 2
     CompMoveChoice = 7;
elseif sum(GameState([3, 8])) == 2 || sum(GameState([6, 7])) == 2
     CompMoveChoice = 9;
end    