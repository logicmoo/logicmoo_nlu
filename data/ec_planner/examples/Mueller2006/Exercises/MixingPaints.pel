:-include(library('ec_planner/ec_test_incl')).
:-expects_dialect(pfc).
 %  loading(always,'examples/Mueller2006/Exercises/MixingPaints.e').
%;
%; Copyright (c) 2005 IBM Corporation and others.
%; All rights reserved. This program and the accompanying materials
%; are made available under the terms of the Common Public License v1.0
%; which accompanies this distribution, and is available at
%; http://www.eclipse.org/legal/cpl-v10.html
%;
%; Contributors:
%; IBM - Initial implementation
%;
%; @book{Mueller:2006,
%;   author = "Erik T. Mueller",
%;   year = "2006",
%;   title = "Commonsense Reasoning",
%;   address = "San Francisco",
%;   publisher = "Morgan Kaufmann/Elsevier",
%; }
%;

% load foundations/Root.e

% load foundations/EC.e

% sort palette
==> sort(palette).

% sort color
==> sort(color).

% palette Palette1
==> t(palette,palette1).

% color Red, Yellow, Blue, Green
==> t(color,red).
==> t(color,yellow).
==> t(color,blue).
==> t(color,green).

% event PlaceOnPalette(palette,color)
 %  event(placeOnPalette(palette,color)).
==> mpred_prop(placeOnPalette(palette,color),event).
==> meta_argtypes(placeOnPalette(palette,color)).

% fluent OnPalette(palette,color)
 %  fluent(onPalette(palette,color)).
==> mpred_prop(onPalette(palette,color),fluent).
==> meta_argtypes(onPalette(palette,color)).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:31
% [palette,color,time]
% !Happens(PlaceOnPalette(palette,Yellow),time) |
% !Happens(PlaceOnPalette(palette,Blue),time) ->
% Initiates(PlaceOnPalette(palette,color),OnPalette(palette,color),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:34
axiom(initiates(placeOnPalette(Palette, Color), onPalette(Palette, Color), Time),
    [not(happens(placeOnPalette(Palette, yellow), Time))]).
axiom(initiates(placeOnPalette(Palette, Color), onPalette(Palette, Color), Time),
    [not(happens(placeOnPalette(Palette, blue), Time))]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:36
% [palette,color1,color2,time]
% Happens(PlaceOnPalette(palette,Yellow),time) &
% color1 = Blue &
% color2 = Green ->
% Initiates(PlaceOnPalette(palette,color1),OnPalette(palette,color2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:40
axiom(initiates(placeOnPalette(Palette, Color1), onPalette(Palette, Color2), Time),
   
    [ happens(placeOnPalette(Palette, yellow), Time),
      equals(Color1, blue),
      equals(Color2, green)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:42
% [palette,color1,color2,time]
% !(Happens(PlaceOnPalette(palette,Yellow),time) &
%   Happens(PlaceOnPalette(palette,Blue),time)) &
% HoldsAt(OnPalette(palette,color1),time) &
% color1 != color2 ->
% Terminates(PlaceOnPalette(palette,color2),OnPalette(palette,color1),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:47
axiom(terminates(placeOnPalette(Palette, Color2), onPalette(Palette, Color1), Time),
   
    [ not(happens(placeOnPalette(Palette, yellow), Time)),
      holds_at(onPalette(Palette, Color1), Time),
      { dif(Color1, Color2)
      }
    ]).
axiom(terminates(placeOnPalette(Palette, Color2), onPalette(Palette, Color1), Time),
   
    [ not(happens(placeOnPalette(Palette, blue), Time)),
      holds_at(onPalette(Palette, Color1), Time),
      { dif(Color1, Color2)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:49
% [palette,color1,color2,time]
% Happens(PlaceOnPalette(palette,Yellow),time) &
% HoldsAt(OnPalette(palette,color2),time) &
% color1 = Blue &
% color2 != Green ->
% Terminates(PlaceOnPalette(palette,color1),OnPalette(palette,color2),time).
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:54
axiom(terminates(placeOnPalette(Palette, Color1), onPalette(Palette, Color2), Time),
   
    [ happens(placeOnPalette(Palette, yellow), Time),
      holds_at(onPalette(Palette, Color2), Time),
      equals(Color1, blue),
      { dif(Color2, green)
      }
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:56
%; state constraint
% [palette,color1,color2,time]
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:59
% HoldsAt(OnPalette(palette,color1),time) &
% HoldsAt(OnPalette(palette,color2),time) ->
% color1 = color2.
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:61
axiom(Color1=Color2,
   
    [ holds_at(onPalette(Palette, Color1), Time),
      holds_at(onPalette(Palette, Color2), Time)
    ]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:63
%; (1) place green over red


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:64
% HoldsAt(OnPalette(Palette1,Red),0).
axiom(initially(onPalette(palette1, red)),
    []).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:65
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:65
% Happens(PlaceOnPalette(Palette1,Green),0).
axiom(happens(placeOnPalette(palette1, green), t),
    [is_time(0)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:67
%; (2) place yellow+blue over green

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:68
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:68
% Happens(PlaceOnPalette(Palette1,Yellow),1).
axiom(happens(placeOnPalette(palette1, yellow), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:69
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:69
% Happens(PlaceOnPalette(Palette1,Blue),1).
axiom(happens(placeOnPalette(palette1, blue), start),
    [is_time(1), b(t, start), ignore(t+1=start)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:71
%; (3) place yellow

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:72
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:72
% Happens(PlaceOnPalette(Palette1,Yellow),2).
axiom(happens(placeOnPalette(palette1, yellow), t2),
    [is_time(2), b(t, t2), ignore(t+2=t2)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:74
%; (4) place blue

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:75
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:75
% Happens(PlaceOnPalette(Palette1,Blue),3).
axiom(happens(placeOnPalette(palette1, blue), t3),
    [is_time(3), b(t, t3), ignore(t+3=t3)]).


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:77
%; (5) place green

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:78
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:78
% Happens(PlaceOnPalette(Palette1,Yellow),4).
axiom(happens(placeOnPalette(palette1, yellow), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:79
% Delta: 
next_axiom_uses(delta).
 


% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:79
% Happens(PlaceOnPalette(Palette1,Blue),4).
axiom(happens(placeOnPalette(palette1, blue), t4),
    [is_time(4), b(t, t4), ignore(t+4=t4)]).

% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:81
% completion Delta Happens
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:82
==> completion(delta).
==> completion(happens).

% range time 0 5
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:84
==> range(time,0,5).

% range offset 1 1
% From /opt/logicmoo_workspace/packs_sys/small_adventure_games/prolog/ec_planner/examples/Mueller2006/Exercises/MixingPaints.e:85
==> range(offset,1,1).
%; End of file.
