% Mode = get(findobj('Tag', 'ModesPM', 'parent', TitleHandle), 'value');

if Mode > 0
PossibileMoves = find(~GameState);

    switch Mode
        case 1
%             NexMove(ChooseMoveEasy())
            ChooseNextEasy
        case 2
%             NexMove(ChooseMoveEasy())
            ChooseNextModerate
        case 3
%             NexMove(ChooseMoveEasy())
            ChooseNextExpert
    end
end

% function [] = NextMove(ChooseMoveEasy())