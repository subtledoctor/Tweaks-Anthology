REPLACE_TRIGGER_TEXT ~bharval~  ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~
REPLACE_TRIGGER_TEXT ~bhnalla~  ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~
REPLACE_TRIGGER_TEXT ~bhoisig~  ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~
REPLACE_TRIGGER_TEXT ~borinall~ ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~travin~   ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

// misc extra dialogue tweaks
REPLACE_STATE_TRIGGER bharval 0
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE_STATE_TRIGGER BHNALLA 0
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE_STATE_TRIGGER bhoisig 42
~Global("BeholderPlot","GLOBAL",2)
Global("JoinHelm","GLOBAL",0)
Class(Player1,CLERIC_ALL)~

REPLACE_STATE_TRIGGER bhoisig 59
~Global("BeholderPlot","GLOBAL",2)
!Class(Player1,CLERIC_ALL)~