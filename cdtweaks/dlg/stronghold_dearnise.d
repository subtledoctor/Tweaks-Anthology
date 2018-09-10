REPLACE_TRIGGER_TEXT ~nalia~    ~Class(Player1,FIGHTER\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~naliaj~   ~Class(Player1,FIGHTER\(_[A-Z]+\)*)~ ~True()~

ADD_TRANS_ACTION demson 
BEGIN 119 END
BEGIN END
~EraseJournalEntry(22917)~
