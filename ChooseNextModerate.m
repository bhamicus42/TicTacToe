% filename:  ChooseNextModerate
% purpose:   If a move is available that will win the game, that box is
%            marked.  If there is no such move but there is a move that
%            will block a win, that box is marked.  If neither move is
%            possible, a random box is chosen.
% date:      11/19/18
% authors:   Ben Hoffman

WinPossible = false;
BlockPossible = false;

for Index = 1:length(PossWins)
    if sum(GameState(PossWins(Index,:))) == 2*WhoseTurn
        WinPossible = true;
    end 
    
    if sum(GameState(PossWins(Index,:))) == 2*(-WhoseTurn)
        BlockPossible = true;
    end
end

if (WinPossible == true)
    CompChoiceRow = find(sum(GameState(PossWins),2) == 2*WhoseTurn, 1);
    CompChoiceColumn = find(~GameState(PossWins(CompChoiceRow,:)));
    CompMoveChoice = PossWins(CompChoiceRow,CompChoiceColumn);
    MarkBox
elseif BlockPossible == true
    CompChoiceRow = find(sum(GameState(PossWins),2) == 2*(-WhoseTurn), 1);
    CompChoiceColumn = find(~GameState(PossWins(CompChoiceRow,:)));
    CompMoveChoice = PossWins(CompChoiceRow,CompChoiceColumn);
    MarkBox
else
    ChooseNextEasy
end

%bad practice, fix later
clear WinPossible BlockPossible