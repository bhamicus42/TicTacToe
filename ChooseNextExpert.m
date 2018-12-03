%filename: ChoseNextExpert.m

% // %New files that go along with this:
% // CornerMove
% // SideMove
% // WinBlock
% // ElimPossWins
% // FindBestMovesOpen

Sides = [2,4,6,8];
Corners = [1, 3, 7, 9];
Turn = sum(sum(abs(GameState)));  %starts from 0

%PLAYER STARTS
if (TogTurn == 0) && (Mode == 4)
    CornerMove;
    SideMove;
    OppCorner = sum(PlayerTakenCorners) >= 10; %Notes if player goes in opposite corners
    OppSide = sum(PlayerTakenSides) >= 10; %Notes if player goes in opposite sides
    BestMovesOpen = []; %init BestMovesOpen
    

    WinBlock; %Computer move if they can win or block on very next turn (CompMoveChoice within function)
    if NoWinBlock
        if PlayerTakenCorners > 0 %PLAYER TOOK CORNER
            if (GameState(5) == 0)
                CompMoveChoice = 5; %CompMoveChoice in middle
            elseif OppCorner && (length(find(GameState)) == 3)
                CompMoveChoice = Sides(randi(length(Sides))); %prevent player from being able to force win
            elseif sum(PlayerTakenCorners) > 0 && sum(PlayerTakenSides) >0 && length(find(GameState)) == 3%prevent player win by side-corner force
                FindBlockPlayerSideWin; %(CompMoveChoice within funtion)
            end

        elseif (length(PlayerTakenCorners) == 0) && (length(PlayerTakenSides) == 0) %PLAYER TOOK MIDDLE
            if (length(find(GameState)) == 1)
                CompMoveChoice = Corners(randi(length(Corners))); %CompMoveChoice in corner
            elseif OppCorner && (length(find(GameState)) == 3)
                CompMoveChoice = Sides(randi(length(Sides)));
            end

        elseif PlayerTakenSides > 0 %PLAYER TOOK SIDE
            if (GameState(5) == 0)
                CompMoveChoice = 5; %Comp move in middle
            elseif sum(PlayerTakenCorners) > 0 && sum(PlayerTakenSides) >0 & length(find(GameState)) == 3 %prevent player win by side-corner force
                FindBlockPlayerSideWin;%(CompMoveChoice within funtion)
            elseif OppSide && (length(find(GameState)) == 3)
                CompMoveChoice = Corners(randi(length(Corners)));
            end
        end
    end
    

    if GameState(CompMoveChoice) ~=0  %Last Resort: randomly choose because no option is better
        CompMoveChoice = PossibleMoves(randi(length(PossibleMoves)));
    end
    
    
%COMP STARTS
else
    WinBlock
    if NoWinBlock    
        % if first move, take a random corner
        %TO IMPROVE:  ALSO TAKE SIDES OR MIDDLE
        if Turn == 0
            CompMoveChoice = Corners(randi(length(Corners)));

        % if second move
        elseif Turn == 2        
            %If player took a side adjacent to comp, start a line.
            %TO IMPROVE:  WIN CAN ALSO BE FORCED WITHOUT JUST TAKING
            %MIDDLE, CAN ACHIEVE GREATER VARIETY IF TAKE THAT ROUTE
            if ((GameState(1) == WhoseTurn && any(GameState([2 4]) == -WhoseTurn)) ||...
                (GameState(3) == WhoseTurn && any(GameState([2 6]) == -WhoseTurn)) ||...
                (GameState(7) == WhoseTurn && any(GameState([4 8]) == -WhoseTurn)) ||...
                (GameState(9) == WhoseTurn && any(GameState([6 8]) == -WhoseTurn))      )
                
                CompMoveChoice = 5;
%                 if randi(10) > 5
                    %take corner
%                 else
%                     if GameState(1) == WhoseTurn
%                         NewLine = [2 4];
%                         NewLine = NewLine(GameState(NewLine) == 0);
%                         CompMoveChoice = NewLine(randi(length(NewLine)));
%                     elseif GameState(3) == WhoseTurn
%                         NewLine = [2 6];
%                         NewLine = NewLine(GameState(NewLine) == 0);
%                         CompMoveChoice = NewLine(randi(length(NewLine)));
%                     elseif GameState(7) == WhoseTurn
%                         NewLine = [4 8];
%                         NewLine = NewLine(GameState(NewLine) == 0);
%                         CompMoveChoice = NewLine(randi(length(NewLine)));
%                     elseif GameState(9) == WhoseTurn
%                         NewLine = [6 8];
%                         NewLine = NewLine(GameState(NewLine) == 0);
%                         CompMoveChoice = NewLine(randi(length(NewLine)));
%                     end    
%                 end
            %if player took some other side or middle, take a corner
            %on a line from one already taken 
            elseif any(GameState(Sides)) == -WhoseTurn || GameState(5) == -WhoseTurn
%                 OpenCorners = find(GameState(Corners)==0);
%                 CompMoveChoice = Corners(OpenCorners(randi(length(OpenCorners))));
                if (GameState(1) == WhoseTurn)
%                     disp('First move was 1')
                    CornerOptions = [3 7];
                    OpenCorners = CornerOptions(GameState(CornerOptions)==0);
                    CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                elseif (GameState(3) == WhoseTurn)
%                     disp('First move was 3')
                    CornerOptions = [1 9];
                    OpenCorners = CornerOptions((find(GameState([1 9])==0)));
                    CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                elseif (GameState(7) == WhoseTurn)
                    CornerOptions = [1 9];
                    OpenCorners = CornerOptions((find(GameState([1 9])==0)));
                    CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                elseif (GameState(9) == WhoseTurn)
                    CornerOptions = [3 7];
                    OpenCorners = CornerOptions(find(GameState([3 7])==0));
                    CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                end

            % if player took a corner, take an open corner
            elseif any(GameState(Corners) == -WhoseTurn)
                OpenCorners = find(GameState(Corners)==0);
                CompMoveChoice = Corners(OpenCorners(randi(length(OpenCorners))));
                
            % if player took middle, take a corner on a line from one
            % already taken
%             elseif GameState(5) == -WhoseTurn
                
                
            end

            %TO IMPROVE:  This to be set back one indent line for
            %readability
            elseif Turn == 4
                %if player started by taking a corner, take another corner
                GameStateSecondTurn = GameStateHistory(:,7:9);
                if any(GameStateSecondTurn(Corners) == -WhoseTurn)
                    OpenCorners = find(GameState(Corners)==0);
                    CompMoveChoice = Corners(OpenCorners(randi(length(OpenCorners))));
                
                %if player took two sides, take a corner on a line from
                %first one taken
                elseif sum(GameState(Sides(GameState(Sides) == 1))) == 2
                    GameStateFirstTurn = GameStateHistory(:,1:3)
                    if (GameStateHistory(1) == WhoseTurn)
                        CornerOptions = [3 7];
                        OpenCorners = CornerOptions(GameState(CornerOptions)==0);
                        CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                    elseif (GameStateHistory(3) == WhoseTurn)
                        CornerOptions = [1 9];
                        OpenCorners = CornerOptions((find(GameState([1 9])==0)));
                        CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                    elseif (GameStateHistory(7) == WhoseTurn)
                        CornerOptions = [1 9];
                        OpenCorners = CornerOptions((find(GameState([1 9])==0)));
                        CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                    elseif (GameStateHistory(9) == WhoseTurn)
                        CornerOptions = [3 7];
                        OpenCorners = CornerOptions(find(GameState([3 7])==0));
                        CompMoveChoice = Corners(Corners==OpenCorners(randi(length(OpenCorners))));
                    end
                
                % if player took side and corner make a cluster
                elseif any(GameState(Corners) == -WhoseTurn) && any(GameState(Sides)) == -WhoseTurn
                    if GameState(1) == WhoseTurn
                        NewCluster = [2 4 5];
                        NewCluster = NewCluster(GameState(NewCluster) == 0);
                        CompMoveChoice = NewCluster(randi(length(NewCluster)));
                    elseif GameState(3) == WhoseTurn
                        NewCluster = [2 5 6];
                        NewCluster = NewCluster(GameState(NewCluster) == 0);
                        CompMoveChoice = NewCluster(randi(length(NewCluster)));
                    elseif GameState(7) == WhoseTurn
                        NewCluster = [4 5 8];
                        NewCluster = NewCluster(GameState(NewCluster) == 0);
                        CompMoveChoice = NewCluster(randi(length(NewCluster)));
                    elseif GameState(9) == WhoseTurn
                        NewCluster = [5 6 8];
                        NewCluster = NewCluster(GameState(NewCluster) == 0);
                        CompMoveChoice = NewCluster(randi(length(NewCluster)));
                    end                
                    
                % if player took middle, take a corner on a line from one already
                % taken. 
                elseif GameState(5) == -WhoseTurn
                    if any(GameState(Sides)) == -WhoseTurn
                        if GameState(1) == WhoseTurn
                            NewLine = [2 4];
                            NewLine = NewLine(GameState(NewLine) == 0);
                            CompMoveChoice = NewLine(randi(length(NewLine)));
                        elseif GameState(3) == WhoseTurn
                            NewLine = [2 6];
                            NewLine = NewLine(GameState(NewLine) == 0);
                            CompMoveChoice = NewLine(randi(length(NewLine)));
                        elseif GameState(7) == WhoseTurn
                            NewLine = [4 8];
                            NewLine = NewLine(GameState(NewLine) == 0);
                            CompMoveChoice = NewLine(randi(length(NewLine)));
                        elseif GameState(9) == WhoseTurn
                            NewLine = [6 8];
                            NewLine = NewLine(GameState(NewLine) == 0);
                            CompMoveChoice = NewLine(randi(length(NewLine)));
                        end  
                    else
                        OpenCorners = find(GameState(Corners)==0);
                        CompMoveChoice = Corners(OpenCorners(randi(length(OpenCorners))));
                    end

%                 %else take middle
%                 elseif GameState(5) == 0
%                     CompMoveChoice = 5;
                %if player took corner, take another corner
                elseif any(Corners) == -WhoseTurn
                    OpenCorners = find(GameState(Corners)==0);
                    CompMoveChoice = Corners(OpenCorners(randi(length(OpenCorners))));
                end

%         elseif Turn == 6
            %if 
            
        else
            ChooseNextModerate
        end
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
