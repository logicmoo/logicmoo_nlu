:- module(nlkb7166,[
   assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2,
   assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,
   assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,
   assertion_content/11,assertion_content/12,assertion_content/13]).


:- public((assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,assertion_content/11,assertion_content/12,assertion_content/13)).
:- export((assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,assertion_content/11,assertion_content/12,assertion_content/13)).
:- multifile((assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,assertion_content/11,assertion_content/12,assertion_content/13)).
:- dynamic((assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,assertion_content/11,assertion_content/12,assertion_content/13)).
:- discontiguous((assertion_content/3,assertion_content/4,assertion_content/5,assertion_content/6,assertion_content/7,assertion_content/8,assertion_content/9,assertion_content/10,assertion_content/11,assertion_content/12,assertion_content/13)).

:- public((assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2)).
:- export((assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2)).
:- multifile((assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2)).
:- dynamic((assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2)).
:- discontiguous((assertion_lifting_consequent/2,assertion_lifting/2,assertion_mt/2)).

:- set_prolog_flag(double_quotes,string).
:- style_check(-singleton).

:-include('ac_xnl/ac_xnl_7166_part_000000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_000900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_001900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_002900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_003900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_004900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_005900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_006900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_007900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_008900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_009900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_010900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_011900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_012900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_013900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_014900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015500.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015600.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015700.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015800.nldata').
:-include('ac_xnl/ac_xnl_7166_part_015900.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016000.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016100.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016200.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016300.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016400.nldata').
:-include('ac_xnl/ac_xnl_7166_part_016500.nldata').


/*
split -l 8000 -d -a 4 --additional-suffix=00.nldata sorted ac_xnl/ac_xnl_7166_part_

   assertion_content/3
   assertion_content/4
   assertion_content/5
   assertion_content/6
   assertion_content/7
   assertion_content/8
   assertion_content/9
   % assertion_content/10
   assertion_content/11

*/


