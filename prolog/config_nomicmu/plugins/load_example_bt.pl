

:- expand_file_name('../example_bt/*.pl',Expand),
   forall(member(File,Expand),load_bt_file(File)).

