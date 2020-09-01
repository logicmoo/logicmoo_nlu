
judged_dialogue_processing([[tsugi,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],[]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([say(referent_list([attribute(meeting,meeting_2,when)]))],[tts('shichigatsu kokonoka no juuji sanjuppun kara juuniji desu')],om,good).

judged_dialogue_processing([[kondo,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([say(referent_list([attribute(meeting,meeting_2,when)]))],[tts('shichigatsu kokonoka no juuji sanjuppun kara juuniji desu')],om,good).

judged_dialogue_processing([[tsugi,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([say(referent_list([attribute(meeting,meeting_2,when)]))],[tts('shichigatsu kokonoka no juuji sanjuppun kara juuniji desu')],om,good).

judged_dialogue_processing([[kondo,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([say(referent_list([attribute(meeting,meeting_2,when)]))],[tts('shichigatsu kokonoka no juuji sanjuppun kara juuniji desu')],om,good).

judged_dialogue_processing([[nichiyoubi,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],[]],[[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq],[]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([say(referent_list([]))],[tts('gaitou suru deeta ga ari masen')],om,good).

judged_dialogue_processing([[nichiyou,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([say(referent_list([]))],[tts('gaitou suru deeta ga ari masen')],om,good).

judged_dialogue_processing([[nichiyoubi,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([say(referent_list([]))],[tts('gaitou suru deeta ga ari masen')],om,good).

judged_dialogue_processing([[nichiyou,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(sunday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,nichiyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([say(referent_list([]))],[tts('gaitou suru deeta ga ari masen')],om,good).

judged_dialogue_processing([[ichi,gatsu,nijuu,yokka,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],[]],[[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq],[]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[ichi,gatsu,nijuu,yokka,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[ichi,gatsu,nijuu,yokka,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[ichi,gatsu,nijuu,yokka,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_date_in_future(24,1)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,date(unspecified,1,24)]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[tsugi,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([[kondo,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([[kondo,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])]],im,good).

judged_dialogue_processing([[query_object=when,utterance_type=whq,aggregate(next_n_meetings(1),[])],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],[say(referent_list([attribute(meeting,meeting_2,when)])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])]])],[subject,term(null,nanji,[])]])]],referents=[record(meeting,meeting_2),attribute(meeting,meeting_2,when)]]],dm,good).

judged_dialogue_processing([[kyou,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],[]],[[on_date=referent(today),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(today),query_object=when,utterance_type=whq],[]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kyou,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(today),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(today),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kyou,no,kaigi,wa,nanji,kara,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[kara,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kyou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(today),query_object=when,utterance_type=whq]],im,bad).

judged_dialogue_processing([[kyou,no,miitingu,wa,nanji,kara,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kyou,[])]])],[kara,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kyou,[])]])],[kara,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(today),query_object=when,utterance_type=whq]],im,bad).

judged_dialogue_processing([[kinou,no,kaigi,wa,nanji,deshita,ka],[[question,form(past,[[desu],[subject,term(null,kaigi,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],[]],[[on_date=referent(yesterday),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(yesterday),query_object=when,utterance_type=whq],[]],[say(referent_list([])),[lf=[[question,form(past,[[desu],[subject,term(null,kaigi,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kinou,no,miitingu,wa,nanji,deshita,ka],[[question,form(past,[[desu],[subject,term(null,miitingu,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(past,[[desu],[subject,term(null,kaigi,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(yesterday),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(yesterday),query_object=when,utterance_type=whq],[lf=[[question,form(past,[[desu],[subject,term(null,kaigi,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(past,[[desu],[subject,term(null,miitingu,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[tsugi,no,kinyoubi,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[tsugi,no,kinyoubi,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kondo,no,kinyoubi,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kondo,no,kinyoubi,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[tsugi,no,kinyou,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[tsugi,no,kinyou,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kondo,no,kinyou,no,kaigi,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,tsugi,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[kondo,no,kinyou,no,miitingu,wa,nanji,desu,ka],[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq]],im,good).

judged_dialogue_processing([[on_date=referent(nearest_named_weekday_in_future(friday)),query_object=when,utterance_type=whq],[lf=[[question,form(present,[[desu],[subject,term(null,kaigi,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[say(referent_list([])),[lf=[[question,form(present,[[desu],[subject,term(null,miitingu,[[gen,term(null,kondo,[])],[gen,term(null,kinyoubi,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],dm,good).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[basyo,wa,doko,deshita,ka],[[question,form(past,[[desu],[subject,term(null,basyo,[])],[subject,term(null,doko,[])]])]],[lf=[[question,form(past,[[desu],[subject,term(null,miitingu,[[gen,term(null,kinou,[])]])],[subject,term(null,nanji,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[doko,deshita,ka],[[question,form(past,[[desu],[subject,term(null,doko,[])]])]],[lf=[[question,form(past,[[desu],[subject,term(null,basyo,[])],[subject,term(null,doko,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[kyou,no,gogo,san,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],[]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gogo,san,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,no,gogo,san,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gogo,san,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,no,gogo,san,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],[]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,no,gogo,san,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gogo,san,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gogo,[[gen,term(null,kyou,[])]])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gogo,san,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gogo,[])],[ni,time(3,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,no,gozen,juu,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gozen,[[gen,term(null,kyou,[])]])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],[]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,no,gozen,juu,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,gozen,[[gen,term(null,kyou,[])]])],[ni,time(10,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gozen,[[gen,term(null,kyou,[])]])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gozen,juu,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gozen,[])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,gozen,[[gen,term(null,kyou,[])]])],[ni,time(10,0,any,[])],[subject,term(null,miitingu,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kyou,gozen,juu,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gozen,[])],[ni,time(10,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gozen,[])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[on_date=referent(today)]],im,bad).

judged_dialogue_processing([[kesa,juu,ji,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kesa,[])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kyou,[])],[temporal,term(null,gozen,[])],[ni,time(10,0,any,[])],[subject,term(null,miitingu,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[kesa,juu,ji,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kesa,[])],[ni,time(10,0,any,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kesa,[])],[ni,time(10,0,any,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[juneevu,de,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(name,juneevu,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[juneevu,de,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(name,juneevu,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[de,term(name,juneevu,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kongetsu,yotei,sarete,iru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kongetsu,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[kongetsu,yotei,sarete,iru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,kongetsu,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kongetsu,[])],[subject,term(null,kaigi,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kongetsu,wa,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[topic,term(null,kongetsu,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,kongetsu,[])],[subject,term(null,miitingu,[[clause,form(continuous_present,[[yotei_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kongetsu,wa,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[topic,term(null,kongetsu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[topic,term(null,kongetsu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[tsugi,no,getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,tsugi,[])]])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[tsugi,no,getsuyoubi,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,tsugi,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,tsugi,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kondo,no,getsuyoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,kondo,[])]])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,tsugi,[])]])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kondo,no,getsuyoubi,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,kondo,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,getsuyoubi,[[gen,term(null,kondo,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyoubi,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,getsuyoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,gogo,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,gogo,[[gen,term(null,getsuyoubi,[])]])],[subject,term(null,miitingu,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,gogo,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,kaigi,[])]])]],referents=[]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,gogo,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,gogo,[[gen,term(null,getsuyoubi,[])]])],[subject,term(null,miitingu,[])]])]],referents=[record(meeting,meeting_2)]]],[[]],im,bad).

judged_dialogue_processing([[getsuyou,gogo,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,getsuyoubi,[])],[ni,term(null,gogo,[])],[subject,term(null,kaigi,[])]])]],referents=[record(meeting,meeting_2)]]],[[]],im,bad).

judged_dialogue_processing([[kayoubi,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[kayou,ni,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kayoubi,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kayou,ni,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kayoubi,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[kayoubi,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kayou,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kayou,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(null,kayoubi,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raisyuu,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raisyuu,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raisyuu,marutini,de,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[de,term(name,marutini,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raisyuu,marutini,de,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[de,term(name,marutini,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[de,term(name,marutini,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,marutini,de,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,marutini,de,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,marutini,de,pieretto,to,douseki,suru,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[to,term(name,pieretto,[])],[subject,term(null,kaigi,[[clause,form(present,[[douseki_suru]])]])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,marutini,de,pieretto,to,douseki,suru,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[to,term(name,pieretto,[])],[subject,term(null,miitingu,[[clause,form(present,[[douseki_suru]])]])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,marutini,[])],[to,term(name,pieretto,[])],[subject,term(null,kaigi,[[clause,form(present,[[douseki_suru]])]])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,juneevu,de,kaigi,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,juneevu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,juneevu,de,miitingu,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,juneevu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,juneevu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,igirisu,de,kaigi,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,igirisu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,igirisu,de,miitingu,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,igirisu,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,igirisu,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,kenburijji,de,kaigi,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,kenburijji,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[raigetsu,kenburijji,de,miitingu,ga,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,kenburijji,[])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[temporal,term(null,raigetsu,[])],[de,term(name,kenburijji,[])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[mukou,ni,kagetsukan,de,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[mukou,ni,kagetsukan,de,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[mukou,ni,kagetsukan,de,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[mukou,ni,kagetsukan,de,miitingu,wa,ari,masu,ka],[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(present,[[aru],[de,term(2,kagetsukan,[[nn,term(null,mukou,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[koko,ni,kagetsukan,de,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[de,term(2,kagetsukan,[[nn,term(null,koko,[])]])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).

judged_dialogue_processing([[koko,ni,kagetsukan,de,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[de,term(2,kagetsukan,[[nn,term(null,koko,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[de,term(2,kagetsukan,[[nn,term(null,koko,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kako,ni,kagetsukan,ni,kaigi,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(2,kagetsukan,[[nn,term(null,kako,[])]])],[subject,term(null,kaigi,[])]])]],[lf=[[question,form(past,[[aru],[de,term(2,kagetsukan,[[nn,term(null,koko,[])]])],[subject,term(null,miitingu,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[kako,ni,kagetsukan,ni,miitingu,wa,ari,mashita,ka],[[question,form(past,[[aru],[ni,term(2,kagetsukan,[[nn,term(null,kako,[])]])],[subject,term(null,miitingu,[])]])]],[lf=[[question,form(past,[[aru],[ni,term(2,kagetsukan,[[nn,term(null,kako,[])]])],[subject,term(null,kaigi,[])]])]]]],[[]],im,bad).

judged_dialogue_processing([[raisyuu,kaigi,wa,ari,masu,ka],[[question,form(present,[[aru],[temporal,term(null,raisyuu,[])],[subject,term(null,kaigi,[])]])]],[]],[[]],im,bad).
