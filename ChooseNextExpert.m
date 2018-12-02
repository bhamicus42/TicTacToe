%filename: ChoseNextExpert.m

% // %New files that go along with this:
% // CornerMove
% // SideMove
% // WinBlock
% // ElimPossWins
% // FindBestMovesOpen

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

        
if (TogTurn == 0) && (Mode == 4) %Player starts
    CornerMove;
    if PlayerTakenCorners > 0 %player has at least one piece in corner
        if (GameState(5) == 0)
            CompMoveChoice = 5; %Comp move in middle
        OppCorner = sum(PlayerTakenCorners) >= 10 %Notes if player goes in opposite corners
        elseif OppCorner && (length(find(GameState)) == 3)
            SideOptions = [2,4,6,8]
            CompMoveChoice = SideOptions(randi(length(SideOptions)))
        else %if playter in corner and middle is not open
            WinBlock %Computer move if they can win or block on very next turn (Comp choice within function)
            if NoWinBlock
                FindBestMovesOpen %Comp move if win still possible (comp choice within function)
            end
        end
    elseif PlayerTakenCorners == 0 && PlayerTakenSides == 0
        %PLAYER TOOK MIDDLE
    elseif PlayerTakenSides > 0
        %PLAYER TOOK SIDE
    end
    if 1 == 0
        CompMoveChoice = PossibleMoves(randi(length(PossibleMoves))) %random among all options (b/c no best options)
    end
end

MarkBox

