

:- multifile(covid19_domain/3).
:- expand_file_name('../example_bt/*.pl',Expand),
   forall(member(File,Expand),
    locally(b_setval('$bt_context',covid19_domain),load_bt_file(File))).
                            
