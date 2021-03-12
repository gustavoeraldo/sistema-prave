*version 9.1 2563186959
u 102
U? 2
R? 6
C? 3
V? 4
? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100ms
+3 1m
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
pageloc 1 0 4511 
@status
c 121:02:09:11:25:19;1615299919
n 0 121:02:09:11:08:56;1615298936 e 
s 0 121:02:09:11:09:14;1615298954 e 
*page 1 0 970 720 iA
@ports
port 33 GND_EARTH 250 350 h
port 56 GND_EARTH 460 250 v
@parts
part 8 c 280 180 h
a 0 u 13 0 15 25 hln 100 VALUE=330n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 4 r 250 350 v
a 0 u 13 0 15 25 hln 100 VALUE=18k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 5 r 290 310 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 2 LM324 270 220 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 56 8 hcn 100 REFDES=U1A
part 55 VSRC 440 260 h
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 20 10 hcn 100 REFDES=V3
part 54 VSRC 440 200 h
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
part 7 c 210 310 v
a 0 u 13 0 15 35 hln 100 VALUE=330n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 9 r 190 220 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 45 VSIN 90 250 h
a 1 u 0 0 0 0 hcn 100 FREQ=100
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=0.5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 83 r 120 220 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 76 nodeMarker 370 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 24
a 0 up 0:33 0 0 0 hln 100 V=
s 250 310 290 310 23
s 250 310 250 260 29
a 0 up 33 0 252 285 hlt 100 V=
s 250 260 270 260 31
w 39
a 0 up 0:33 0 0 0 hln 100 V=
s 210 280 210 250 38
s 210 250 240 250 40
s 280 180 250 180 12
s 230 220 240 220 10
s 250 220 270 220 16
s 250 180 250 220 14
a 0 up 33 0 252 200 hlt 100 V=
s 240 220 250 220 44
s 240 250 240 220 42
w 58
a 0 up 0:33 0 0 0 hln 100 V=
s 440 240 440 250 57
s 460 250 440 250 59
a 0 up 33 0 450 249 hct 100 V=
s 440 260 440 250 62
w 65
a 0 up 0:33 0 0 0 hln 100 V=
s 440 200 310 200 64
a 0 up 33 0 375 199 hct 100 V=
s 310 200 310 210 66
w 69
a 0 up 0:33 0 0 0 hln 100 V=
s 310 270 310 300 68
s 310 300 440 300 70
a 0 up 33 0 375 299 hct 100 V=
w 26
a 0 up 0:33 0 0 0 hln 100 V=
s 330 310 370 310 25
s 310 180 370 180 17
s 370 240 350 240 21
s 370 310 370 240 27
a 0 up 33 0 372 275 hlt 100 V=
s 370 180 370 230 73
s 370 230 370 240 77
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 160 220 190 220 95
a 0 up 33 0 190 219 hct 100 V=
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 210 310 210 350 34
s 210 350 250 350 36
s 90 350 210 350 52
s 90 290 90 350 50
a 0 up 33 0 92 320 hlt 100 V=
w 92
a 0 up 0:33 0 0 0 hln 100 V=
s 90 220 90 250 91
s 120 220 90 220 88
a 0 up 33 0 105 219 hct 100 V=
@junction
j 250 220
+ w 39
+ w 39
j 290 310
+ p 5 1
+ w 24
j 250 310
+ p 4 2
+ w 24
j 330 310
+ p 5 2
+ w 26
j 310 180
+ p 8 2
+ w 26
j 350 240
+ p 2 OUT
+ w 26
j 370 240
+ w 26
+ w 26
j 270 260
+ p 2 -
+ w 24
j 250 350
+ s 33
+ p 4 1
j 210 280
+ p 7 2
+ w 39
j 280 180
+ p 8 1
+ w 39
j 270 220
+ p 2 +
+ w 39
j 230 220
+ p 9 2
+ w 39
j 240 220
+ w 39
+ w 39
j 210 310
+ p 7 1
+ w 51
j 250 350
+ p 4 1
+ w 51
j 250 350
+ s 33
+ w 51
j 440 240
+ p 54 -
+ w 58
j 460 250
+ s 56
+ w 58
j 440 260
+ p 55 +
+ w 58
j 440 250
+ w 58
+ w 58
j 440 200
+ p 54 +
+ w 65
j 310 210
+ p 2 V+
+ w 65
j 310 270
+ p 2 V-
+ w 69
j 440 300
+ p 55 -
+ w 69
j 370 230
+ p 76 pin1
+ w 26
j 160 220
+ p 83 2
+ w 47
j 190 220
+ p 9 1
+ w 47
j 210 350
+ w 51
+ w 51
j 90 290
+ p 45 -
+ w 51
j 90 250
+ p 45 +
+ w 92
j 120 220
+ p 83 1
+ w 92
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 3 t 5 310 135 367 151 0 12
Passa-baixas
