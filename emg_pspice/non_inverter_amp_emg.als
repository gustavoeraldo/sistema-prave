* Schematics Aliases *

.ALIASES
R_R1            R1(1=0 2=$N_0001 )
V_V2            V2(+=+5V -=0 )
V_V3            V3(+=0 -=-5V )
R_R3            R3(1=$N_0003 2=$N_0002 )
R_R2            R2(1=$N_0002 2=$N_0001 )
X_U1A           U1A(+=$N_0004 -=$N_0001 V+=+5V V-=-5V OUT=$N_0003 )
C_C1            C1(1=0 2=$N_0005 )
D_D2            D2(1=$N_0003 2=$N_0005 )
R_R4            R4(1=$N_0005 2=0 )
V_V1            V1(+=$N_0004 -=0 )
_    _(+5V=+5V)
_    _(-5V=-5V)
.ENDALIASES

