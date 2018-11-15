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

    %Checks for possible wins
    for Index = 1:length(PossWins)
        CheckWins = [CheckWins, abs(sum(GameState(PossWins(Index,:))))];
    end

    if max(CheckWins) == 3
        EndGame = 1;
    else
        CheckWins = [];
    end

    %checks for tie
    if (sum(sum(abs(GameState)))) == 9
        Ties = Ties + 1;
        TieBool = 1;
        EndGame = 1;
    end
 
    if EndGame
        set(findobj('tag', 'EndPB'), 'string', 'Play Again')
    end

    %COMPUTER TURN
    WhoseTurn = -WhoseTurn; %1 or -1 to indicated player turn init in TicTacInit
    
    if Mode > 1
    SetPlayerData
    PossibleMoves = find(~GameState);

    switch Mode
        case 2
            ChooseNextEasy
        case 3
%             ChooseNextModerate
        case 4
%             ChooseNextExpert
        end
    end
    
    WhoseTurn = -WhoseTurn;
end
