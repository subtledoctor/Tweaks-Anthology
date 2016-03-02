/////                                                  \\\\\
///// remove var checks                                \\\\\
/////                                                  \\\\\

// basic idea: PlayerHasStrongHold goes to true if 0, false if 1. this ensures
// player always gets offered. Also remove the SetGlobal as an extra precaution.
// update: keeping setglobal as requested by other modders
REPLACE_TRIGGER_TEXT ~bharval~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~bharval~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~bharval~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~bhnalla~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~bhnalla~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~bhnalla~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~bhoisig~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~bhoisig~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~bhoisig~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~cechalle~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~cechalle~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~cechalle~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~garren~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~garren~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~garren~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~hprelate~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~hprelate~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~hprelate~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~lavok~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~lavok~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~lavok~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~nalia~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~nalia~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~nalia~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~naliaj~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~naliaj~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~naliaj~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~raelis~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~raelis~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~raelis~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~renal~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~renal~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~renal~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

REPLACE_TRIGGER_TEXT ~uhmay01~    ~Global("PlayerHasStronghold","GLOBAL",0)~ ~True()~
REPLACE_TRIGGER_TEXT ~uhmay01~    ~Global("PlayerHasStronghold","GLOBAL",1)~ ~False()~
//REPLACE_ACTION_TEXT  ~uhmay01~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

/////                                                  \\\\\
///// add decline options for ranger/druid/bard        \\\\\
/////                                                  \\\\\

// give players a chance to decline the druid grove stronghold
ALTER_TRANS CECHALLE BEGIN 4 END BEGIN 2 END BEGIN EPILOGUE ~GOTO CDDruidChoice~ END // redirect acceptance option to new choice state

APPEND CECHALLE

  IF ~~ THEN BEGIN CDDruidChoice SAY @116015 = @116016
    IF ~~                               REPLY @116017 GOTO CDGroveAccepted
    IF ~~                               REPLY @116018 GOTO CDGroveAccepted
    IF ~~                               REPLY @116019 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116020 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116021 GOTO CDGroveDeclined
  END

  IF ~~ THEN BEGIN CDGroveAccepted SAY @116022
    COPY_TRANS CECHALLE 7
  END

  IF ~~ THEN BEGIN CDGroveDeclined SAY @116023
    IF ~~ THEN GOTO 5
  END

END

// if no restrictions variant installed, the class check will always be true and the player will always go to the new choice states.
// if class restrictions are in place, we need to retain these class checks, though players will get a chance to decline the stronghold.
ALTER_TRANS RAELIS BEGIN 71 END BEGIN 0 END BEGIN EPILOGUE ~GOTO CDRewardChoiceRaelis~ END // redirect acceptance option to new choice state
ALTER_TRANS HAERDA BEGIN 99 END BEGIN 0 END BEGIN EPILOGUE ~EXTERN RAELIS CDRewardChoiceRaelis2~ END // redirect acceptance option to new choice state

APPEND RAELIS

  IF ~~ THEN BEGIN CDRewardChoiceRaelis SAY @116002
    IF ~~ REPLY @116003 GOTO CDJack
    IF ~~ REPLY @116004 GOTO CDJack
    IF ~~ REPLY @116005 GOTO 22
  END

  IF ~~ THEN BEGIN CDRewardChoiceRaelis2 SAY @116006 = @116007
    IF ~~ REPLY @116003 GOTO 21
    IF ~~ REPLY @116004 GOTO 21
    IF ~~ REPLY @116005 GOTO 20
  END
  
  IF ~~ THEN BEGIN CDJack SAY @116008
    COPY_TRANS RAELIS 23
  END
  
END

// give players a chance to decline the ranger stronghold
ADD_TRANS_TRIGGER UHMAY01 34 ~False()~ DO 0 // false existing reply-less trigger, other PC replies not shown
EXTEND_BOTTOM UHMAY01 34
  IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116009 GOTO CDDeclineCabin
  IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116010 GOTO CDDeclineCabin
  IF ~GlobalGT("Chapter","GLOBAL",5)~ REPLY @116011 GOTO CDDeclineCabin
  IF ~~                               REPLY @116012 GOTO 35
  IF ~~                               REPLY @116013 GOTO 38
END

APPEND UHMAY01

  IF ~~ THEN BEGIN CDDeclineCabin SAY @116014
    IF ~~ THEN GOTO 37
  END
  
END
