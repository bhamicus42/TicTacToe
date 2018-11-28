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

else
    if Mode<2
    set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
      set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
    end
end
if TogTurn||WhoseTurn==-1
    WhoseTurn=-WhoseTurn;
    if Mode<2
    set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
    set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
    end

end


    