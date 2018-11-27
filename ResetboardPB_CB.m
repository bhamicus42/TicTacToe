%Filename: ResetBoardPB_CB
% purpose: To reset the board
% author: Kyle Rockwell
% Date:11/26/18
    GameState = zeros(3,3);
GamePopulate;
if TogTurn && Mode>1
    
  
    WhoseTurn=-1;
    CompMove;
    WhoseTurn=-1;
end
if TogTurn||WhoseTurn==-1
    WhoseTurn=-WhoseTurn;

end


    