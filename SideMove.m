%filename: SideMove.m
% purpose: returns true if player moves in side
%author: Emmy Nam


% Sides = 0
% for index = 1:4 
%     box = 2*index
%     if (GameState(box) ==1)
%         Sides = Sides + GameState(box)
%     end
% end

Sides = [2, 4, 6, 8];
PlayerTakenSides = [];
CompTakenSides = [];
for Index = Corners
    if GameState(Index) == 1;
        PlayerTakenSides = [PlayerTakenSides, Index];
    elseif GameState(Index) == -1;
        CompTakenSides = [CompTakenSides, Index];
    end 
end