EXTEND_BOTTOM ~Multij~ 0
IF ~Global("EnteredArmInn","GLOBAL",1)
    !Global("IslandTravel","GLOBAL",1) // not on Werewolf Isle
    !Global("teth","GLOBAL",1) // not trapped under Candlekeep AR2613, 2615, 2619, 5506
    !Global("teth","GLOBAL",2)
    !Global("Z!EmulAreaCheck","GLOBAL","5100") // Gnoll Stronghold
    !Global("Z!EmulAreaCheck","GLOBAL","5101") // Gnoll Stronghold Xvart Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5102") // Gnoll Stronghold Treasure Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5103") // Gnoll Stronghold Carrion Crawler Cave
    !Global("Z!EmulAreaCheck","GLOBAL","0506") // Chess Board
    !Global("Z!EmulAreaCheck","GLOBAL","0507") // Ice Node
    !Global("Z!EmulAreaCheck","GLOBAL","0508") // Fire Node
    !Global("Z!EmulAreaCheck","GLOBAL","0509") // Air Node
    !Global("Z!EmulAreaCheck","GLOBAL","0510") // Earth Node
    !Global("Z!EmulAreaCheck","GLOBAL","0511") // Lower 2
    !Global("Z!EmulAreaCheck","GLOBAL","0512") // Lower 3
    !Global("Z!EmulAreaCheck","GLOBAL","0513") // Lower 4
    !Global("Z!EmulAreaCheck","GLOBAL","0514") // Lower 5
    !Global("Z!EmulAreaCheck","GLOBAL","0515") // Statue Room
    !Global("Z!EmulAreaCheck","GLOBAL","0516") // Demon Knight
    !Global("Z!EmulAreaCheck","GLOBAL","1008") // ice isle surface
    !Global("Z!EmulAreaCheck","GLOBAL","1009") // ice isle cavern 1
    !Global("Z!EmulAreaCheck","GLOBAL","1010") // ice isle cavern 2
    !Global("Z!EmulAreaCheck","GLOBAL","2302")~ // not in the area where the NPC will be sent
THEN REPLY @107001 GOTO dmww_fai

IF ~Global("EnteredBeregost","GLOBAL",1)
    !Global("IslandTravel","GLOBAL",1)
    !Global("teth","GLOBAL",1)
    !Global("teth","GLOBAL",2)
    !Global("Z!EmulAreaCheck","GLOBAL","5100") // Gnoll Stronghold
    !Global("Z!EmulAreaCheck","GLOBAL","5101") // Gnoll Stronghold Xvart Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5102") // Gnoll Stronghold Treasure Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5103") // Gnoll Stronghold Carrion Crawler Cave
    !Global("Z!EmulAreaCheck","GLOBAL","0506") // Chess Board
    !Global("Z!EmulAreaCheck","GLOBAL","0507") // Ice Node
    !Global("Z!EmulAreaCheck","GLOBAL","0508") // Fire Node
    !Global("Z!EmulAreaCheck","GLOBAL","0509") // Air Node
    !Global("Z!EmulAreaCheck","GLOBAL","0510") // Earth Node
    !Global("Z!EmulAreaCheck","GLOBAL","0511") // Lower 2
    !Global("Z!EmulAreaCheck","GLOBAL","0512") // Lower 3
    !Global("Z!EmulAreaCheck","GLOBAL","0513") // Lower 4
    !Global("Z!EmulAreaCheck","GLOBAL","0514") // Lower 5
    !Global("Z!EmulAreaCheck","GLOBAL","0515") // Statue Room
    !Global("Z!EmulAreaCheck","GLOBAL","0516") // Demon Knight
    !Global("Z!EmulAreaCheck","GLOBAL","1008") // ice isle surface
    !Global("Z!EmulAreaCheck","GLOBAL","1009") // ice isle cavern 1
    !Global("Z!EmulAreaCheck","GLOBAL","1010") // ice isle cavern 2
    !Global("Z!EmulAreaCheck","GLOBAL","3306")~ // not in the area where the NPC will be sent
THEN REPLY @107015  GOTO dmww_beregost

IF ~GlobalGT("Chapter","GLOBAL",1)
    !Global("IslandTravel","GLOBAL",1)
    !Global("teth","GLOBAL",1)
    !Global("teth","GLOBAL",2)
    !Global("Z!EmulAreaCheck","GLOBAL","5100") // Gnoll Stronghold
    !Global("Z!EmulAreaCheck","GLOBAL","5101") // Gnoll Stronghold Xvart Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5102") // Gnoll Stronghold Treasure Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5103") // Gnoll Stronghold Carrion Crawler Cave
    !Global("Z!EmulAreaCheck","GLOBAL","0506") // Chess Board
    !Global("Z!EmulAreaCheck","GLOBAL","0507") // Ice Node
    !Global("Z!EmulAreaCheck","GLOBAL","0508") // Fire Node
    !Global("Z!EmulAreaCheck","GLOBAL","0509") // Air Node
    !Global("Z!EmulAreaCheck","GLOBAL","0510") // Earth Node
    !Global("Z!EmulAreaCheck","GLOBAL","0511") // Lower 2
    !Global("Z!EmulAreaCheck","GLOBAL","0512") // Lower 3
    !Global("Z!EmulAreaCheck","GLOBAL","0513") // Lower 4
    !Global("Z!EmulAreaCheck","GLOBAL","0514") // Lower 5
    !Global("Z!EmulAreaCheck","GLOBAL","0515") // Statue Room
    !Global("Z!EmulAreaCheck","GLOBAL","0516") // Demon Knight
    !Global("Z!EmulAreaCheck","GLOBAL","1008") // ice isle surface
    !Global("Z!EmulAreaCheck","GLOBAL","1009") // ice isle cavern 1
    !Global("Z!EmulAreaCheck","GLOBAL","1010") // ice isle cavern 2
    !Global("Z!EmulAreaCheck","GLOBAL","4809")~ // not in the area where the NPC will be sent
THEN REPLY @107013  GOTO dmww_nash

IF ~!Global("Chapter","GLOBAL",7)   // you're not wanted in the Gate for murder
    Global("EnteredBaldursGate","GLOBAL",1)
    !Global("IslandTravel","GLOBAL",1)
    !Global("teth","GLOBAL",1)
    !Global("teth","GLOBAL",2)
    !Global("Z!EmulAreaCheck","GLOBAL","5100") // Gnoll Stronghold
    !Global("Z!EmulAreaCheck","GLOBAL","5101") // Gnoll Stronghold Xvart Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5102") // Gnoll Stronghold Treasure Cave
    !Global("Z!EmulAreaCheck","GLOBAL","5103") // Gnoll Stronghold Carrion Crawler Cave
    !Global("Z!EmulAreaCheck","GLOBAL","0506") // Chess Board
    !Global("Z!EmulAreaCheck","GLOBAL","0507") // Ice Node
    !Global("Z!EmulAreaCheck","GLOBAL","0508") // Fire Node
    !Global("Z!EmulAreaCheck","GLOBAL","0509") // Air Node
    !Global("Z!EmulAreaCheck","GLOBAL","0510") // Earth Node
    !Global("Z!EmulAreaCheck","GLOBAL","0511") // Lower 2
    !Global("Z!EmulAreaCheck","GLOBAL","0512") // Lower 3
    !Global("Z!EmulAreaCheck","GLOBAL","0513") // Lower 4
    !Global("Z!EmulAreaCheck","GLOBAL","0514") // Lower 5
    !Global("Z!EmulAreaCheck","GLOBAL","0515") // Statue Room
    !Global("Z!EmulAreaCheck","GLOBAL","0516") // Demon Knight
    !Global("Z!EmulAreaCheck","GLOBAL","1008") // ice isle surface
    !Global("Z!EmulAreaCheck","GLOBAL","1009") // ice isle cavern 1
    !Global("Z!EmulAreaCheck","GLOBAL","1010") // ice isle cavern 2
    !Global("Z!EmulAreaCheck","GLOBAL","0706")~ // not in the area where the NPC will be sent
THEN REPLY @107014  GOTO dmww_elfsong
END

APPEND ~Multij~
IF ~~ THEN BEGIN dmww_fai
  SAY @107009
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",0)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[682.726])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",1)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR2302",Myself,[663.751])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",2)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[715.760])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",3)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(10) MoveGlobal("AR2302",Myself,[711.784])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",4)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[761.799])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",5)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(02) MoveGlobal("AR2302",Myself,[762.822])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",6)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR2302",Myself,[684.659])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",7)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[675.691])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",8)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR2302",Myself,[715.679])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",9)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[710.715])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",10)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(04) MoveGlobal("AR2302",Myself,[751.727])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",11)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR2302",Myself,[756.754])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",12)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Fai","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR2302",Myself,[796.750])~ EXIT
  IF ~Global("Z!MultiNPCNo_Fai","GLOBAL",13)~ THEN DO ~SetGlobal("Z!MultiNPCNo_Fai","GLOBAL",0) RunAwayFromNoInterrupt([PC],120) Face(06) MoveGlobal("AR2302",Myself,[790.783])~ EXIT
END

IF ~~ THEN BEGIN dmww_beregost
  SAY @107009
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",0)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[350.300])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",1)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR3306",Myself,[230.235])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",2)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[585.245])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",3)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(10) MoveGlobal("AR3306",Myself,[455.460])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",4)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[575.325])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",5)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(02) MoveGlobal("AR3306",Myself,[400.195])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",6)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR3306",Myself,[175.295])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",7)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[395.195])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",8)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR3306",Myself,[640.255])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",9)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[515.360])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",10)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(04) MoveGlobal("AR3306",Myself,[475.265])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",11)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR3306",Myself,[220.390])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",12)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Bereg","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR3306",Myself,[410.400])~ EXIT
  IF ~Global("Z!MultiNPCNo_Bereg","GLOBAL",13)~ THEN DO ~SetGlobal("Z!MultiNPCNo_Bereg","GLOBAL",0) RunAwayFromNoInterrupt([PC],120) Face(06) MoveGlobal("AR3306",Myself,[260.345])~ EXIT
END

IF ~~ THEN BEGIN dmww_nash
  SAY @107009
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",0)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[250.410])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",1)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR4802",Myself,[215.435])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",2)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[260.440])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",3)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(10) MoveGlobal("AR4802",Myself,[285.410])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",4)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[485.550])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",5)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(02) MoveGlobal("AR4802",Myself,[455.575])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",6)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR4802",Myself,[415.540])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",7)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[460.495])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",8)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR4802",Myself,[340.300])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",9)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[310.330])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",10)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(04) MoveGlobal("AR4802",Myself,[355.330])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",11)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR4802",Myself,[575.440])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",12)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Nash","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR4802",Myself,[540.480])~ EXIT
  IF ~Global("Z!MultiNPCNo_Nash","GLOBAL",13)~ THEN DO ~SetGlobal("Z!MultiNPCNo_Nash","GLOBAL",0) RunAwayFromNoInterrupt([PC],120) Face(06) MoveGlobal("AR4802",Myself,[500.450])~ EXIT
END

IF ~~ THEN BEGIN dmww_elfsong
  SAY @107009
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",0)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[825.420])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",1)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR0706",Myself,[775.355])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",2)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[730.390])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",3)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(10) MoveGlobal("AR0706",Myself,[765.415])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",4)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[710.460])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",5)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(02) MoveGlobal("AR0706",Myself,[745.500])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",6)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR0706",Myself,[760.450])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",7)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[815.510])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",8)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(12) MoveGlobal("AR0706",Myself,[255.570])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",9)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[305.545])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",10)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(04) MoveGlobal("AR0706",Myself,[300.600])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",11)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(14) MoveGlobal("AR0706",Myself,[450.725])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",12)~ THEN DO ~IncrementGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",1) RunAwayFromNoInterrupt([PC],120) Face(00) MoveGlobal("AR0706",Myself,[490.700])~ EXIT
  IF ~Global("Z!MultiNPCNo_Elfsong","GLOBAL",13)~ THEN DO ~SetGlobal("Z!MultiNPCNo_Elfsong","GLOBAL",0) RunAwayFromNoInterrupt([PC],120) Face(06) MoveGlobal("AR0706",Myself,[415.695])~ EXIT
END

END