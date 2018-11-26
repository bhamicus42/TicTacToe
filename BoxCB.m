% filename:BoxCB
% Purpose:toggles image on box to show player’s current move
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

BoxTag = (get(gcbo, 'tag'));
BoxNum = str2num(BoxTag(end));

%Everything inside this if statement only executes if the box isn't
%already occupied
if GameState(BoxNum) == 0
    SetPlayerData

    %gets the current box and sets its string to the right symbol
    GameState(BoxNum) = WhoseTurn;
    set(gcbo, 'string', PlayerSymbol);

    CheckForEndGame

    %COMPUTER TURN
    WhoseTurn = -WhoseTurn; %1 or -1 to indicate player turn init in TicTacInit

    CompMove

end
