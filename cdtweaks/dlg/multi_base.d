BEGIN ~MULTIG~

// this is what we say if we are kicked out and waiting around
IF ~Global("Waiting","LOCALS",1)
    !InParty(Myself)~ THEN BEGIN wait SAY @107007              // Hello again. A pleasure as it was before.
  IF ~~ THEN REPLY @107002 DO ~SetGlobal("Waiting","LOCALS",0) // Please rejoin the party.
                               JoinParty()~ EXIT
  IF ~~ THEN REPLY @107008 EXIT                                // You will have to wait here. I have no room for you at the moment.
END

// this is what we say when we were just recently kicked out
IF ~Global("Waiting","LOCALS",0)
    !InParty(Myself)~ THEN BEGIN left SAY @107012                    // Alas, we must part ways. Until next time then.
  IF ~~ THEN REPLY @107008 DO ~SetGlobal("Waiting","LOCALS",1)~ EXIT // You will have to wait here. I have no room for you at the moment.
  IF ~~ THEN REPLY @107002 DO ~JoinParty()~ EXIT                     // Please rejoin the party.
END

// how did we ever get here?
IF ~InParty(Myself)
    Gender(Myself,MALE)~ THEN BEGIN boy SAY @107010 // Hello there.
  IF ~~ THEN EXIT
END

// how did we ever get here?
IF ~InParty(Myself)
    Gender(Myself,FEMALE)~ THEN BEGIN girl SAY @107011 // Hello there.
  IF ~~ THEN EXIT
END