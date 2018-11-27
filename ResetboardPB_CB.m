%Filename: ResetBoardPB_CB
% purpose: To reset the board
% author: Kyle Rockwell
% Date:11/26/18
    GameState = zeros(3,3);
GamePopulate;
if TogTurn && Mode>1
    
  set(findobj('tag','Player2Text'),'BackgroundColor',[1 1 0]);
    set(findobj('tag','Player1Text'),'BackgroundColor',[0.94 0.94 0.94]);
    WhoseTurn=-1;
    CompMove;
    WhoseTurn=-1;
else
    set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
      set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
end
if TogTurn||WhoseTurn==-1
    WhoseTurn=-WhoseTurn;
    set(findobj('tag','Player2Text'),'BackgroundColor',[1 1 0]);
    set(findobj('tag','Player1Text'),'BackgroundColor',[0.94 0.94 0.94]);
    

end


    