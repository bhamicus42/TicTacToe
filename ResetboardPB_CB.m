%Filename: ResetBoardPB_CB
% purpose: To reset the board
% author: Kyle Rockwell
% Date:11/26/18

GameState = zeros(3,3);
GamePopulate;

%Sets Turn to keep toggle true after reset
if TogTurn
    WhoseTurn = -1;
else
    WhoseTurn = 1;
end

%HIGHLIGHTS
if Mode > 1 %v computer always highlight player
    set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
    set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
else
    if TogTurn %if p2 starts, highlight p2
        set(findobj('tag','Player2Text'),'BackgroundColor',[1 1 0]);
        set(findobj('tag','Player1Text'),'BackgroundColor',[0.94 0.94 0.94]);
    else %p1 starts, highlight p1
        set(findobj('tag','Player1Text'),'BackgroundColor',[1 1 0]);
        set(findobj('tag','Player2Text'),'BackgroundColor',[0.94 0.94 0.94]);
    end
end

%Initializes Computer move after reset
if TogTurn && Mode>1
    WhoseTurn=-1;
    CompMove;
end

    