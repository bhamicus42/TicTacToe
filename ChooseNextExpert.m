%filename: ChoseNextExpert.m

%New files that go along with this:
CornerMove
SideMove
WinBlock
ElimPossWins
% if comp first:
%     choose corner
%     
% if player in corner:
%     chose center\
%     then:
%     if can win or block do so %MODERATE AI
%     elif look for best option
%     (elim poss wins that have player marks
%     (keep only poss wins that have comp marks
%     (Pick the poss wins that have corners
%     (else: rand. side)
%     else random %EASY AI
% 
%     end
% end




% Expert notes:
% if player starts
% 	if player chooses corner
% 		choose middle
% 
% 		after: 
% 		immediately use choosenextmoderate to check for wins or blocks
%         - but don't use for the rand part
% 		else
% 			eliminate posswins with opponent marks
% 			OR find and keep posswins with our marks
% 
% 		else choosenexteasy
% 
% 	if player chooses middle
% 		player can choose 2 corners and force win
% 		comp must choose 2 corners
%         
%     if player chooses side
% 		choose corner
% 
% if comp starts
% 	choose 2 corners
% 		prefer corners in a column/row comp already in but player not

        
if (TogTurn == 0) && (Mode == 4) %Player starts
    CornerMove;
    if PlayerTakenCorners > 0 %player has at least one piece in corner
        if (GameState(5) == 0)
            CompMoveChoice = 5;
        end
        WinBlock %Computer move if they can win or block on very next turn
        if NoWinBlock
            %NOTHING FOR THIS YET
            disp('No Win block')
%             ElimPossMoves
        end
    end
end

MarkBox
        
        


% filename:  ChooseNextExpert.m
% Purpose:   
% date:      11/23/18
% Authors:   Ben Hoffman
% Engr-6 Group Stomadoapod srjc

% last edited by Ben Hoffman 


%IN NEW FILES
% Corners = [1 3 7 9];
% PlayerTakenCorners = [];
% CompTakenCorners = [];
% for Index = Corners
%     if GameState(Index) == 1;
%         PlayerTakenCorners = [PlayerTakenCorners, Index];
%     elseif GameState(Index) == -1;
%         CompTakenCorners = [CompTakenCorners, Index];
%     end 
% end

% Sides = [2, 4, 6, 8];
% PlayerTakenSides = [];
% CompTakenSides = [];
% for Index = Corners
%     if GameState(Index) == 1;
%         PlayerTakenSides = [PlayerTakenSides, Index];
%     elseif GameState(Index) == -1;
%         CompTakenSides = [CompTakenSides, Index];
%     end 
% end
%END OF IN NEW FILES
    

% if player starts
% 	if player chooses side
% 		choose corner
% 
% 	if player chooses corner
% 		choose middle
% 
% 		after: 
% 		immediately use choosenextmoderate to check for wins or blocks
% 		else
% 			eliminate posswins with opponent marks
% 			OR find and keep posswins with our marks
% 
% 		else choosenexteasy
% 
% 	if player chooses middle
% 		player can choose 2 corners and force win
% 		comp must choose 2 corners
% 
% if comp starts
% 	choose 2 corners
% 		prefer corners in a column/row comp already in but player not

    
    


