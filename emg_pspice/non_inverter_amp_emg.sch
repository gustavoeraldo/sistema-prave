*version 9.1 1401776764
u 79
U? 2
R? 5
D? 3
C? 2
V? 4
? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 50ms
+3 1ms
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 4774 
@status
n 0 121:02:12:12:37:15;1615563435 e 
s 2832 121:02:12:12:38:30;1615563510 e 
*page 1 0 970 720 iA
@ports
port 14 GND_EARTH 400 160 h
port 20 IF_OUT 350 160 u
a 1 xr 3 0 31 8 hcn 100 LABEL=+5V
port 19 IF_OUT 450 160 h
a 1 xr 3 0 31 8 hcn 100 LABEL=-5V
port 38 GND_EARTH 340 330 h
port 56 IF_OUT 400 190 u
a 1 xr 3 0 31 8 hcn 100 LABEL=+5V
port 59 IF_OUT 400 270 h
a 1 xr 3 0 31 8 hcn 100 LABEL=-5V
port 45 GND_EARTH 540 280 h
@parts
part 3 r 340 330 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 12 VSRC 350 160 v
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
part 13 VSRC 410 160 v
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 20 10 hcn 100 REFDES=V3
part 11 VSIN 290 210 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=200
a 1 u 0 0 0 0 hcn 100 VAMPL=10m
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 7 r 460 240 d
a 0 u 13 0 15 25 hln 100 VALUE=47k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 4 r 420 290 u
a 0 u 13 0 25 25 hln 100 VALUE=100k
a 0 ap 9 0 25 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
part 2 LM324 360 210 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 56 8 hcn 100 REFDES=U1A
part 8 r 560 240 d
a 0 u 13 0 15 25 hln 100 VALUE=18k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 6 c 510 270 v
a 0 u 13 0 15 30 hln 100 VALUE=10u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 74 D1N4002 470 230 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 17 4 hln 100 REFDES=D2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 62 nodeMarker 530 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 78 nodeMarker 460 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 390 160 400 160 15
s 400 160 410 160 17
a 0 up 33 0 405 159 hct 100 V=
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 340 290 340 250 21
s 340 250 360 250 23
s 380 290 340 290 25
a 0 up 33 0 360 289 hct 100 V=
w 42
a 0 up 0:33 0 0 0 hln 100 V=
s 290 250 290 330 41
a 0 up 33 0 292 290 hlt 100 V=
s 290 330 340 330 43
w 58
a 0 up 0:33 0 0 0 hln 100 V=
s 400 190 400 200 57
a 0 up 33 0 402 195 hlt 100 V=
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 400 270 400 260 60
a 0 up 33 0 402 265 hlt 100 V=
w 28
a 0 up 0:33 0 0 0 hln 100 V=
s 420 290 460 290 27
a 0 up 33 0 440 289 hct 100 V=
s 460 290 460 280 29
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 510 270 510 280 46
s 510 280 540 280 48
a 0 up 33 0 525 279 hct 100 V=
s 540 280 560 280 66
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 510 230 510 240 36
s 560 230 560 240 52
s 510 230 530 230 63
a 0 up 33 0 535 229 hct 100 V=
s 500 230 510 230 34
s 530 230 560 230 75
w 10
a 0 up 0:33 0 0 0 hln 100 V=
s 440 230 460 230 9
a 0 up 33 0 450 229 hct 100 V=
s 460 230 460 240 31
s 460 230 470 230 70
w 40
a 0 up 0:33 0 0 0 hln 100 V=
s 290 210 360 210 77
a 0 up 33 0 310 209 hct 100 V=
@junction
j 390 160
+ p 12 -
+ w 16
j 400 160
+ s 14
+ w 16
j 410 160
+ p 13 +
+ w 16
j 450 160
+ s 19
+ p 13 -
j 350 160
+ s 20
+ p 12 +
j 340 290
+ p 3 2
+ w 22
j 360 250
+ p 2 -
+ w 22
j 380 290
+ p 4 2
+ w 22
j 340 330
+ s 38
+ p 3 1
j 360 210
+ p 2 +
+ w 40
j 290 210
+ p 11 +
+ w 40
j 290 250
+ p 11 -
+ w 42
j 340 330
+ p 3 1
+ w 42
j 340 330
+ s 38
+ w 42
j 540 280
+ s 45
+ w 47
j 400 200
+ p 2 V+
+ w 58
j 400 190
+ s 56
+ w 58
j 400 260
+ p 2 V-
+ w 61
j 400 270
+ s 59
+ w 61
j 420 290
+ p 4 1
+ w 28
j 460 280
+ p 7 2
+ w 28
j 440 230
+ p 2 OUT
+ w 10
j 460 240
+ p 7 1
+ w 10
j 560 240
+ p 8 1
+ w 35
j 560 280
+ p 8 2
+ w 47
j 510 230
+ w 35
+ w 35
j 460 230
+ w 10
+ w 10
j 510 240
+ p 6 2
+ w 35
j 510 270
+ p 6 1
+ w 47
j 470 230
+ p 74 1
+ w 10
j 500 230
+ p 74 2
+ w 35
j 530 230
+ p 62 pin1
+ w 35
j 460 230
+ p 78 pin1
+ w 10
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
