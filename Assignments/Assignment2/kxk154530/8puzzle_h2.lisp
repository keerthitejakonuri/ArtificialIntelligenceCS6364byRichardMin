(dribble "8_puzzle_file_h2.log")
(loop repeat 100
do
(solve (make-8-puzzle-problem :initial-state (random-8-puzzle-state)))
) 
(dribble)