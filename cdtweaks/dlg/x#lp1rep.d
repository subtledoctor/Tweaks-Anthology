/* Global list for LPS:
 / X#TroubadorRep (heard offer from Sam or another bard) - intramod use
 / X#LakeP1RepTalk (heard Sam's offer) - intramod use
 / X#UseTroubadorRep (used the service) - intramod and crossmod use
 / X#TroubadorTimer1 (delay between using services) - In-Game timer 3 days
 / X#myNPCRep (numbered additional states) - 0, 1, 2 (increment to 3 closes) 
*/
BEGIN X#LP1REP

/* X#LP1REP.D Lake Poet Sam */
/* Down on his luck */

/* Initial Meeting */
CHAIN IF ~NumTimesTalkedTo(0) Global("X#LakeP1RepTalk","GLOBAL",0)~ THEN ~X#LP1REP~ X#Troubador1Start
@0
END
++ @1 EXTERN ~X#LP1REP~ X#Troubador1OfferInterested
++ @2 EXTERN ~X#LP1REP~ X#Troubador1OfferInterested
+ ~InParty("garrick")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") InParty("eldoth")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") !InParty("eldoth") InParty("will")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") !InParty("eldoth") !InParty("will") InParty("devotil")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
++ @4 EXTERN ~X#LP1REP~ X#Troubador1OfferHearMeOut
++ @5 EXTERN ~X#LP1REP~ X#Troubador1OfferDeclined

APPEND ~X#LP1REP~

/* dealt with LP# before */
IF ~NumTimesTalkedToGT(0) Global("X#LakeP1RepTalk","GLOBAL",1)~ THEN X#Troubador1Again
SAY @6
++ @7 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ + X#Troubador1OfferInterested
++ @8 + X#Troubador1OfferDeclined
+ ~InParty("garrick")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") InParty("eldoth")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") !InParty("eldoth") InParty("will")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
+ ~!InParty("garrick") !InParty("eldoth") !InParty("will") InParty("devotil")~ + @3 EXTERN ~X#LP1REP~ X#Troubador1OwnBard
END

/* met LP#, did not hear him out */
IF ~NumTimesTalkedToGT(0) Global("X#LakeP1RepTalk","GLOBAL",0)~ THEN X#Troubador1TryAgain
SAY @9
++ @10 + X#Troubador1OfferInterested
++ @8 + X#Troubador1OfferDeclined
END

END

/* Hear me out */
CHAIN ~X#LP1REP~ X#Troubador1OfferHearMeOut
@11
END
++ @12 EXTERN ~X#LP1REP~ X#Troubador1OfferInterested
++ @13 EXTERN ~X#LP1REP~ X#Troubador1OfferDeclined

/* We've got our own bard */
CHAIN ~X#LP1REP~ X#Troubador1OwnBard
@14
END
++ @12 EXTERN ~X#LP1REP~ X#Troubador1OfferInterested
++ @15 EXTERN ~X#LP1REP~ X#Troubador1OfferDeclined

/* Sales pitch - NPCs interject here and meeting globals get set here */
CHAIN ~X#LP1REP~ X#Troubador1OfferInterested
@16 // %(npc)_BANTER% replace with (npc)j.dlg -- InMyArea() replace with See() -- use imoen2.dlg for banters
== ~SAFANJ~ IF ~InParty("safana") See("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",0)~ THEN @17 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~SAFANJ~ IF ~InParty("safana") See("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",1)~ THEN @18 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~SAFANJ~ IF ~InParty("safana") See("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",2)~ THEN @19 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~JAHEIJ~ IF ~InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",0)~ THEN @20 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~
== ~JAHEIJ~ IF ~InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",1)~ THEN @21 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~ 
== ~JAHEIJ~ IF ~InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",2)~ THEN @22 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~
== ~KHALIJ~ IF ~InParty("khalid") See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",0)~ THEN @23 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~KHALIJ~ IF ~InParty("khalid") See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",1)~ THEN @24 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~KHALIJ~ IF ~InParty("khalid") See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",2)~ THEN @25 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~MONTAJ~ IF ~InParty("montaron") See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",0)~ THEN @26 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~MONTAJ~ IF ~InParty("montaron") See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",1)~ THEN @27 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~MONTAJ~ IF ~InParty("montaron") See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",2)~ THEN @28 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~XZARJ~ IF ~InParty("xzar") See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",0)~ THEN @29 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~XZARJ~ IF ~InParty("xzar") See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",1)~ THEN @30 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~XZARJ~ IF ~InParty("xzar") See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",2)~ THEN @31 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~GARRIJ~ IF ~InParty("garrick") See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",0)~ THEN @32 DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~GARRIJ~ IF ~InParty("garrick") See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",1)~ THEN @33 DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~GARRIJ~ IF ~InParty("garrick") See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",2)~ THEN @34
== ~X#LP1REP~ IF ~InParty("garrick") See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",2)~ THEN @35 DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~ELDOTJ~ IF ~InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",0)~ THEN @36 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~ELDOTJ~ IF ~InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",1)~ THEN @37 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~ELDOTJ~ IF ~InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",2)~ THEN @38 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~AJANTJ~ IF ~InParty("ajantis") See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",0)~ THEN @39 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~AJANTJ~ IF ~InParty("ajantis") See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",1)~ THEN @40 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~AJANTJ~ IF ~InParty("ajantis") See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",2)~ THEN @41 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~IMOEN2~ IF ~InParty("IMOEN") See("IMOEN") !StateCheck("IMOEN",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",0)~ THEN @42 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~IMOEN2~ IF ~InParty("IMOEN") See("IMOEN") !StateCheck("IMOEN",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",1)~ THEN @43 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~IMOEN2~ IF ~InParty("IMOEN") See("IMOEN") !StateCheck("IMOEN",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",2)~ THEN @44 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~FALDOJ~ IF ~InParty("faldorn") See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",0)~ THEN @45 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~FALDOJ~ IF ~InParty("faldorn") See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",1)~ THEN @46 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~FALDOJ~ IF ~InParty("faldorn") See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",2)~ THEN @47 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~XANJ~ IF ~InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",0)~ THEN @48 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~XANJ~ IF ~InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",1)~ THEN @49 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~XANJ~ IF ~InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",2)~ THEN @50 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~KAGAIJ~ IF ~InParty("kagain") See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",0)~ THEN @51  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~KAGAIJ~ IF ~InParty("kagain") See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",1)~ THEN @52  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~KAGAIJ~ IF ~InParty("kagain") See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",2)~ THEN @53  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~KIVANJ~ IF ~InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",0)~ THEN @54 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~KIVANJ~ IF ~InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",1)~ THEN @55 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~KIVANJ~ IF ~InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",2)~ THEN @56 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~YESLIJ~ IF ~InParty("yeslick") See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",0)~ THEN @57 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~YESLIJ~ IF ~InParty("yeslick") See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",1)~ THEN @58 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~YESLIJ~ IF ~InParty("yeslick") See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",2)~ THEN @59 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~QUAYLJ~ IF ~InParty("quayle") See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",0)~ THEN @60 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~QUAYLJ~ IF ~InParty("quayle") See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",1)~ THEN @61 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~QUAYLJ~ IF ~InParty("quayle") See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",2)~ THEN @62 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~SKIEJ~ IF ~InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",0)~ THEN @63 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~SKIEJ~ IF ~InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",1)~ THEN @64 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~SKIEJ~ IF ~InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",2)~ THEN @65 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~CORANJ~ IF ~InParty("coran") See("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",0)~ THEN @66 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~CORANJ~ IF ~InParty("coran") See("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",1)~ THEN @67 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~CORANJ~ IF ~InParty("coran") See("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",2)~ THEN @68 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~MINSCJ~ IF ~InParty("minsc") See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",0)~ THEN @69 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~MINSCJ~ IF ~InParty("minsc") See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",1)~ THEN @70 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~MINSCJ~ IF ~InParty("minsc") See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",2)~ THEN @71 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",0)~ THEN @72 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",1)~ THEN @73 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",2)~ THEN @74 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~!InParty("minsc") InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",0)~ THEN @75 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~!InParty("minsc") InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",1)~ THEN @76 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~DYNAHJ~ IF ~!InParty("minsc") InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",2)~ THEN @74 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~EDWINJ~ IF ~InParty("edwin") See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",0)~ THEN @77 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~EDWINJ~ IF ~InParty("edwin") See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",1)~ THEN @78 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~EDWINJ~ IF ~InParty("edwin") See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",2)~ THEN @79 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~BRANWJ~ IF ~InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",0)~ THEN @80 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~ 
== ~BRANWJ~ IF ~InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",1)~ THEN @81 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~ 
== ~BRANWJ~ IF ~InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",2)~ THEN @82 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~
== ~TIAXJ~ IF ~InParty("tiax") See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",0)~ THEN @83 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~ 
== ~TIAXJ~ IF ~InParty("tiax") See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",1)~ THEN @84 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~ 
== ~TIAXJ~ IF ~InParty("tiax") See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",2)~ THEN @85 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~
== ~VICONJ~ IF ~InParty("viconia") See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",0)~ THEN @86 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~ 
== ~VICONJ~ IF ~InParty("viconia") See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",1)~ THEN @87 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~ 
== ~VICONJ~ IF ~InParty("viconia") See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",2)~ THEN @88 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~ 
== ~SHARTJ~ IF ~InParty("sharteel") See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",0)~ THEN @89 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~ 
== ~SHARTJ~ IF ~InParty("sharteel") See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",1)~ THEN @90 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~ 
== ~SHARTJ~ IF ~InParty("sharteel") See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",2)~ THEN @91 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~
== ~ALORAJ~ IF ~InParty("alora") See("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",0)~ THEN @92 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~ 
== ~ALORAJ~ IF ~InParty("alora") See("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",1)~ THEN @93 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~ 
== ~ALORAJ~ IF ~InParty("alora") See("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",2)~ THEN @94 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~
== ~X#LP1REP~ @95 
END

IF ~ReputationGT(Player1,10)~ THEN REPLY @96 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP1RepTalk","GLOBAL",1)~ EXTERN ~X#LP1REP~ X#Troubador1WhyBadGood
IF ~ReputationLT(Player1,11)~ THEN REPLY @96 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP1RepTalk","GLOBAL",1)~ EXTERN ~X#LP1REP~ X#Troubador1WhyBadEvil
IF ~~ THEN REPLY @97  DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP1RepTalk","GLOBAL",1) IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ EXTERN ~X#LP1REP~ X#Troubador1MakeBad
IF ~Class(Player1,PALADIN)~ THEN REPLY @98 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP1RepTalk","GLOBAL",1)~ EXIT
IF ~Class(Player1,THIEF)~ THEN REPLY @99 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP1RepTalk","GLOBAL",1)~ EXIT
IF ~GlobalGT("X#TroubadorRep","GLOBAL",0) GlobalGT("X#LakeP1RepTalk","GLOBAL",0)~ THEN REPLY @100 EXTERN ~X#LP1REP~ X#Troubador1RepAlready

APPEND ~X#LP1REP~
/* met a different troubador */
IF ~~ THEN X#Troubador1RepAlready
SAY @101
++ @102 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ + X#Troubador1OfferInterested
++ @8 + X#Troubador1OfferDeclined
END

/* No, thanks */
IF ~~ X#Troubador1OfferDeclined
SAY @103
IF ~~ THEN EXIT
END

END

/* Why should we use this service? */
CHAIN ~X#LP1REP~ X#Troubador1WhyBadGood
@104
== ~JAHEIJ~ IF ~InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @105
END
IF ~~ THEN REPLY @97 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1)~ EXTERN ~X#LP1REP~ X#Troubador1MakeBad
IF ~~ THEN REPLY @106 EXTERN ~X#LP1REP~ X#Troubador1OfferDeclined

CHAIN ~X#LP1REP~ X#Troubador1WhyBadEvil
@107
== ~VICONJ~ IF ~InParty("viconia") See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @108
END
IF ~~ THEN REPLY @109 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ EXTERN ~X#LP1REP~ X#Troubador1MakeBad
IF ~~ THEN REPLY @106 EXTERN ~X#LP1REP~ X#Troubador1OfferDeclined

/* the deal is done */
APPEND ~X#LP1REP~
IF ~~ THEN X#Troubador1MakeBad
SAY @110
+ ~Reputation(Player1,20)~ + @111 + X#T1MB20.1
+ ~Reputation(Player1,19)~ + @112 + X#T1MB19.1
+ ~Reputation(Player1,18)~ + @112 + X#T1MB18.1
+ ~Reputation(Player1,17)~ + @112 + X#T1MB17.1
+ ~Reputation(Player1,16)~ + @112 + X#T1MB16.1
+ ~Reputation(Player1,15)~ + @112 + X#T1MB15.1
+ ~Reputation(Player1,14)~ + @112 + X#T1MB14.1
+ ~Reputation(Player1,13)~ + @112 + X#T1MB13.1
+ ~Reputation(Player1,12)~ + @112 + X#T1MB12.1
+ ~Reputation(Player1,11)~ + @112 + X#T1MB11.1
+ ~Reputation(Player1,10)~ + @112 + X#T1MB10.1
+ ~Reputation(Player1,9)~ + @112 + X#T1MB9.1
+ ~Reputation(Player1,8)~ + @112 + X#T1MB8.1
+ ~Reputation(Player1,7)~ + @112 + X#T1MB7.1
+ ~Reputation(Player1,6)~ + @112 + X#T1MB6.1
+ ~Reputation(Player1,5)~ + @112 + X#T1MB5.1
+ ~Reputation(Player1,4)~ + @112 + X#T1MB4.1
+ ~ReputationLT(Player1,4)~ + @112 + X#T1MBNotPossible
+ ~Reputation(Player1,20)~ + @113 + X#T1MB20.2
+ ~Reputation(Player1,19)~ + @113 + X#T1MB19.2
+ ~Reputation(Player1,18)~ + @113 + X#T1MB18.2
+ ~Reputation(Player1,17)~ + @113 + X#T1MB17.2
+ ~Reputation(Player1,16)~ + @113 + X#T1MB16.2
+ ~Reputation(Player1,15)~ + @113 + X#T1MB15.2
+ ~Reputation(Player1,14)~ + @113 + X#T1MB14.2
+ ~Reputation(Player1,13)~ + @113 + X#T1MB13.2
+ ~Reputation(Player1,12)~ + @113 + X#T1MB12.2
+ ~Reputation(Player1,11)~ + @113 + X#T1MB11.2
+ ~Reputation(Player1,10)~ + @113 + X#T1MB10.2
+ ~Reputation(Player1,9)~ + @113 + X#T1MB9.2
+ ~Reputation(Player1,8)~ + @113 + X#T1MB8.2
+ ~Reputation(Player1,7)~ + @113 + X#T1MB7.2
+ ~Reputation(Player1,6)~ + @113 + X#T1MB6.2
+ ~Reputation(Player1,5)~ + @113 + X#T1MB5.2
+ ~Reputation(Player1,4)~ + @113 + X#T1MBALittle
+ ~ReputationLT(Player1,4)~ + @113 + X#T1MBNotPossible
+ ~Reputation(Player1,20)~ + @114 + X#T1MB20.3
+ ~Reputation(Player1,19)~ + @114 + X#T1MB19.3
+ ~Reputation(Player1,18)~ + @114 + X#T1MB18.3
+ ~Reputation(Player1,17)~ + @114 + X#T1MB17.3
+ ~Reputation(Player1,16)~ + @114 + X#T1MB16.3
+ ~Reputation(Player1,15)~ + @114 + X#T1MB15.3
+ ~Reputation(Player1,14)~ + @114 + X#T1MB14.3
+ ~Reputation(Player1,13)~ + @114 + X#T1MB13.3
+ ~Reputation(Player1,12)~ + @114 + X#T1MB12.3
+ ~Reputation(Player1,11)~ + @114 + X#T1MB11.3
+ ~Reputation(Player1,10)~ + @114 + X#T1MB10.3
+ ~Reputation(Player1,9)~ + @114 + X#T1MB9.3
+ ~Reputation(Player1,8)~ + @114 + X#T1MB8.3
+ ~Reputation(Player1,7)~ + @114 + X#T1MB7.3
+ ~Reputation(Player1,6)~ + @114 + X#T1MB6.3
+ ~Reputation(Player1,5)~ + @114 + X#T1MBModerate
+ ~Reputation(Player1,4)~ + @114 + X#T1MBALittle
+ ~ReputationLT(Player1,4)~ + @114 + X#T1MBNotPossible
END

IF ~~ THEN X#T1MB20.1
SAY @115 // removed all DestroyGold()
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB19.1
SAY @118
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB18.1
SAY @119
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(999)~ + @117 DO ~TakePartyGold(1000) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB17.1
SAY @120
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB16.1
SAY @121
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB15.1
SAY @122
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(399)~ + @117 DO ~TakePartyGold(400) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB14.1
SAY @123
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(199)~ + @117 DO ~TakePartyGold(200) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB13.1
SAY @124
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(299)~ + @117 DO ~TakePartyGold(300) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB12.1
SAY @125
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(399)~ + @117 DO ~TakePartyGold(400) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB11.1
SAY @126
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB10.1
SAY @127
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB9.1
SAY @128
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB8.1
SAY @129
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB7.1
SAY @130
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB6.1
SAY @131
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1999)~ + @117 DO ~TakePartyGold(2000) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB5.1
SAY @132
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2499)~ + @117 DO ~TakePartyGold(2500) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB4.1
SAY @133
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(4999)~ + @117 DO ~TakePartyGold(5000) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB20.2
SAY @134
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2399)~ + @117 DO ~TakePartyGold(2400) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB19.2
SAY @135
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1899)~ + @117 DO ~TakePartyGold(1900) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB18.2
SAY @136
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1299)~ + @117 DO ~TakePartyGold(1300) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB17.2
SAY @137
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB16.2
SAY @138
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB15.2
SAY @139
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB14.2
SAY @140
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(449)~ + @117 DO ~TakePartyGold(450) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB13.2
SAY @141
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(599)~ + @117 DO ~TakePartyGold(600) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB12.2
SAY @142
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB11.2
SAY @143
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(999)~ + @117 DO ~TakePartyGold(1000) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB10.2
SAY @144
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1399)~ + @117 DO ~TakePartyGold(1400) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB9.2
SAY @145
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1799)~ + @117 DO ~TakePartyGold(1800) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB8.2
SAY @146
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2399)~ + @117 DO ~TakePartyGold(2400) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB7.2
SAY @147
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2999)~ + @117 DO ~TakePartyGold(3000) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB6.2
SAY @148
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(3999)~ + @117 DO ~TakePartyGold(4000) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB5.2
SAY @149
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(6499)~ + @117 DO ~TakePartyGold(6500) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB20.3
SAY @150
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2799)~ + @117 DO ~TakePartyGold(2800) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB19.3
SAY @132
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2499)~ + @117 DO ~TakePartyGold(2500) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB18.3
SAY @131
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1999)~ + @117 DO ~TakePartyGold(2000) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB17.3
SAY @151
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB16.3
SAY @138
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB15.3
SAY @152
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB14.3
SAY @153
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB13.3
SAY @154
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB12.3
SAY @155
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB11.3
SAY @156
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(1599)~ + @117 DO ~TakePartyGold(1600) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB10.3
SAY @157
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2199)~ + @117 DO ~TakePartyGold(2200) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB9.3
SAY @158
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(2799)~ + @117 DO ~TakePartyGold(2800) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB8.3
SAY @159
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(3699)~ + @117 DO ~TakePartyGold(3700) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB7.3
SAY @160
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(3999)~ + @117 DO ~TakePartyGold(4000) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MB6.3
SAY @161
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(7499)~ + @117 DO ~TakePartyGold(7500) ReputationInc(-3)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MBALittle
SAY @162
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(4999)~ + @117 DO ~TakePartyGold(5000) ReputationInc(-1)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MBModerate
SAY @163
++ @116 + X#Troubador1NoCoin
+ ~PartyGoldGT(7499)~ + @117 DO ~TakePartyGold(7500) ReputationInc(-2)~ + X#Troubador1Final
END

IF ~~ THEN X#T1MBNotPossible
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN X#Troubador1NoCoin
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN X#Troubador1Final
SAY @166
IF ~~ THEN DO ~SetGlobal("X#TT1Deactivate","GLOBAL",1)~ EXIT
END

END
