 (deftest search
 "Now the 8-queens problem"
  ((compare-search-algorithms
    'make-nqueens-problem
    '(csp-backtracking-search csp-forward-checking-search depth-first-search )
    :n 1))
 )