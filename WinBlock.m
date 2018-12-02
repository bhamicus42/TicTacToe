%filename: WinBlock.m
%purpose: checks if the computer can win or block on the next move
%Note: copied from ChooseNextModerate.m (but exludes the rand. pick if no
%blocks or wins)

%author: Emmy Nam

WinPossible = false;
BlockPossible = false;
NoWinBlock = false;

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
elseif BlockPossible == true
    CompChoiceRow = find(sum(GameState(PossWins),2) == 2*(-WhoseTurn), 1);
    CompChoiceColumn = find(~GameState(PossWins(CompChoiceRow,:)));
    CompMoveChoice = PossWins(CompChoiceRow,CompChoiceColumn);
else
    NoWinBlock = true;
end

%bad practice, fix later
clear WinPossible BlockPossible