%filename: FindBestMovesOpen.m
%purpose: optimizes best move from array of possible moves
%name: Emmy Nam

NoWinBlock = false; %re-initialize to prep for next turn
ElimPossWins;

if ~isempty(FinalPossWins) %Chooses next best option
    FinalPossWins = FinalPossWins(find(FinalPossWins)); %un-matrix it
    for NumMoves = 1:length(PossibleMoves) %THIS DOES NOT WORK (RETURNS POSSIBLE MOVES)
        Index = find(PossibleMoves(NumMoves)==FinalPossWins);
        if Index
            BestMovesOpen = [BestMovesOpen, FinalPossWins(Index)];
        end
    end
    if length(BestMovesOpen) > 0
        CompMoveChoice = BestMovesOpen(randi(length(BestMovesOpen))); %random among best options
    end
end 