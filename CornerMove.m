%filename: CornerMove
% purpose: returns true if player moves in corner
%author: Emmy Nam
% 
% Corners = 0
% for index = 0:4 
%     box = 1 + 2*index
%     if box ~= 5 && (GameState(box) ==1)
%         Corners = Corners + GameState(box)
%     end
% end

Corners = [1 3 7 9];
PlayerTakenCorners = [];
CompTakenCorners = [];
for Index = Corners
    if GameState(Index) == 1;
        PlayerTakenCorners = [PlayerTakenCorners, Index];
    elseif GameState(Index) == -1;
        CompTakenCorners = [CompTakenCorners, Index];
    end 
end