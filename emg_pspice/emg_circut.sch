*version 9.1 458336102
u 722
U? 7
R? 29
C? 8
V? 15
D? 2
? 19
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 50ms
+3 1ms
.STMLIB emg_circut.stl
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
pageloc 1 0 8938 
@status
n 0 121:02:10:00:00:23;1615345223 e 
s 2832 121:02:12:12:49:23;1615564163 e 
c 121:02:10:00:00:20;1615345220
*page 1 0 970 720 iA
@ports
port 240 IF_IN 110 120 h
a 1 xr 3 0 19 8 hcn 100 LABEL=+5V
port 241 IF_IN 270 120 u
a 1 xr 3 0 19 8 hcn 100 LABEL=-5V
port 274 GND_EARTH 190 130 h
port 246 IF_IN 220 230 d
a 1 xr 3 0 19 8 hcn 100 LABEL=+5V
a 0 s 0:13 0 0 0 hln 100 STIMULUS=+5V
port 249 IF_IN 220 300 u
a 1 xr 3 0 19 8 hcn 100 LABEL=-5V
a 0 s 0:13 0 0 0 hln 100 STIMULUS=-5V
port 63 GND_EARTH 170 360 h
port 527 GND_EARTH 380 390 h
port 528 GND_EARTH 590 290 v
@parts
part 239 VSRC 130 120 v
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V8
a 1 ap 9 0 20 10 hcn 100 REFDES=V8
part 271 VSRC 210 120 v
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V9
a 1 ap 9 0 20 10 hcn 100 REFDES=V9
part 36 r 240 320 u
a 0 ap 9 0 25 0 hln 100 REFDES=R6
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R6
a 0 u 13 0 25 25 hln 100 VALUE=10k
part 37 r 170 320 d
a 0 u 13 0 25 30 hln 100 VALUE=18k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R7
a 0 ap 9 0 15 0 hln 100 REFDES=R7
part 33 c 80 240 h
a 0 u 13 0 15 25 hln 100 VALUE=470n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 64 r 130 320 v
a 0 u 13 0 15 30 hln 100 VALUE=15k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R8
a 0 ap 9 0 15 0 hln 100 REFDES=R8
part 34 c 120 240 h
a 0 u 13 0 15 25 hln 100 VALUE=470n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 35 r 200 200 u
a 0 u 13 0 15 25 hln 100 VALUE=15k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 479 VSIN 70 270 h
a 1 u 0 0 0 0 hcn 100 FREQ=100
a 0 a 0:13 0 0 0 hln 100 PKGREF=V11
a 1 ap 9 0 20 10 hcn 100 REFDES=V11
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=0.5
part 517 c 410 220 h
a 0 u 13 0 15 25 hln 100 VALUE=330n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C6
a 0 ap 9 0 15 0 hln 100 REFDES=C6
part 519 r 420 350 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R26
a 0 ap 9 0 15 0 hln 100 REFDES=R26
part 520 LM324 400 260 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U6
a 0 ap 9 0 56 8 hcn 100 REFDES=U6A
part 521 VSRC 570 300 h
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V12
a 1 ap 9 0 20 10 hcn 100 REFDES=V12
part 522 VSRC 570 240 h
a 1 u 0 0 0 0 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V13
a 1 ap 9 0 20 10 hcn 100 REFDES=V13
part 523 c 340 350 v
a 0 u 13 0 15 35 hln 100 VALUE=330n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C7
a 0 ap 9 0 15 0 hln 100 REFDES=C7
part 524 r 320 260 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R27
a 0 ap 9 0 15 0 hln 100 REFDES=R27
part 518 r 380 390 v
a 0 u 13 0 15 30 hln 100 VALUE=18k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R25
a 0 ap 9 0 15 0 hln 100 REFDES=R25
part 3 LM324 180 240 h
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 56 8 hcn 100 REFDES=U2A
part 526 r 270 260 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R28
a 0 ap 9 0 15 0 hln 100 REFDES=R28
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 491 nodeMarker 260 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=U2A:OUT
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=18
part 529 nodeMarker 500 270 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=U6A:OUT
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 481
a 0 up 0:33 0 0 0 hln 100 V=
s 70 240 80 240 482
s 70 270 70 240 480
a 0 up 33 0 72 255 hlt 100 V=
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 120 200 120 240 511
a 0 up 33 0 122 220 hlt 100 V=
s 160 200 120 200 509
s 120 240 110 240 494
w 485
a 0 up 0:33 0 0 0 hln 100 V=
s 130 320 130 360 504
s 130 360 170 360 506
s 70 360 130 360 238
a 0 up 33 0 100 359 hct 100 V=
s 70 310 70 360 484
w 500
a 0 up 0:33 0 0 0 hln 100 V=
s 160 280 160 240 501
s 160 240 180 240 503
s 150 240 160 240 497
a 0 up 33 0 160 239 hct 100 V=
s 130 280 160 280 499
w 251
a 0 up 0:33 0 0 0 hln 100 V=
s 220 290 220 300 250
a 0 up 33 0 225 299 hct 100 V=
w 245
a 0 up 0:33 0 0 0 hln 100 V=
s 110 120 130 120 283
a 0 up 33 0 120 119 hct 100 V=
w 273
a 0 up 0:33 0 0 0 hln 100 V=
s 270 120 250 120 281
a 0 up 33 0 260 119 hct 100 V=
w 276
a 0 up 0:33 0 0 0 hln 100 V=
s 190 130 190 120 277
s 190 120 170 120 279
a 0 up 33 0 180 119 hct 100 V=
s 210 120 190 120 275
w 54
a 0 up 0:33 0 0 0 hln 100 V=
s 200 320 170 320 57
s 170 280 170 320 55
a 0 up 33 0 172 300 hlt 100 V=
s 180 280 170 280 53
w 531
a 0 up 0:33 0 0 0 hln 100 V=
s 380 350 420 350 530
s 380 350 380 300 532
a 0 up 33 0 382 325 hlt 100 V=
s 380 300 400 300 534
w 537
a 0 up 0:33 0 0 0 hln 100 V=
s 340 320 340 290 536
s 340 290 370 290 538
s 410 220 380 220 540
s 380 260 400 260 544
s 380 220 380 260 546
a 0 up 33 0 382 240 hlt 100 V=
s 360 260 370 260 654
s 370 260 380 260 709
s 370 290 370 260 550
w 554
a 0 up 0:33 0 0 0 hln 100 V=
s 570 280 570 290 553
s 590 290 570 290 555
a 0 up 33 0 580 289 hct 100 V=
s 570 300 570 290 557
w 560
a 0 up 0:33 0 0 0 hln 100 V=
s 570 240 440 240 559
a 0 up 33 0 505 239 hct 100 V=
s 440 240 440 250 561
w 564
a 0 up 0:33 0 0 0 hln 100 V=
s 440 310 440 340 563
s 440 340 570 340 565
a 0 up 33 0 505 339 hct 100 V=
w 568
a 0 up 0:33 0 0 0 hln 100 V=
s 460 350 500 350 567
s 500 280 480 280 571
s 500 280 500 270 684
s 500 350 500 280 629
a 0 up 33 0 502 315 hlt 100 V=
s 440 220 500 220 569
s 500 220 500 270 575
w 582
a 0 up 0:33 0 0 0 hln 100 V=
s 340 350 340 390 581
s 340 390 380 390 624
a 0 up 33 0 360 389 hct 100 V=
w 580
a 0 up 0:33 0 0 0 hln 100 V=
s 310 260 320 260 579
a 0 up 33 0 330 259 hct 100 V=
w 60
a 0 up 0:33 0 0 0 hln 100 V=
s 260 250 260 260 513
s 260 200 260 250 490
s 260 320 260 260 460
s 200 200 260 200 49
a 0 up 33 0 230 199 hct 100 V=
s 240 320 260 320 59
s 260 260 270 260 720
@junction
j 170 360
+ p 37 2
+ s 63
j 220 230
+ p 3 V+
+ s 246
j 260 260
+ p 3 OUT
+ w 60
j 260 250
+ p 491 pin1
+ w 60
j 200 200
+ p 35 1
+ w 60
j 240 320
+ p 36 1
+ w 60
j 80 240
+ p 33 1
+ w 481
j 70 270
+ p 479 +
+ w 481
j 120 240
+ p 34 1
+ w 45
j 160 200
+ p 35 2
+ w 45
j 110 240
+ p 33 2
+ w 45
j 130 320
+ p 64 1
+ w 485
j 170 360
+ p 37 2
+ w 485
j 170 360
+ s 63
+ w 485
j 130 360
+ w 485
+ w 485
j 70 310
+ p 479 -
+ w 485
j 180 240
+ p 3 +
+ w 500
j 150 240
+ p 34 2
+ w 500
j 160 240
+ w 500
+ w 500
j 130 280
+ p 64 2
+ w 500
j 220 290
+ p 3 V-
+ w 251
j 220 300
+ s 249
+ w 251
j 130 120
+ p 239 +
+ w 245
j 110 120
+ s 240
+ w 245
j 250 120
+ p 271 -
+ w 273
j 270 120
+ s 241
+ w 273
j 190 130
+ s 274
+ w 276
j 170 120
+ p 239 -
+ w 276
j 210 120
+ p 271 +
+ w 276
j 190 120
+ w 276
+ w 276
j 200 320
+ p 36 2
+ w 54
j 170 320
+ p 37 1
+ w 54
j 180 280
+ p 3 -
+ w 54
j 380 390
+ p 518 1
+ s 527
j 420 350
+ p 519 1
+ w 531
j 380 350
+ p 518 2
+ w 531
j 400 300
+ p 520 -
+ w 531
j 340 320
+ p 523 2
+ w 537
j 380 260
+ w 537
+ w 537
j 410 220
+ p 517 1
+ w 537
j 400 260
+ p 520 +
+ w 537
j 360 260
+ p 524 2
+ w 537
j 370 260
+ w 537
+ w 537
j 570 280
+ p 522 -
+ w 554
j 590 290
+ s 528
+ w 554
j 570 300
+ p 521 +
+ w 554
j 570 290
+ w 554
+ w 554
j 570 240
+ p 522 +
+ w 560
j 440 250
+ p 520 V+
+ w 560
j 440 310
+ p 520 V-
+ w 564
j 570 340
+ p 521 -
+ w 564
j 460 350
+ p 519 2
+ w 568
j 480 280
+ p 520 OUT
+ w 568
j 500 270
+ p 529 pin1
+ w 568
j 500 280
+ w 568
+ w 568
j 440 220
+ p 517 2
+ w 568
j 340 350
+ p 523 1
+ w 582
j 380 390
+ p 518 1
+ w 582
j 380 390
+ s 527
+ w 582
j 320 260
+ p 524 1
+ w 580
j 310 260
+ p 526 2
+ w 580
j 270 260
+ p 526 1
+ w 60
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 27 t 5 120 165 180 190 0 10 d_info:,,,,,,,,,,,,,10, 
Passa alta
t 516 t 5 440 175 497 191 0 12
Passa-baixas
