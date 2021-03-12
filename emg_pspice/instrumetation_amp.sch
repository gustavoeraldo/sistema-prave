*version 9.1 3853382
u 274
U? 4
HB? 5
R? 13
V? 13
? 21
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 50ms
+3 1m
.STMLIB emg2.stl
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
pageloc 1 0 7420 
@status
n 0 121:02:12:12:17:50;1615562270 e 
s 2832 121:02:12:12:17:53;1615562273 e 
*page 1 0 970 720 iA
@ports
port 42 GND_EARTH 330 290 h
port 68 GND_EARTH 470 180 u
port 153 GND_EARTH 250 130 h
port 72 GND_EARTH 240 210 h
port 71 GND_EARTH 250 410 h
@parts
part 11 r 390 280 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R6
a 0 ap 9 0 15 0 hln 100 REFDES=R6
part 12 r 390 330 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R7
a 0 ap 9 0 15 0 hln 100 REFDES=R7
part 127 VSRC 290 120 d
a 0 a 0:13 0 0 0 hln 100 PKGREF=V7
a 1 u 0 0 0 0 hcn 100 DC=5
a 1 ap 9 0 25 15 hcn 100 REFDES=V7
part 2 LM324 300 170 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 56 8 hcn 100 REFDES=U1A
part 3 LM324 290 370 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 56 8 hcn 100 REFDES=U2A
part 190 VSRC 200 390 h
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V10
a 1 ap 9 0 25 15 hcn 100 REFDES=V10
part 167 VSRC 290 330 d
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V9
a 1 ap 9 0 25 15 hcn 100 REFDES=V9
part 156 VSRC 290 260 v
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V8
a 1 ap 9 0 25 15 hcn 100 REFDES=V8
part 9 r 500 310 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 7 r 470 180 d
a 0 ap 9 0 25 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 u 13 0 25 30 hln 100 VALUE=10k
part 6 r 420 230 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 8 r 430 310 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 10 r 390 230 v
a 0 u 13 0 15 35 hln 100 VALUE=100k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 13 r 390 380 v
a 0 u 13 0 15 35 hln 100 VALUE=100k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R8
a 0 ap 9 0 15 0 hln 100 REFDES=R8
part 236 VSIN 250 370 h
a 1 u 0 0 0 0 hcn 100 FREQ=100
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=5m
a 0 x 0:13 0 0 0 hln 100 PKGREF=V2
a 1 xp 9 0 20 10 hcn 100 REFDES=V2
part 235 VSIN 240 170 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10m
a 1 u 0 0 0 0 hcn 100 FREQ=100
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 20 10 hcn 100 REFDES=V1
part 4 LM324 480 230 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U3
a 0 ap 9 0 56 8 hcn 100 REFDES=U3A
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 273 nodeMarker 560 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=20
@conn
w 15
a 0 up 0:33 0 0 0 hln 100 V=
s 290 410 280 410 14
s 280 410 280 450 16
s 280 450 420 450 18
a 0 up 33 0 350 449 hct 100 V=
s 420 450 420 340 20
s 420 340 390 340 22
s 390 330 390 340 28
w 37
a 0 up 0:33 0 0 0 hln 100 V=
s 300 210 280 210 36
s 280 210 280 240 38
s 390 240 390 230 32
s 280 240 390 240 40
a 0 up 33 0 335 239 hct 100 V=
w 31
a 0 up 0:33 0 0 0 hln 100 V=
s 390 280 390 290 30
s 330 290 390 290 43
a 0 up 33 0 360 289 hct 100 V=
w 46
a 0 up 0:33 0 0 0 hln 100 V=
s 460 230 470 230 45
s 470 230 480 230 49
s 470 220 470 230 47
a 0 up 33 0 472 225 hlt 100 V=
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 470 310 470 270 58
a 0 up 33 0 472 290 hlt 100 V=
s 470 270 480 270 60
s 470 310 500 310 62
w 145
a 0 up 0:33 0 0 0 hln 100 V=
s 290 120 320 120 144
s 320 120 320 130 146
s 520 130 520 220 107
s 320 130 340 130 148
a 0 up 33 0 430 129 hct 100 V=
s 340 130 520 130 152
s 340 160 340 130 150
w 155
a 0 up 0:33 0 0 0 hln 100 V=
s 250 130 250 120 154
a 0 up 33 0 252 125 hlt 100 V=
w 158
a 0 up 0:33 0 0 0 hln 100 V=
s 330 260 340 260 157
s 340 260 340 220 159
a 0 up 33 0 342 240 hlt 100 V=
w 183
a 0 up 0:33 0 0 0 hln 100 V=
s 290 330 330 330 182
a 0 up 33 0 310 329 hct 100 V=
s 330 330 330 360 184
w 176
a 0 up 0:33 0 0 0 hln 100 V=
s 520 280 520 440 109
s 330 440 330 420 103
s 520 440 330 440 111
a 0 up 33 0 425 439 hct 100 V=
s 200 440 330 440 177
s 200 430 200 440 191
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 420 230 420 190 50
a 0 up 33 0 422 210 hlt 100 V=
s 380 190 390 190 34
s 420 190 390 190 200
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 390 380 390 390 24
s 390 390 370 390 26
s 430 390 430 310 56
a 0 up 33 0 432 350 hlt 100 V=
s 390 390 430 390 202
w 194
a 0 up 0:33 0 0 0 hln 100 V=
s 200 390 200 260 193
s 250 330 250 260 186
s 290 260 260 260 161
s 260 260 260 210 163
a 0 up 33 0 262 235 hlt 100 V=
s 260 210 240 210 165
s 250 260 260 260 188
s 200 260 250 260 195
w 65
a 0 up 0:33 0 0 0 hln 100 V=
s 540 310 560 310 64
s 560 310 560 250 66
a 0 up 33 0 562 280 hlt 100 V=
w 74
a 0 up 0:33 0 0 0 hln 100 V=
s 240 170 300 170 270
a 0 up 33 0 270 169 hct 100 V=
w 76
a 0 up 0:33 0 0 0 hln 100 V=
s 250 370 290 370 272
a 0 up 33 0 270 369 hct 100 V=
@junction
j 290 410
+ p 3 -
+ w 15
j 390 340
+ p 13 2
+ w 15
j 390 380
+ p 13 1
+ w 25
j 370 390
+ p 3 OUT
+ w 25
j 390 330
+ p 12 1
+ w 15
j 390 280
+ p 11 1
+ w 31
j 390 290
+ p 12 2
+ w 31
j 390 240
+ p 11 2
+ w 37
j 330 290
+ s 42
+ w 31
j 480 230
+ p 4 +
+ w 46
j 460 230
+ p 6 2
+ w 46
j 470 220
+ p 7 2
+ w 46
j 470 230
+ w 46
+ w 46
j 420 230
+ p 6 1
+ w 51
j 390 390
+ w 25
+ w 25
j 430 310
+ p 8 1
+ w 25
j 470 310
+ p 8 2
+ w 59
j 480 270
+ p 4 -
+ w 59
j 500 310
+ p 9 1
+ w 59
j 540 310
+ p 9 2
+ w 65
j 560 250
+ p 4 OUT
+ w 65
j 470 180
+ s 68
+ p 7 1
j 290 370
+ p 3 +
+ w 76
j 390 230
+ p 10 1
+ w 37
j 390 190
+ p 10 2
+ w 51
j 380 190
+ p 2 OUT
+ w 51
j 300 210
+ p 2 -
+ w 37
j 300 170
+ p 2 +
+ w 74
j 290 120
+ p 127 +
+ w 145
j 520 220
+ p 4 V+
+ w 145
j 340 160
+ p 2 V+
+ w 145
j 340 130
+ w 145
+ w 145
j 250 120
+ p 127 -
+ w 155
j 250 130
+ s 153
+ w 155
j 330 260
+ p 156 -
+ w 158
j 340 220
+ p 2 V-
+ w 158
j 520 280
+ p 4 V-
+ w 176
j 330 420
+ p 3 V-
+ w 176
j 330 440
+ w 176
+ w 176
j 290 330
+ p 167 +
+ w 183
j 330 360
+ p 3 V+
+ w 183
j 260 260
+ w 194
+ w 194
j 200 430
+ p 190 -
+ w 176
j 200 390
+ p 190 +
+ w 194
j 250 330
+ p 167 -
+ w 194
j 290 260
+ p 156 +
+ w 194
j 240 210
+ s 72
+ w 194
j 250 260
+ w 194
+ w 194
j 240 210
+ p 235 -
+ s 72
j 240 170
+ p 235 +
+ w 74
j 240 210
+ p 235 -
+ w 194
j 250 410
+ p 236 -
+ s 71
j 250 370
+ p 236 +
+ w 76
j 560 250
+ p 273 pin1
+ p 4 OUT
j 560 250
+ p 273 pin1
+ w 65
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
