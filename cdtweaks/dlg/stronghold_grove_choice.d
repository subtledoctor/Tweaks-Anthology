// give players a chance to decline the druid grove stronghold
ALTER_TRANS CECHALLE BEGIN 4 END BEGIN 2 END BEGIN EPILOGUE ~GOTO CDDruidChoice~ END // redirect acceptance option to new choice state

APPEND CECHALLE

  IF ~~ THEN BEGIN CDDruidChoice SAY @116015 = @116016
    IF ~~                                             REPLY @116017 GOTO CDGroveAccepted
    IF ~~                                             REPLY @116018 GOTO CDGroveAccepted
    IF ~~                                             REPLY @116019 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ REPLY @116020 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ REPLY @116021 GOTO CDGroveDeclined
  END

  IF ~~ THEN BEGIN CDGroveAccepted SAY @116022
    COPY_TRANS CECHALLE 7
  END

  IF ~~ THEN BEGIN CDGroveDeclined SAY @116023
    IF ~~ THEN GOTO 5
  END

END