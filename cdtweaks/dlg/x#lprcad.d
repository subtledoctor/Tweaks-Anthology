/* X#LPRCAD.D  (Tutu/BGT) */

APPEND ~ajantj~
IF WEIGHT #-1 ~Global("X#AjantisRepSellerComplaint","GLOBAL",1)~ THEN X#AjantisRepSellerComplain
SAY @0
IF ~~ THEN DO ~SetGlobal("X#AjantisRepSellerComplaint","GLOBAL",2)~ EXIT
END
END