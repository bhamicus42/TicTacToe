%filename: ChoseNextExpert.m

% // %New files that go along with this:
% // CornerMove
% // SideMove
% // WinBlock
% // ElimPossWins
% // FindBestMovesOpen

SideOptions = [2,4,6,8];
CornerOptions = [1, 3, 7, 9];

%PLAYER STARTS
if (TogTurn == 0) && (Mode == 4)
    CornerMove;
    SideMove;
    OppCorner = sum(PlayerTakenCorners) >= 10; %Notes if player goes in opposite corners
    OppSide = sum(PlayerTakenSides) >= 10; %Notes if player goes in opposite sides
    BestMovesOpen = []; %init BestMovesOpen
    
    if PlayerTakenCorners > 0 %PLAYER TOOK CORNER
        if (GameState(5) == 0)
            CompMoveChoice = 5; %CompMoveChoice in middle
        elseif OppCorner && (length(find(GameState)) == 3)
            CompMoveChoice = SideOptions(randi(length(SideOptions))); %prevent player from being able to force win
        else %if player in corner and middle is not open, next comp. move
            WinBlock; %Computer move if they can win or block on very next turn (CompMoveChoice within function)
            if NoWinBlock
                FindBestMovesOpen; %Comp move if win still possible (CompMoveChoice within function)
            end
        end
        
    elseif (length(PlayerTakenCorners) == 0) && (length(PlayerTakenSides) == 0) %PLAYER TOOK MIDDLE
        if (length(find(GameState)) == 1)
            CompMoveChoice = CornerOptions(randi(length(CornerOptions))); %CompMoveChoice in corner
        elseif OppCorner && (length(find(GameState)) == 3)
            CompMoveChoice = SideOptions(randi(length(SideOptions)));
        else %further along in game
            WinBlock; %Computer move if they can win or block on very next turn (CompMoveChoice within function)
            if NoWinBlock
                FindBestMovesOpen; %Comp move if win still possible (CompMoveChoice within function)
            end
        end
        
    elseif PlayerTakenSides > 0 %PLAYER TOOK SIDE
        if (GameState(5) == 0)
            CompMoveChoice = 5; %Comp move in middle
        elseif OppSide && (length(find(GameState)) == 3)
            CompMoveChoice = CornerOptions(randi(length(CornerOptions)));
        else %if player in sides and not play in opposite side/further along in game
            WinBlock; %Computer move if they can win or block on very next turn (CompMoveChoice within function)
            if NoWinBlock
                FindBestMovesOpen; %Comp move if win still possible (CompMoveChoice within function)
            end
        end
    end
    

    if GameState(CompMoveChoice) ~=0  %Last Resort: randomly choose because no option is better
        CompMoveChoice = PossibleMoves(randi(length(PossibleMoves)));
    end

end
MarkBox;


% // % Expert notes:
% // % if player starts
% // % 	if player chooses corner
% // % 		choose middle
% // % 
% // % 		after: 
% // % 		immediately use choosenextmoderate to check for wins or blocks
% // %         - but don't use for the rand part
% // % 		else
% // % 			eliminate posswins with opponent marks
% // % 			OR find and keep posswins with our marks
% // % 
% // % 		else choosenexteasy
% // % 
% // % 	if player chooses middle
% // % 		player can choose 2 corners and force win
% // % 		comp must choose 2 corners
% // %         
% // %     if player chooses side
% // % 		choose corner
% // % 
% // % if comp starts
% // % 	choose 2 corners
% // % 		prefer corners in a column/row comp already in but player not
