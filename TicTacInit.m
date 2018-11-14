% filename: TicTacInit 
% Purpose:  initialize the game board as blank and player scores as blank
% for the first round
% date:     11/6/18
% Authors:  Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% 
% Engr-6 Group Stomadoapod srjc

%Because the player may choose to navigate away from the gameboard while a
%game is in progress, this if statement checks to see if the variables have
%already been set up.  If they have, then these initializations are
%skipped.

if ~exist('GameState')
    WhoseTurn = 1;
    GameState = zeros(3,3);

    PossWins = [1,2,3;
                4,5,6;
                7,8,9;
                1,4,7;
                2,5,8;
                3,6,9;
                1,5,9;
                3,5,7];

    EndGame = 0;
    CheckWins = [];
    TieBool = 0; %logical indicates if cats game
    ResetScores = 0; %toggle variable to allow players to reset scores
    
    %This creates a vector that stores the handles of each of the 9 boxes,
    %with the elements numbered 1 to 9.  This lets you access any box you
    %want at any time by using the vector to get a handle.
    
    
    
%     BoxHandles = [];
%     for BoxIndex = 1:9
%         BoxHandles(BoxIndex) = findobj('tag', ['Box', num2str(BoxIndex)]);
%     end



else
    %add something to populate squares if the player navigated away from the
    %gameboard in the middle of a game
end


%WILL BE STORED IN TITLE INIT
if ~exist('Player1Wins') || ResetScores
    PlayerWins =  [0,0];
    PlayerLosses = [0,0];
    Ties = 0;
end
%///////////////////

