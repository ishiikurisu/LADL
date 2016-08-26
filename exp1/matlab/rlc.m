function [dy] = rlc(t, y)
dy = [y(2); (25 -6*y(2) -25*y(1))];