% filename: SetPlayerData.m
% purpose:  Sets the Player, Opponent, and PlayerSymbol variables depending
%           on WhoseTurn.
% date:     11/15/18
% authors:  Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% 
% Engr-6 Group Stomadoapod srjc

if WhoseTurn > 0
    Player = 1;
    Opponent = 2;
    PlayerSymbol = 'X';
elseif WhoseTurn < 0
    Player = 2;
    Opponent = 1;
    PlayerSymbol = 'O';
end