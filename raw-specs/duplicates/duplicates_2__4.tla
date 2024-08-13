target: specs/duplicates/inv_4/duplicates.tla
!!!
!tlacli check % --inv TypeInvariant --inv IsCorrect
!tlacli translate %
!!!
---- MODULE duplicates_2__4 ----
EXTENDS Integers, Sequences, TLC

S == 1..10

(*--algorithm dup
variable 
  seq \in S \X S \X S \X S;
  index = 1;
  seen = {};
  is_unique = TRUE;

define
  TypeInvariant ==
    /\ is_unique \in BOOLEAN
    /\ seen \subseteq S
    /\ index \in 1..Len(seq)+1
    
  IsUnique(s) == 
    \A i, j \in 1..Len(s): 
      i # j => s[i] # s[j]

  IsCorrect == pc = "Done" => is_unique = IsUnique(seq)
end define; 

begin
  Iterate:
    while index <= Len(seq) do
      if seq[index] \notin seen then
        seen := seen \union {seq[index]};
      else
        is_unique := FALSE;
      end if;
      index := index + 1;
    end while;
end algorithm; *)
====
