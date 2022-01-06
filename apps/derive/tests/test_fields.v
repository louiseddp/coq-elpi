From elpi.apps Require Import derive.fields.

From elpi.apps.derive.tests Require Import test_derive_stdlib test_tag.
Import test_derive_stdlib.Coverage test_tag.Coverage.

Module Coverage.

Elpi derive.fields empty.
Elpi derive.fields unit.
Elpi derive.fields peano.
Elpi derive.fields option.
Elpi derive.fields pair.
Elpi derive.fields seq.
Elpi derive.fields rose.
Elpi derive.fields nest.
Elpi derive.fields w.
Elpi derive.fields vect.
Elpi derive.fields dyn.
Fail Elpi derive.fields zeta.
Elpi derive.fields beta.
Elpi derive.fields iota.
Elpi derive.fields large.
Elpi derive.fields prim_int.
Elpi derive.fields prim_float.
Elpi derive.fields fo_record.
Elpi derive.fields pa_record.
Elpi derive.fields pr_record.
Elpi derive.fields dep_record.
Elpi derive.fields enum.
End Coverage.

Import Coverage.
Import PArith.

Check empty_fields_t : positive -> Type. 
Check empty_fields : forall (n:empty), empty_fields_t (empty_tag n). 
Check empty_construct : forall (p: positive),  empty_fields_t p -> option empty.
Check empty_constructP : forall (n:empty), empty_construct (empty_tag n) (empty_fields n) = Some n.

Check unit_fields_t : positive -> Type. 
Check unit_fields : forall (n:unit), unit_fields_t (unit_tag n). 
Check unit_construct : forall (p: positive),  unit_fields_t p -> option unit.
Check unit_constructP : forall (n:unit), unit_construct (unit_tag n) (unit_fields n) = Some n.

Check peano_fields_t : positive -> Type. 
Check peano_fields : forall (n:peano), peano_fields_t (peano_tag n). 
Check peano_construct : forall (p: positive),  peano_fields_t p -> option peano.
Check peano_constructP : forall (n:peano), peano_construct (peano_tag n) (peano_fields n) = Some n.

Check option_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check option_fields : forall (A:Type) (l:option A), option_fields_t A (option_tag A l). 
Check option_construct : forall (A:Type) (p: Numbers.BinNums.positive),  option_fields_t A p -> option (option A).
Check option_constructP : forall (A:Type) (l:option A), option_construct A (option_tag A l) (option_fields A l) = Some l.

Check pair_fields_t : Type -> Type -> Numbers.BinNums.positive -> Type. 
Check pair_fields : forall (A B :Type) (l:pair A B), pair_fields_t A B (pair_tag A B l). 
Check pair_construct : forall (A B:Type) (p: Numbers.BinNums.positive),  pair_fields_t A B p -> option (pair A B).
Check pair_constructP : forall (A B:Type) (l:pair A B), pair_construct A B (pair_tag A B l) (pair_fields A B l) = Some l.

Check seq_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check seq_fields : forall (A:Type) (l:seq A), seq_fields_t A (seq_tag A l). 
Check seq_construct : forall (A:Type) (p: Numbers.BinNums.positive),  seq_fields_t A p -> option (seq A).
Check seq_constructP : forall (A:Type) (l:seq A), seq_construct A (seq_tag A l) (seq_fields A l) = Some l.

Check rose_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check rose_fields : forall (A:Type) (l:rose A), rose_fields_t A (rose_tag A l). 
Check rose_construct : forall (A:Type) (p: Numbers.BinNums.positive),  rose_fields_t A p -> option (rose A).
Check rose_constructP : forall (A:Type) (l:rose A), rose_construct A (rose_tag A l) (rose_fields A l) = Some l.

Check nest_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check nest_fields : forall (A:Type) (l:nest A), nest_fields_t A (nest_tag A l). 
Check nest_construct : forall (A:Type) (p: Numbers.BinNums.positive),  nest_fields_t A p -> option (nest A).
Check nest_constructP : forall (A:Type) (l:nest A), nest_construct A (nest_tag A l) (nest_fields A l) = Some l.

Check w_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check w_fields : forall (A:Type) (l:w A), w_fields_t A (w_tag A l). 
Check w_construct : forall (A:Type) (p: Numbers.BinNums.positive),  w_fields_t A p -> option (w A).
Check w_constructP : forall (A:Type) (l:w A), w_construct A (w_tag A l) (w_fields A l) = Some l.

Check vect_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check vect_fields : forall (A:Type) (l:vect A), vect_fields_t A (vect_tag A l). 
Check vect_construct : forall (A:Type) (p: Numbers.BinNums.positive),  vect_fields_t A p -> option (vect A).
Check vect_constructP : forall (A:Type) (l:vect A), vect_construct A (vect_tag A l) (vect_fields A l) = Some l.

Check dyn_fields_t : positive -> Type. 
Check dyn_fields : forall (n:dyn), dyn_fields_t (dyn_tag n). 
Check dyn_construct : forall (p: positive),  dyn_fields_t p -> option dyn.
Check dyn_constructP : forall (n:dyn), dyn_construct (dyn_tag n) (dyn_fields n) = Some n.

Check zeta_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check zeta_fields : forall (A:Type) (l:zeta A), zeta_fields_t A (zeta_tag A l). 
Check zeta_construct : forall (A:Type) (p: Numbers.BinNums.positive),  zeta_fields_t A p -> option (zeta A).
Check zeta_constructP : forall (A:Type) (l:zeta A), zeta_construct A (zeta_tag A l) (zeta_fields A l) = Some l.

Check beta_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check beta_fields : forall (A:Type) (l:beta A), beta_fields_t A (beta_tag A l). 
Check beta_construct : forall (A:Type) (p: Numbers.BinNums.positive),  beta_fields_t A p -> option (beta A).
Check beta_constructP : forall (A:Type) (l:beta A), beta_construct A (beta_tag A l) (beta_fields A l) = Some l.

Check iota_fields_t : positive -> Type. 
Check iota_fields : forall (n:iota), iota_fields_t (iota_tag n). 
Check iota_construct : forall (p: positive),  iota_fields_t p -> option iota.
Check iota_constructP : forall (n:iota), iota_construct (iota_tag n) (iota_fields n) = Some n.

Check large_fields_t : positive -> Type. 
Check large_fields : forall (n:large), large_fields_t (large_tag n). 
Check large_construct : forall (p: positive),  large_fields_t p -> option large.
Check large_constructP : forall (n:large), large_construct (large_tag n) (large_fields n) = Some n.

Check prim_int_fields_t : positive -> Type. 
Check prim_int_fields : forall (n:prim_int), prim_int_fields_t (prim_int_tag n). 
Check prim_int_construct : forall (p: positive),  prim_int_fields_t p -> option prim_int.
Check prim_int_constructP : forall (n:prim_int), prim_int_construct (prim_int_tag n) (prim_int_fields n) = Some n.

Check prim_float_fields_t : positive -> Type. 
Check prim_float_fields : forall (n:prim_float), prim_float_fields_t (prim_float_tag n). 
Check prim_float_construct : forall (p: positive),  prim_float_fields_t p -> option prim_float.
Check prim_float_constructP : forall (n:prim_float), prim_float_construct (prim_float_tag n) (prim_float_fields n) = Some n.

Check pa_record_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check pa_record_fields : forall (A:Type) (l:pa_record A), pa_record_fields_t A (pa_record_tag A l). 
Check pa_record_construct : forall (A:Type) (p: Numbers.BinNums.positive),  pa_record_fields_t A p -> option (pa_record A).
Check pa_record_constructP : forall (A:Type) (l:pa_record A), pa_record_construct A (pa_record_tag A l) (pa_record_fields A l) = Some l.

Check pr_record_fields_t : Type -> Numbers.BinNums.positive -> Type. 
Check pr_record_fields : forall (A:Type) (l:pr_record A), pr_record_fields_t A (pr_record_tag A l). 
Check pr_record_construct : forall (A:Type) (p: Numbers.BinNums.positive),  pr_record_fields_t A p -> option (pr_record A).
Check pr_record_constructP : forall (A:Type) (l:pr_record A), pr_record_construct A (pr_record_tag A l) (pr_record_fields A l) = Some l.




