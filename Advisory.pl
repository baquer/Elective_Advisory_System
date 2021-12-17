% Elective Advisory System for M.Tech Students at IIIT Delhi.

start :- welcome_msg, undo, get_elective(_).

welcome_msg :- write("Welcome To IIIT Delhi Elective Advisory System for M.Tech CSE Students"), nl, nl.

get_elective(Elective) :- elective(Elective), !, nl, display_elective(Elective), nl.

get_elective(Elective) :- error_message(Elective).

%Display the option for answer
display_options([], _).
display_options([H|T], I) :- write(I), write(" --> "), ans_given(H), nl, NI is I + 1, display_options(T, NI).

%Display the list of electives
display_list([], _).
display_list([H|T], I) :- Y is I+1 , write(Y), write(" --> "), write(H), nl, NI is I + 1, display_list(T, NI).
%Iterate over the entire list
iterate(0, [H|_], H).
iterate(I, [_|T], X) :- I > 0, NI is I - 1, iterate(NI, T, X).
%ask question along with the otions and store the selected option in a variable
ask(Ques, Ans, Option) :- ques_to_be_asked(Ques), display_options(Option, 0), read(I), iterate(I, Option, X), asserta(store(Ques, X)),  X = Ans.
%Dynamically store the value
:- dynamic(store/2).
%undo the stored values
undo :- retract(store(_,_)), fail.
undo.

% Knowledge base

elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(artificial_intelligence) :- which_career(ai_scientist) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(data_engineering) :- which_career(ml_eng) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(android),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(data_engineering) :- which_career(ml_eng) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(winter).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_60), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_50), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_60), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_50), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(core_subjects),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(cse) :- which_career(sde) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(cse) :- which_career(sde) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(cse) :- which_career(sde) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(cse) :- which_career(sde) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_60), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_50), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_60), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_50), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(winter).
elective(information_security) :- which_career(security_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(android),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(information_security) :- which_career(security_engineer) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_60), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_50), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_60), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(attended), aptitude_score(gt_50), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_6) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(linear_algebra),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(machine_learning),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(statistics),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(statistics),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(statistics),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(network_security),btech_cgpa(greater_than_7) , workshop_attended(attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(network_security),btech_cgpa(greater_than_9) , workshop_attended(not_attended), aptitude_score(gt_80), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(network_security),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_70), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_60), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_50), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(monsoon).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_60), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(attended), aptitude_score(gt_50), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_60), which_semester(winter).
elective(mobile_computing) :- which_career(mobile_engineer) , subject_known(android),btech_cgpa(greater_than_8) , workshop_attended(not_attended), aptitude_score(gt_50), which_semester(winter).

%Error message from machine

error_message(elective) :- write("Based on the Input provided by you."), nl, nl , write("You are not suitable for this elective."), nl, nl , write("Please provide a valid inputs or continue with different career path."), nl,nl, write("Type Start. to continue."), nl.

% Knowlwdge base ques_to_be_asked

ques_to_be_asked(which_career) :- write("Which career you want to pursue ?"), nl, nl.
ques_to_be_asked(subject_known) :- write("Choose any one subject according to your career interest ?"), nl, nl.
ques_to_be_asked(btech_cgpa) :- write("What is your B.Tech CGPA ?"), nl, nl.
ques_to_be_asked(workshop_attended) :- write("Any workshop Attended ?"), nl, nl.
ques_to_be_asked(aptitude_score) :- write("What is your aptitude score out of 100 ?"), nl, nl.
ques_to_be_asked(which_semester) :- write("Which Semester ?"), nl, nl.

% Knowledge base ans_given

ans_given(ai_scientist) :- write("AI Scientist.").
ans_given(ml_eng) :- write("ML Engineer.").
ans_given(sde) :- write("Software Development Engineer.").
ans_given(security_engineer) :- write("Security Engineer.").
ans_given(mobile_engineer) :- write("Mobile Engineer.").
ans_given(linear_algebra) :- write("Linear Algebra.").
ans_given(machine_learning) :- write("Machine Learning.").
ans_given(core_subjects) :- write("Core Subjects.").
ans_given(network_security) :- write("Network Security.").
ans_given(android) :- write("Android.").
ans_given(statistics) :- write("Statistics.").
ans_given(greater_than_9) :- write("Greater than 9.0.").
ans_given(greater_than_8) :- write("Greater than 8.0.").
ans_given(greater_than_7) :- write("Greater than 7.0.").
ans_given(greater_than_6) :- write("Greater than 6.0.").
ans_given(attended) :- write("Attended.").
ans_given(not_attended) :- write("Not Attended.").
ans_given(gt_80) :- write("Greater than 80.").
ans_given(gt_70) :- write("Greater than 70.").
ans_given(gt_60) :- write("Greater than 60.").
ans_given(gt_50) :- write("Greater than 50.").
ans_given(monsoon) :- write("Monsoon Semester.").
ans_given(winter) :- write("Winter Semester.").

% Show Elective and display the list according to the elective

display_elective(artificial_intelligence) :-write("You are a good fit for Artificial Intelligence."), nl, nl, write("The List of top 10 Electives subjects that you can opt for AI in this semester are as follows :- "), nl, nl, 
display_list(["Advanced Machine Learning", "Deep Learning (CSE641)", "Machine Learning (CSE543)", "Multi-Agent Systems (CSE531)", "Probabilistic Graphical Models (CSE561)", "Reinforcement Learning (CSE564)", "Statistical Machine Learning (CSE542)", "Theoretical Machine Learning", "Computer Vision (CSE544)", "Data Mining (CSE506)"], 0), nl.
display_elective(data_engineering) :- write("You are a good fit for Data Engineering."), nl, nl, write("The List of top 10 Electives subjects that you can opt for DE in this semester are as follows :- "), nl, nl, 
display_list(["Data Mining (CSE506)","Database System Implementation (CES507)","Information Retrieval (CSE508)","Big Data Analytics (CSE510A)","Introduction to spatial Computing (CSE555)","Statistical Machine Learning (CSE542)","Machine Learning (CSE543)","Natural Language Processing (CSE556)","GPU Computing (CSE560)","Probabilistic Graphical Models (CSE561 )"],0).
display_elective(cse) :- write("You are a good fit for General CSE."), nl, nl, write("The List of top 10 Electives subjects that you can opt for DE in this semester are as follows :- "), nl, nl, 
display_list(["Graduate Algorithms (CSE525 )","Wireless Networks ( CSE538 )","Compiler (CSE601)","Modern Algorithm Design (CSE519)","Computer architecture (CSE511)","Program Analysis (CSE503)","Information Retrieval (CSE508)","Semantic Web","Decision Procedures (DP)","Cloud Computing and Virtualization"],0).
display_elective(information_security) :- write("You are a good fit for Information Security."), nl, nl, write("The List of top 10 Electives subjects that you can opt for IS in this semester are as follows :- "), nl, nl, 
display_list(["Secure Coding (CSE500)","Theory of Modern Cryptography (CSE524)","Distributed Systems Security (CSE530)","Foundations to Computer Security (CSE545)","Applied Cryptography (CSE546)","Network Security (CSE550)","Security Engineering (CSE552)","Digital and Cyber Forensics (CSE645)","Mobile and Cellular Network Security (CSE647)","Privacy and Security in Online Social Media (CSE648)"],0).
display_elective(mobile_computing) :- write("You are a good fit for Mobile Computing."), nl, nl, write("The List of top 10 Electives subjects that you can opt for MC in this semester are as follows :- "), nl, nl, 
display_list(["Distributed Systems Security (CSE530)","Mobile Computing (CSE535)","Embedded Systems (CSE537)","Cellular Data Networks (CSE539)","Ad Hoc Wireless Networks (CSE538)","Introduction to Spatial Computing (CSE555)","Smart Sensing for Internet of Things (CSE576)","Mobile and Cellular Network Security (CSE647)","Advanced Topics in Mobile Computing (CSE734)","Network Anonymity and Privacy (CSE749)"],0).
% Assign answer_given to a ques
which_career(Ans) :- store(which_career, Ans).
which_career(Ans) :- not(store(which_career, _)), ask(which_career, Ans, [ai_scientist,ml_eng,sde,security_engineer,mobile_engineer]).
subject_known(Ans) :- store(subject_known, Ans).
subject_known(Ans) :- not(store(subject_known, _)), ask(subject_known, Ans, [linear_algebra, core_subjects, network_security, android, statistics, machine_learning]).
btech_cgpa(Ans) :- store(btech_cgpa, Ans).
btech_cgpa(Ans) :- not(store(btech_cgpa, _)), ask(btech_cgpa, Ans, [greater_than_9, greater_than_8, greater_than_7, greater_than_6]).
workshop_attended(Ans) :- store(workshop_attended, Ans).
workshop_attended(Ans) :- not(store(workshop_attended, _)), ask(workshop_attended, Ans, [attended, not_attended]).
aptitude_score(Ans) :- store(aptitude_score, Ans).
aptitude_score(Ans) :- not(store(aptitude_score, _)), ask(aptitude_score, Ans, [gt_80,gt_70,gt_60,gt_60,gt_50]).
which_semester(Ans) :- store(which_semester, Ans).
which_semester(Ans) :- not(store(which_semester, _)), ask(which_semester, Ans, [monsoon, winter]).