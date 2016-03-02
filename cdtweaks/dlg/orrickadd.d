EXTEND_BOTTOM dorrick 14
IF ~GlobalGT("Chapter","GLOBAL",1)~ THEN REPLY @325001 DO ~StartStore("KUOrk1",Protagonist)~ EXIT
IF ~GlobalGT("Chapter","GLOBAL",3)~ THEN REPLY @325002 DO ~StartStore("KUOrk2",Protagonist)~ EXIT
END 