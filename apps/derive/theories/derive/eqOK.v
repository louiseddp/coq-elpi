(* Generates the final, correctness lemma, for equality tests by combinig the
   output of eqcorrect and param1_witness.

   license: GNU Lesser General Public License Version 2.1 or later           
   ------------------------------------------------------------------------- *)

From elpi Require Export elpi. From elpi.apps Require Export  derive.param1 derive.param1_trivial derive.eqK derive.eqcorrect.

Elpi Command derive.eqOK.

Elpi Accumulate File "paramX-lib.elpi" From elpi.apps.derive.
Elpi Accumulate File "param1.elpi" From elpi.apps.derive.
Elpi Accumulate Db derive.param1.db.
Elpi Accumulate Db derive.param1.trivial.db.
Elpi Accumulate Db derive.eqcorrect.db.

Elpi Accumulate File "eqOK.elpi" From elpi.apps.derive.
Elpi Accumulate lp:{{
  main [str I, str O] :- !, coq.locate I (indt GR), derive.eqOK.main GR O _.
  main [str I] :- !,
    coq.locate I (indt GR), Name is {coq.gref->id (indt GR)} ^ "_eq_OK",
    derive.eqOK.main GR Name _.
  main _ :- usage.

  usage :-
    coq.error "Usage: derive.eqOK <inductive name> [<output name>]".
}}.  
Elpi Typecheck.

