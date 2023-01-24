% -------------------------------------------------------------
%
% Detect all number pairs in a list based on a predefined relation between them. 
% In this example we assume we look for number pair where A = 3*B.
% Check provided README.md for usage examples.
%
% Author: Aggelos Stamatiou, May 2017
%
% This source code is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This software is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this source code. If not, see <http://www.gnu.org/licenses/>.
% --------------------------------------------------------------------------

% find_pairs/3: find all possible combinations of number pairs
% that satisfy the relation, using recursion.
% A wastes vector is also returned.
find_pairs([],[],[]).

find_pairs([B|Rest],[[B,A]|RestPairs],FilteredWaste):-
	member(A,Rest),
	% The relation to satisfy
	A is 3*B,
	delete(Rest,B,Filtered),
	find_pairs(Filtered,RestPairs,Waste),
	% Filter wastes due to combinations
	delete(Waste,A,FilteredWaste).

find_pairs([Label|Rest],Pairs,[Label|Waste]):-
	find_pairs(Rest,Pairs,Waste).

find_pairs(List,Pairs,Waste):-
    % Sort the original list for simplicity
    sort(List,Sorted),
    find_pairs(Sorted,Pairs,Waste).
