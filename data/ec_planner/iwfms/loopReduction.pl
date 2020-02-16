%:-prolog_flag(compiling,_,profiledcode).
?-use_module(library(lists)).



reduceLoops(Actions, Ordering, FinalOrdering):-

	%locate any loops which exist
	member(  happens(edgeProgression(loop(LoopDestination), _),LoopCallTimepoint,LoopCallTimepoint)  ,  Actions ),

	%Find the destination they loop to
	!, matchHappens(LoopDestination,Timepoint,DestinationTimepoint, Actions),
	
	removeGoalAchievement(LoopCallTimepoint, Ordering, NewOrdering),
	
	addLoopAchievement(DestinationTimepoint,LoopCallTimepoint, NewOrdering, FinalOrdering ).
	
%If We ever fail the plan does not have a loop in it so return the same Ordering
reduceLoops(_, Ordering, Ordering).
	
	
removeGoalAchievement(LoopCallTimepoint, Ordering, NewOrdering):-

	delete(Ordering,before(LoopCallTimepoint,t), NewOrdering),!.

		
addLoopAchievement(DestinationTimepoint,LoopCallTimepoint, Ordering, NewOrdering):-

	append([before(LoopCallTimepoint,DestinationTimepoint)], Ordering, NewOrdering), !.
 

listMember([], CheckList) :- !, fail.	
	
listMember([Head|Tail], CheckList):-
				
				member(Head, CheckList), !.

listMember([Head|Tail], CheckList):-
				!, listMember(Tail, CheckList), !.
		
		

% --------------Tests ----------------------
/*
%simple plan	
test_reduceLoops :- reduceLoops([happens(formEntry(assessForm,user,group), t6,t6),happens(edgeProgression(loop(formEntry(assessForm,user,group)), formElement( test2 ,match, off )),t9,t9)], [before(t9,t),before(t2,t)]).

%complex plan
test1_reduceLoops :- reduceLoops([happens(formEntry(admissionForm,jw99,receptionist),t12,t12),happens(createFormElement(textbox,patientName,'',[size=30]),t17,t17),happens(createFormElement(textbox,houseNumber,'',[size=100]),t18,t18),happens(createFormElement(textbox,road,'',[size=100]),t19,t19),happens(createFormElement(textbox,age,'',[size=100]),t20,t20),happens(createFormElement(textbox,ward,'',[size=100]),t21,t21),happens(entry(form,element,childddddddd),t29,t29),happens(entry(form,elementss,level1childrensward),t30,t30),happens(formSubmission(admissionForm),t16,t16),happens(edgeProgression(admissionForm,formElement(patientName,presence,none)),t33,t33),happens(formEntry(assessForm,jw99,doctor),t37,t37),happens(createFormElement(textarea,drugs,'',[rows=30,cols=30]),t42,t42),happens(formSubmission(assessForm),t41,t41),happens(edgeProgression(assessForm,formElement(drugs,presence,none)),t45,t45),happens(formEntry(checkdrugs,jw99,pharmacist),t49,t49),happens(createFormElement(checkbox,correctDrugs,true,[size=2]),t58,t58),happens(createFormElement(checkbox,doctorDrugs,database,[size=2]),t59,t59),happens(databaseFetch(drugsSpec),t55,t55),happens(formSubmission(checkdrugs),t57,t57),happens(edgeProgression(checkdrugs,formElement(correctDrugs,match,false)),t62,t62),happens(formEntry(failedDrugsApproval,jw99,doctor),t66,t66),happens(createFormElement(textbox,patientNameFailed,'',[multline]),t71,t71),happens(formSubmission(failedDrugsApproval),t70,t70),happens(edgeProgression(loop(formEntry(assessForm,_,_)),formElement(test2,match,off)),t77,t77)],[before(t66,t71),before(t71,t70),before(t49,t58),before(t59,t55),before(t58,t59),before(t55,t57),before(t37,t42),before(t42,t41),before(t12,t17),before(t20,t21),before(t19,t20),before(t18,t19),before(t17,t18),before(t70,t77),before(t77,t),before(t57,t62),before(t62,t66),before(t41,t45),before(t45,t49),before(t16,t33),before(t33,t37),before(t30,t16),before(t21,t29),before(t29,t30)]).
*/