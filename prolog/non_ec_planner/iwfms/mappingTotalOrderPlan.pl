?-use_module(library(lists)).
%:-prolog_flag(compiling,_,profiledcode).
:-ensure_loaded('temporalOrderCleaner.pl').


mapToTotalOrderPlan( Plan, Ordering ,NewOrdering) :-


	fetchTemporalReferences(Plan, OrderingMinusAbstractTimepoints),!,

	navigatePlanTree(Plan, Ordering, OrderingMinusAbstractTimepoints, t, NewOrdering),
	
	%We only every want one solution
	!.


navigatePlanTree(Plan, Ordering, OrderingMinusAbstractTimepoints, Timepoint, NewOrdering) :- 

	%Find the timepoint that is constrained to occur before Timepoint
	member( before(X, Timepoint), Ordering),
	
	%Check that this Timepoint occurs in the plan
	member( X,  OrderingMinusAbstractTimepoints),
	
	navigatePlanTree(Plan, Ordering, OrderingMinusAbstractTimepoints, X, NewOrdering).

		
%Abstract Timepoint has been identified
navigatePlanTree(Plan, Ordering, OrderingMinusAbstractTimepoints, Timepoint, NewOrdering) :- 

	%Find the timepoint AbstractTimepoint
	member( before(AbstractTimepoint, Timepoint), Ordering),
	
	
	\+ member( AbstractTimepoint,  OrderingMinusAbstractTimepoints),
	
	
	%find the left branch and the right branch connected to this abstract timepoint
	
	%currently only holds for two branches
	findall(BranchTimepoint, member( before(BranchTimepoint, AbstractTimepoint), Ordering), [Head, Tail]),
	
	mergeBranches(Plan, Head, Tail, Timepoint,AbstractTimepoint, Ordering, NewMergedOrdering ),
		
	navigatePlanTree(Plan, NewMergedOrdering, OrderingMinusAbstractTimepoints, Timepoint, NewOrdering ). 	
	
navigatePlanTree(Plan, NewOrdering, OrderingMinusAbstractTimepoints, Timepoint, NewOrdering).
	

	
		
mergeBranches(Plan, LeftBranch, RightBranch, AbstractTimepointsChild,AbstractTimepoint, Ordering, NewOrdering):-

	findEndTimepoint(LeftBranch, Ordering, LeftEndTimepoint),
	
	removeAbstractTemporalOrderings(Ordering, AbstractTimepoint, OrderingWithoutTimepoint),
	
	append(OrderingWithoutTimepoint, [before(RightBranch, LeftEndTimepoint)], BuildingNewOrdering ),
	
	append(BuildingNewOrdering, [before(LeftBranch, AbstractTimepointsChild)], NewOrdering).
	

	

% Search for the last timepoint connected to Branch
findEndTimepoint(Branch,Ordering, EndTimepoint):-

	member(before(ParentNode,Branch), Ordering),
	
	findEndTimepoint(ParentNode, Ordering, EndTimepoint).

%Last Timepoint has been found	
findEndTimepoint(Branch, Ordering, Branch).
	
	
removeAbstractTemporalOrderings(Ordering, AbstractTimepoint, OrderingWithoutTimepoint) :-
	findall( before(X,AbstractTimepoint), member(before(X,AbstractTimepoint), Ordering), ChildrenOrderingToDelete ),	
	findall( before(AbstractTimepoint, Y), member(before(AbstractTimepoint,Y), Ordering), ParentOrderingToDelete  ),	

	deleteList(ChildrenOrderingToDelete, Ordering, OrderingMinusAbstractChildrenTimepoints ),
	deleteList(ParentOrderingToDelete,   OrderingMinusAbstractChildrenTimepoints, OrderingWithoutTimepoint ).

		
deleteList([], Result, Result).	
deleteList([Head | Tail], WorkingList, Accum):-
	delete(WorkingList, Head, ResultList),
	deleteList(Tail, ResultList, Accum).
	

	
% --------------Tests ----------------------
/*
test1_OrderingWithoutTimepoint(OrderingWithoutTimepoint):- removeAbstractTemporalOrderings([before(t5,t6),before(t1,t2),before(t3,t2), before(t2,t5)],t2, OrderingWithoutTimepoint).

test1_FindStartTimepoint :- findStartTimepoint([before(y,x)], Timepoint).	

test1_findEndTimepoint(Result):- findEndTimepoint(t1, [before(t2,t1), before(t3,t2),before(t4,t3) ], Result).


test1_mapToTotalOrderPlan(Result):- mapToTotalOrderPlan(
																					[happens(b,t70,t70),happens(a,t67,t67),happens(c,t66,t66),happens(d,t25,t25)],
																					[before(t25,tabstract), before(t66,tabstract), before(t66, t67), before(t70,t66), before(tabstract,t)], 
																					Result).
*/