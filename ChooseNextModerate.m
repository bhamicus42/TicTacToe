% filename:  ChooseNextModerate

% check along all possible win directions, if sum is 2 then the box with GameState = 0 is comp choice
%     PossWins = [1,2,3;
%                 4,5,6;
%                 7,8,9;
%                 1,4,7;
%                 2,5,8;
%                 3,6,9;
%                 1,5,9;
%                 3,5,7];

%these bools keeps track of whether or not the computer can make a winning
%move and whether the computer can make a blocking move.
WinPossible = false;
BlockPossible = false;

for Index = 1:length(PossWins)
    if sum(GameState(PossWins(Index,:))) == 2*WhoseTurn
%         disp(['Posswins(Index,:) is ', num2str(PossWins(Index,:))])
%         PossWins(Index,:)
%         TempPossMvs = GameState == 0
        
        %screen set to echo here as temporary measure
%         CompChoice = find(GameState(PossWins(Index,:)) == 0)
%         CompChoice = (GameState == 0 & GameState(PossWins(Index,:)))
%         CompChoice = GameState(GameState == 0 & PossWins(Index,:))
        WinPossible = true
    end 
    
    if sum(GameState(PossWins(Index,:))) == 2*(-WhoseTurn)
        BlockPossible = true
    end
end



% and also if CompChoice is in PossibleMoves
if (WinPossible == true)
    %temporary debug message
%     disp(['Winning or blocking moves available.  CompChoice is ', num2str(CompChoice)])
%     CompChoiceRow = find(sum(GameState(PossWins)) == 2*WhoseTurn, 1);
    CompChoiceRow = find(sum(GameState(PossWins),2) == 2*WhoseTurn, 1)
    CompChoiceColumn = find(~GameState(PossWins(CompChoiceRow,:)))
    CompMoveChoice = PossWins(CompChoiceRow,CompChoiceColumn)
    MarkBox
elseif BlockPossible == true
%     CompChoiceRow = find(sum(GameState(PossWins)) == 2*(-WhoseTurn), 1);
    CompChoiceRow = find(sum(GameState(PossWins),2) == 2*(-WhoseTurn), 1)
    CompChoiceColumn = find(~GameState(PossWins(CompChoiceRow,:)))
    CompMoveChoice = PossWins(CompChoiceRow,CompChoiceColumn)
    MarkBox
else
    %temporary debug message
    disp('No winning or blocking moves available.  Calling ChooseNextEasy.')
    ChooseNextEasy
end

%bad practice, fix later
clear WinPossible BlockPossible

