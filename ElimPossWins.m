% %filename: ElimPossWins.m
% %purpose: gets rid of PossWins that have player move already in a space and use new array to find computer’s best option
% %author: Emmy Nam

%Used Var below to test file
% PossWins = [1 2 3; 4 5 6; 7 8 9; 
%         1 5 9; 3 5 7; 
%         1 4 7; 2 5 8; 3 6 9];
% 
% GameState =   [1,0, 0; ...
%             0 0 0; ...
%             0 0 0];

FinalPossWins = [];
CompPossWins = [];
EmptyPossWins = [];

for Options = 1:length(PossWins)
    PossWinOpt = PossWins(Options, :); %pulls one win option
   	Count = 0 ; %init Count and IsEmpty for each poss win 
    IsEmpty = 1;

	for Index = 1:3
        BoxNum = PossWinOpt(Index);
        if GameState(BoxNum) ~= 0
            IsEmpty = 0 ;
        end
        Count = Count + GameState(BoxNum);
    end

    %Append possWinOpt to correct category
    if IsEmpty
        EmptyPossWins = [EmptyPossWins; PossWinOpt];
    elseif Count < 0
        CompPossWins = [CompPossWins; PossWinOpt];
    end

end	
    

%After check all boxes in current PossWin Option
if length(CompPossWins) > 0
    FinalPossWins = CompPossWins;
elseif length(EmptyPossWins) > 0
    FinalPossWins = EmptyPossWins;
else
end
%RANDOMLY CHOOSE SPOT (Will do through ChooseNextExpert)

%NEXT TASK: use this array to randomly choose box that is not occupied
%Look at CompChoiceMove in ModerateAI to see if this is being done (note: be careful because the array will change sizes)


