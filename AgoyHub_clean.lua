local players = game:GetService("Players")
local workspace = game:GetService("Workspace")
local runService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local userInputService = game:GetService("UserInputService")
local lighting = game:GetService("Lighting")
local coreGui = game:GetService("CoreGui")
local virtualInputManager = game:GetService("VirtualInputManager")
local guiService = game:GetService("GuiService")
local tweenService = game:GetService("TweenService")

local v1 = {
  "S4_jd2'K6$=5DbM", "SN^iK!", "Sl4cP>]B", "SXbD7p6_X4aiG-`R5>']?\\#/@,+s@;U!YjKcE]$",
  "Sjkikke1", "S:4eh78cTkcusUCVg]", "S_Nb*mV>e`t\\J", "S&\"Rqo^MKQ>HL", "S%h$i_eV",
  "S]b8srg\"fBC@!%-dbW+", "SWLmY9`C@O)MQg5I", "S?!f]#V:", "SpWZ=9", "S\"PbVi*&t)b<'",
  "S>sjj-7&EnAYIFp,", "S!H1\\3BB", "S;]APCB5^:", "ST9WOSR9V", "SEeS)sn=R", "S;$UQa0+]", "SVhf",
  "S0AbKD<-", "S'T$Q]lB5", "S-BNcCsMf[Gn>i0'cC`#", "SP8i/A-CF<?kb,5BDX", "SF$Oupt2Go1J054,",
  "Sct:_/HT89-EME[IJg", "S22)CcL-A^s)SOq#Isr", "S`/D8^", "Ss7@`;=W&1`", "SF@.'",
  "SID,2X;%&]>aY8n:SO]*0f3EWKt@.,kM.<AfTPW5)q(]%8ic]q_NEn*\\K.,R:a'CT-8]Yk*Hp`[KFpTu3,jLERYL-o*b.DsHN@'E[K?Mgmtn86sk$`XUuC7b'Z<A,aNSC27]VDVJXO=",
  "SilC\"'", "S$k]*='6R", "SN#.TC5.M/d", "SZaZT3dX4", "S20Xb?", "S+VkM<UX(", "SV^4Cor\\d",
  "Sb]9B3K_/7JY=0Ei", "S0T2+GF<93!E:o*5`J", "Sr1Ub", "SjY],R", "S_g\"jX\\;1,b]'=e;6D8",
  "S<*-H)-D&o@h]7o", "S]!3\\<qFeG47il4\\E<T", "S0b`BO`I", "SFCXf8GE7TQ",
  "SN[];76D?Raoh$#$g3:_s(N'h\\d@.gW->UF:>Y'D-/Wqcg7'VHp\"\\jSSBf?5f?\"EB\";.PKLeW7,K7-_lO5,kl4.u2[\"*4'_KZ02.&BSeX1L`u'NXn*^q\\0-Sr6rt&Y)26b3aY)j+5)W",
  "SHcZDS]XA>?mH%m", "SI1C^d$XI0", "STomP53;C", "SrdX`ObkX/?o/LuB>X",
  "SADmN_D&`W_!$,d+?K4/3h3H84cGMNmRd&tIWKYcBJ09^De9Ire)<b*e/f:?g_PJr6mD(JqJEDV(Rg;I9W@:#,JIn%j##P<.&:I8]R-Um#+HjJY>11/lR)u`_+Fe&1^r=*uk)X+I+$t",
  "Sd*o`]`fR", "Smd>.r[]pu\\m&_R;RM", "SDsK0E+Ie6", "S\\\\crLgu!hPYWrFr7N2",
  "S-cpl1e+VfWSiMa\\JB/aqp^n?SRL^Ne)o>Sl/*,GVGNJ'!+qL", "SklBMtN;@7cpQ3BXo)>",
  "SY),5+E-,qNE-T<", "S=a6H8eA", "S<15!0f)", "Su+3C\"#5p%r", "S@O_8;'-", "S^-\\", "S*.fka",
  "S(rg4OSgY%HAt`E\\8)j$H$m;$02/(", "S=_>;A$FiS2[?8U", "S:B", "SYIO0F[(@F`EQ'", "Sdl<7G_LF",
  "S9n", "S92Y,c=nVC3YV", "SI_C@rbDr2?*NRP,", "S]i;q?,9Gb", "Sf1H@sN\"Hi", "SWD.WD",
  "SYRs]5Zj%PRS>65h4*", "Su6.8)Q&7B", "SoKi;6", "Sm3%iV", "SY),0Tg\"NdX@k4'_", "S.)rB",
  "SrWo/*T[", "SkM@.Q7Ml@,2S-o<U,4", "SSea-83:i^Z3,;.dYA", "SEe4A9\\9I]a`\\C9gYN",
  "S@I<\\CEHka:I\"@eP", "SBcGEb='\\Nb2\"QNr", "SAaf7603uh\\[>", "Sh^s/]", "SST8\"/2'f",
  "S@.+B(0`;a`o8cgkYG_", "SD%\"L?", "S][JI`\"aM*", "S,QI0O(q(tk", "S?4l)&jc&[_35S\\p@CZ*mbes",
  "SK-QR39Y#+j+mtg)", "SFjU]+BEuoLGUnRU", "S>K(*I*27?N\\o'\\d", "S)9jd@hfo4ucB_q+s\\",
  "SSHX-p`SZdi]I\\m\"", "ScCqYq[>", "S:(^RF-n`FJG7,og^D0?#*6O\"RpFi)", "S6C(2>+uHW",
  "S>f8iX@O#$^", "S(h9WI'32", "SY.:)Op,?h1F9i5[bR", "S`(3]%3]fqCpIG,_]hn", "S>hFq;7dijCg\\>9#",
  "STWn?)U.9FaA@", "S7d$m40+iE2pjI/,", "SH)1Ou", "S!XlBo`CtKm", "Si+D9=*-Appcfo<", "SjUI4",
  "SciCqZ]X", "Sh'Cip/Y]cc6Bs647LX3SLr?:XR&()'kYb", "SR_i+aD>eY7_B", "S0Y-R*Y,o2%",
  "Sk&Lt;%_@p?", "S$l", "S\"&K:fBB", "S0TQac7Ye4>p[g<#", "SMUKE", "Sct6P<;:", "Sn`g7",
  "SM_C8GZ>B*!n*b", "S+Km", "SOa;d:Fso", "Sq;gmg5fND", "S;G#(", "Si2Jp,*'rL1GsbD4q6>",
  "STor3;T%Zo939kk\\rX", "Sm04?<]lcPOB8e+B]r", "S7A$LtNC?", "SL<`b)ad6", "S:OB%tj1.F!P,L",
  "S(#1-%", "S3!AmcgWV2J-CG+]MnO\\5+@PGT:p", "SA8-an+cZT]E>", "SBM=Eb/+d9?", "S'Q;N7",
  "SB19<Cd4$", "S\\T\">r2mJEg_r?LqN'CdW", "S/_tsK", "S!\\[Pd", "S!mHH9\\$jn^P\\", "S\\Ba1",
  "SSl=", "SJoSN/c%p2=", "SW-%O$'*+b.(\\GkB(Ai", "S7`q^a3f>XBS$UB=o%6",
  "S[)KW'KNkX2SICd]38mcbd6*ZudO;'3Yrj9CXKHsN5Z[+#bO9f6V[>m4rl8'Jt$:Po=Qmp>>Bq>Mb1ZF6amNYZp*n_c=FNWJaY`,<lNQ8s0r<I2Wk6>6&CJl`)?[[i8-?/4k):HsTsK",
  "SDQ!<`?$ok&#+b(", "SgB\"D.rje+M0i/06`I", "SEDtk.b5E\"R`o)0[K1C", "Sb[]pc@hnR/S5@qF0&H",
  "S'o7DHd9\"G,V^oVg>/hj", "SL2f;HpN", "Sr#RhgP\\", "ST!$Bf5(", "S94k@\"S`2", "SP-6>@L^nI'?$",
  "SGm\\cf-W4d!Jqr", "ScBji6o=jn", "Sd]?EE", "SrkF$", "SL[N+#\"``", "SbFuN`0TF?U]Jc$r7(", "SS>",
  "SgpLfS0!hUJqKK/;", "SE-G]c>;1UVY)#)=Tp'", "Sj`3O?LtE+>I@", "SocIG3`neV8YfGFt0>o", "SS[%6h",
  "S2'o", "SD6$`e!U?Q:u6?dr]r", "S\\(8)CopsmeS-CU@", "SiCiY$#4o",
  "S,(A5$7SuIM;YT[Z(-\"M$7[#Z`Kq\\4K#Wr#njP03,BEGSi\\%(m*p[YaIOkr,a92qQP7_?uB5bL0F*mZMXnP9&Ep*pRFj/Y]gT(4Ujfh(b<G)bI-;A`*h/is,PEm>`AR_o[Whc\"aUJ[F",
  "S>J#n/g4eEpE3J2Q", "S>?F!kKdb", "S6;5CYQL", "SOt8tQ=<+T0,YZB", "ShjNZ`O]dU,", "S3K)",
  "S7#KYA", "S\\50%n",
  "Se7YJA@lkj[!,rr'JW!:J6$(8(\"oqYepbmQj..\"B69)LJ+c!)(!s'3S$-VL]Xs7&J5?n#<b?tE>?b@jV1VaS2m@b.`[(4V<V6fDoX*)&H@\"U2/$TNdIbT'f7eIZ_P`uii\\10'@Te*&h",
  "Se+i", "S\\\\b&opU#=_FaVet", "SjOj", "Sqke7U:p:", "S)ROfmcA", "SKkamo?-", "SKl(:*R_@h8#Ppt",
  "Ssm\"fHj]?7S", "SZjD", "S>hniuQYcHnq+-", "S=J^/S>3Kcf%RG?", "S(WsOAtJ", "Sme-mL", "Su0?ES",
  "SnYG3t'l", "S0!ZD@0`gi<E-tSg", "Sq]bY&`nbQ^>I'D3Tc*", "S\\5'%J\\ST%NT4O]Bp&t",
  "S0>EV]\\:q/3o(0+NF>", "Sk#@]fEa6YPNZjh^kks", "SFt)K&94ZV-p1", "S\\h9l//EkKZ,Rg",
  "S'.]GikTB>4i,C#tO\"Y", "S;9IU[#Fo",
  "S;-,LCnO%K=p5bi>9,+E;`ikR,>pRF[#rp=]gZ:8,<.?cT8[N)>jo>pOsNfVtYEreq?=Nqumt7\\;;eA_u4D\\>akBAP2j'Si9J8'rX]o1#1]0l&I'IpOUofRN<lfMm\"p_OV1tCqgD_Z\"",
  "STBC=V@0H\\TS'a1D`6g", "SGog1(MsB", "Sob5\\_T[",
  "SV91+u9a?+_9g1L@Vo`m_Yc!Hu:WF$$_./G=&^q:NrigkMPH'I2jEejrUQEUu:R@QQV$M0qo-Ymh<R`grpRD(.<+&",
  "S9U80O", "Spp8-%qU7f", "S]98E`DB", "SoP>?\\", "S!K\\.1n.1", "S;?8ajP<Sd_hV", "Se)ZWN\\@1$",
  "SZJu$9", "SD%`J3oCCftm=f'<", "SEOpY)rDUd", "S&&a;V", "SkcB!f\\S7", "SrMet?Y0t&PYA",
  "So4l8#p.S18`nT", "SgOjs>#)a", "S*^:aOZAJ", "S^Acal", "SS;b;7+o\"K`]Ju=eNg", "S*oZ",
  "SQLJrL@V", "S`f>452oNqCD17;", "S0i(WE\\8%Y#01e].", "SY)U[.Y=h", "S(jO<>^+1gS;bDe", "SnV`h",
  "S]74?Jo<4LacC+%", "SE6AF:TX102YIZd?E6AU", "S$)]8&=FkF?",
  "SPY4n\\j-8)#kSM&]&0,0q?Y.SHW,cE[]h];F\\\\ftO;qd):H94rnY>*C5Qk4m\"Uj)KL.^*X.Eu,2`-hAIjW;Y=RXcteTB471Ts@N\"Te3HfW",
  "SB1;<=qLq", "SKE,Y*`#JP8`I", "SU;3Z*FbQ*,", "S:KZKkR8'", "SQ-T\"W+!Iln\"]",
  "S/BRrN4UH+@FAi-,-3_>(2ero`kO[h\"`;\"\\5Ys)FNhOa7&m1\"GZ30g-A/jWL3,WBOCqE<f9EsaC*YKK[dM@Ht$QL$)JX7,V'<\\4>(KFg1L.Yub]-;SQ`,4/_R[gmF;RKeF`\\S<tl3,&",
  "SoHm]H9n", "STtW0g@k@4R71SYQ", "Sd9t,!;8-'/ID", "STfcU&+l", "SR.&5QjB", "SpT.1PIb^259ToJc",
  "S`Z?SA'7[Qq+l", "SUc+GN\"0E", "SE;Mr4;QJ6", "StP\\ES/jUV;G(n\"", "So!8%]DB", "SA8JT'Fh",
  "Saq5Am",
  "Sql^A`K\"*Z6j)fJ>Jq&Q4J(R.?91VM8sE,)(=&=h([D$#'?'0nHjMHeArT_L3l&'Hs>B0s5WGT&.,F/-(pa6s$I#&5WHS?g9;V$'V9a3[<R;)UJMaO/ZV6WM1m2][L\"u_ibV,%P6fV6",
  "S:f/_", "SO&<Db.!A9_", "S'Z\\rBqcu\\f7(", "STZVCoATfLrdQoK", "SQ/+_3q3*Wc&r+&sq.T*",
  "S/Vf/H", "S,%@<;3r?o)K\\o2n#B]", "SpYI\"%", "S@?AHX3WH*H\\9lj^bR",
  "SR'7G8\"X2SWj^<icrD$\"0g95", "S9-*_", "S@rr3T3R", "S=bHCD#hn_(FZu_mc[]CX]1#5#",
  "Sp.qRKY))L!E<ZatE-T-&Y=J;$", "SE]\\@o*d&\\b0`-Z,", "SrGU/=q5V?(rLrX=Y&4", "Sa2)uLDp",
  "S[klV\":\\o85$-", "S-[_Kr,Soh\"=Im^", "S204_'DS)3\".WEOrW1]XnFj", "Sn<kpT",
  "S7:fZ)4N?:)[ECLc<dCO=", "SL_R?7f)W7(", "SG5hu@9S+CYjcn(", "SUm/Ad", "S61ICS", "SNf$52g8X",
  "S0!h**", "SP,Ahtgq&", "SS6[^IYk^+q>&3oepN", "S4Bc@+_U$%U", "S<MTFW4#]", "Sq.K<dIqQ9?YWX>L",
  "SocIGT`nY%,Tc*", "S'lVqF5\\9Eqg353", "S4uss-!m\"7K,,GT;Bp", "Sj1qrf,M4PgGn\"`",
  "Sr9VnVQOf=hZL", "SYU6ui", "SUOYqg", "Sep25NHL", "SW>T[QW;", "S.lon\\4A", "S*76>6",
  "Spp^.*!*W", "Se\"CTp:p", "S0Z[K^Y.%V6", "S^P#q]I=aZ&2!", "S]N*J+'PWi8", "S8dne9t[pV3ZD(",
  "ShCt`56SJ", "SISib%A>p6", "S'kLR7lhk", "S2<6\"", "SUB@nhi*,KW", "Sj=Qj!mF(",
  "So8$:\\-ejcrr?e", "SS9&GL>R&)USHqHkr;o", "SAtPW^W<(aeP,MFBMF<",
  "S!\\n2AH?54WQl\"J#Tt,c\"+G.^Xp</PTO_];u", "SI@", "S>ngKiUTO,<BQG", "S3!3\"L\"5XSqG6@q2IL^",
  "Sp+Cs(!ip/(o*c", "S,AT/o", "S2j>HK0ck", "SeK'p",
  "S5d$.0W(FD-n8plP<]bc3q5ouYBX8DS'U[WDee2N=3Li5[..!2j.U5Fjb/6kQ<BiPOhrs1h.(T;g[R\\mam<;l;aA9a`u]ja,:4ZK3Z.l&;ZGT2]5lf,+_or)E?GP-EN6csrS6>7<;Jn",
  "SkZAI<*g", "S!1=,4&B%Z#", "S5O//f>9)S4f3-", "SOIq0ti)", "S+X9EaqE", "S;D5>9HR27^@]^f",
  "S3KX\"@bJ)=Up&j*tKiQ", "Sl1X[(\"6R@I[0B:muQe", "S82RD!", "Sg\\e^QY0TFS>!g/SrKh",
  "SEld=hY,a)CY,a=RY.R", "SuS",
  "S/kAYoQBeA(fja_4BMnYNG@!HnBXMf@s51;D(rNUi.=rr\\-O3:?pE<3u^Wa<*E`F'(.B`=)KH@C\"K4_K<J_V^h;i.jf`i#:4G;<:\"i)dPal^0]0kN>=\"s1Jn@#9#X9T<ibQ.Z6*=sss",
  "SXUfCi^T]dk`+%YDaA5;", "SYFLP1HC\\#2", "S2aRO%#J:", "So@md`/l2P", "S>QX'^_`a8u4L$",
  "S>!o[m\\l#@-TtOL!YV", "SM6Wq^",
  "S*n`V[(:p,:!p-Naco<PomfVe^\\Jag!EB,#XS.&<'R.,sDI419B>;S')NV5QA-+I_0_C9\">V/%LUZc)-=e0B+L4hlr!Z+@Kdq3JU47r@>ApQKpO6sEIk,Ir^@\\iT./k=QdG2iFi^i&j",
  "SJRc/#0_@e*K8,[a0i&oDZ4lE48]`\">J3i7XXc[G7A]IPN5^MA(9fJuALbqRYRu8;S;D-=hr_B^0pH\"HRjVhuq*4LX&;o[Y\"?&mTR`C@e&kp,\"08BC/q/<e4jMOWGabEj%[!Ja76\"'j",
  "S4o-.K4N/", "S[t\"AMTW8d>G)", "SnZ]$B_U3", "SPQRsrmf!,$.-<AAd1^cLA`l;?\\V/O'nTON4f)",
  "SoplML>kQ5Xq.Ch\"", "STS/TW8]uMK", "SotAEJKRHC&S$;&F", "SA?ln>3R", "SIpGGY\\-R4&]K>Y40\\",
  "S,S*0lU$V2L!@3,", "S0>3)ubE", "S$X!7STtZj_7QC`;\\@H", "Soq[<bY,gd^K1GiGTU",
  "SK\",P]qG#&WKBRhs*do", "SW<rV*A8'$", "S2,\\crJ3SWQmMF", "Sc\"b(riD'", "S?t0rUj:X]:;R&",
  "S9*fI8To,H", "S/`", "S7N72hbWl;+>LdA3Y1", "S2)3C:", "Snq@5N;r^_", "SEliVfb,Z0]\\(aFa",
  "Sr3\\YPWbk", "S4o7E^LuR+P`;", "SnI<jo", "Sc!R_`riU\\kl5m)QDeF'r", "Sc36UoH7:R1",
  "SS.!Sm`bG5", "SrK@9e", "S_EKU%:H_iBT.%d^Yu,", "SE1Pc`fG:8", "SSh\"05TE!3@L\\A", "S9GE;%",
  "Sf3Pt6#N6GKbE", "S[p0[pRE3uN.*)N", "S&@AY]", "S2W(=6je]", "SKR+QiY?7A+V<rh;",
  "S)p>e#HlbqOR(g`B]p_", "Srs)#1qm:IQ*N8fHSl2", "S^).7r8g^G/_Bh", "SZ[$6\"$G;G", "S?i2:p",
  "S'I$05", "SEY-$kh1", "Sc!?",
  "S`Ci)#+Ng/1cW(fthi\\9(!blMlF1idKi9j?\";OdR72Hl!-<tP7/h7`8%F#Lo1)lP0(E'1bli)*0'G-T\\WV8CWP[Lj/;hB;ACA=Dp.()#b2cUWOi[4$k36H*_X!@W])&LHF.9Vp;!2$,",
  "S]*RPK[W!", "S+RRH", "SL@chh>r", "S9]^_s,i0f'Pe<", "S@.fY`!jms:", "S+?gDNgQS+B", "SFN!Ro`;",
  "SZeJ]MD-I%7tB<\"Z0C6[hffgF'+p\"", "SrJAYQbm]", "Sj@=im^)L=&qfJtuKl", "SKdN]\"`6/ji",
  "S`^nb\\>0N1=!N/eWV'AB", "S`V(0.AJQYg", "S(=6/oRM", "S/b\"l3]r", "STH!\"nU%\\UDHE/-",
  "SFKh=0g`kVi", "S.VRDb;g+\"d", "S^F)r+W+YX!mA", "SgAlsI0b.M#T42V", "SXq<':", "SOK_MIP\\$BURM",
  "SNW<^Rq\"_4uWJ.L((VTbJR`@IdoSHC#'bh7mXXJi!auXpQk)7^UtWVVL(G>1$2aL2U*b*Qdr0kW0l^^NaMtIB:]F,OA\"EY4'6rQb`!_0qREt\\(Fie#=a69dU>Y1ZkFfD\\K!@;Q%Lr?Y",
  "SUs%t", "S<k52sQ!rQ", "S0>@h,E6A!PYG8>%`9q:L0Y-\"", "Sg*q7WrJ+AKYfG7_p)-#D", "S^;",
  "S_mNSWT]#kF]B", "S3.4b#KRcqsK+coM>bF", "S!<$T[!$(9<", "S>;K&t3Md5`q@]PkpA", "Ssr(^7r4]D\\bL",
  "S+'\"k8A]pj", "StAO`G", "Soo<9nU_H", "SE=8J;]RN@+7Z7F[bR", "Sr>]Pg0^'#33e)_F",
  "S8'pEYL@$8$6E2&.p!?", "SS[J?mS:<?RZ;NANaU", "S(CCLp", "SdU!=", "ST5,/cBAEePH.-<*ep#", "SfU",
  "Su8'=95S-hY", "So;;>&", "Sk8(sl)d.)bTpF$R7n", "S_#T",
  "S\":b,T?qQ<%*_a6'pN\"o(*dSi^!6cUki*R]L;\"/:Zuh=.;)1cJD76\\1E\"l?.olnSMmds(IMFM9d19_kes9=\"tq=V59-rN,S\"?^kZ_c\\>G)'T`0UoctY)h.)UaMsf0@AdmDd9(.\\PdP.",
  "Sh*><bgFEH\"HR", "SJ\\2kOP*KYpnPNKrkS", "SBu8P?iY72jdo=", "Se!V</O6I2U",
  "S>Q7\\Upk0hH7Y&hLrI\\", "S2hNQG^o)cO#J",
  "S^f,#7/B[HRBdn9,Rf;P'/&\"Hg5a(2qWMpAQD\\<#s9`I/c[/'a@e0H:uI1.#&Gq2m'F66\"Fj,128hKjq%,e3+&SUn6TDVFg.=qI(UQ@V9=3'(/QT/2ce/eOR*l[!+?2^e1dGS^;?#gl",
  "Sd*Xr!B&j", "S4<2CI,[", "S=-M)IM:", "S\\?YBfH79(D\"D", "S\\E5nB'8YO=V6/*hB#\"*:/+sj", "S[j",
  "S+<<6<'_pV.RM", "SJM^-*=WeQ3$b?#0hV", "SR.NZ]g>#'#", "SQZ#3.LGn1", "SNq0/so=ScCW;",
  "S(X87Ml=2e", "S8*b", "S#X'$ZMn@k9", "Sr@$n,fEj", "SJNNC\\NNF[cVflj?V\"_I-a&n%m*kpabc(LV0",
  "S^`'Fb.;", "SZV#A", "SWk+6ug8fFI", "SeN", "SU.)#OcVf", "SI_kF<$1emi`o(sK",
  "S0L&f7Fm<W^q[&=\\bR", "S$<AP=<YO(l':=i6,)", "S777\"u", "S`5H6.K-", "Sl!<S`Q0E",
  "Sk;Iia\\$%AG+Bb6<.2%-]tF6Jr52.Te>gWb\"_J1HJI0r`VRmD3#HK2/L=P?u?J2(9DZ5UR<`qBJ%jIHa\"KMkWtc<\"Q,cj^R&,>ASf.oNqR7r%a*F#%uD#&=meU1`ClKA%hn!&euH>hl",
  "S_?Vt/=p`DsTKpbAuifa/\\HILN7_DimB2`])3<oZ;3\\Ps)k5Vr-u??+hDn/n6>*A(Q;TL?IJg^'YR&`j?'OCq]],Tf(Z8@gQ2=;/:u7n$<PlNi/uo=BN-tn,Voau(V'c#N^Tpsh_bl`",
  "S,c(H", "S\"QGtFKej", "Sd`3D+P;TW7fA4X^", "S`$fhb>bBI\\bJL/N", "S\"Md%Qiq&N^JX*sX",
  "S\\lW<LKEM'*b3[&:", "S0BV!p.K", "SXTAb<t?QStNNZ;", "SZJq.I=nZ", "SZf0&WWLo",
  "S@?\"<(KNpou7^%ED", "Sr<!7jXl:`NUd=`?",
  "S'&TrJ/Y)d[BW$>EKl'.9:>!X9r;1C*Lb9XptObcHX\\9(]XQE];HhULdD\"=C^=bqV-M/W1!Q[p/!Wik[+9P^>q2V>D14,,T&'a'ot5WZQqIP=br^/]]8LJBcIAkVXs(3h[(.?17.+1/",
  "S5HL5P[,T'Lk+WAZ7e(uo<m[5Eh*&rQlHNr,gHD4Zkqh$p+kDN6]:FB6'GHNGp76NE$mJF<MW/mc0KS934@PbG<*^k$fQ6DmgRpI!-GJZWo_:`Mbp^;=l$\\CC+FgMdX4&V[6rcnl,2]",
  "SNmkZ<p+![", "S/S:8*gI2)f5Vjk5B`5", "S-d2rMF2_", "Sr2DS\\gBl-irY^_sEh", "SHEHlc",
  "S.=kElb7;1$*XO9", "Spjd!GEehrZS53P(", "STpe&", "SA?a,#N&6*Ql@", "S94YB%^#Z;*\"mrj",
  "SEWDmoEe>.arhaP]g:", "S[T/IOZ!q[<9NA(F_U)(TrU]`\\nb@", "S/@Jk,r,u[h", "S3;,A%oBq*$gi_A9gN;",
  "S(t_Vk(aG", "SL5Tm\"K,]+", "S/`\"n3=pI8%", "SgAlsI0bGGL0>YK7", "S$Jkh76n", "S0u(@HEo)o.",
  "Suo!`=", "SgCOQ'Y)FIZTXc", "S?$tMC", "S>;l\\o7j\"j`gVTrM", "Sk06TJF8j", "S#I\"l;7.Mr=+$",
  "S@,:dd$l", "SZmM-HoDG(Afgrhd#Y7", "S_$pR", "S]*CLgD>[gmK%(sr4$k", "STcLq<", "Sn*U2Ej%h",
  "S>bk`pgqB.Y7N6`LT[", "S&N,?LiCf]", "S5WSudfB&Y\"8g@59#;", "S^*WJr:1U3mujSXFAgJ@",
  "S/m<=?q:oj.", "S6a%g8,V&5(", "SnkZUiV`U;^i7U", "S&%TS*qZG7",
  "SYXe[1Zk1%4YJWntb29Bf7;bHR7T3;aHD:)3&026Dj*,aNeX^p(GlmMg2chiYQLh=h<(OW]7'0WWJ3W!)t9^[l[8!'+L#`p*JLQn%!%f_n3R4880E)Bge,$Q7fm1E'N]@^=D\"-I,s=p",
  "SQ#Wnl)7c", "StUT4P8gP$lLj", "Sao[Uo", "SQrfh\\", "SpMD\\Club", "SK^S:\"bmos!0&6:e",
  "S<(s53@A", "SsLeq&/MjCF#/pj@!B", "SmYJhWJsW", "S0hj80Tor+uT(VI/q)o", "Sru00<Sj",
  "S'#J1$!<gEt7s>_0", "So/tcLoXXg\"YM@ZuS>", "S8=88A7ab\\", "SSl7!#0NMVc0iWU1`J", "S4[LEO'l",
  "S>EMjQ\\@sbT0`\"qQ@A", "SA.XUil\">", "Ss'ul3cm+", "SgVN']SU^^q]M\"1>>r",
  "Sp;N`j@Kt:lE5<k'T$,", "Sj)83uH*l$!", "SpW=+a3;,=bK4cX8K*`", "S@;X0:rE!LMr;hW?S>",
  "S9:)[*FR\"Q", "SYj2CMTa:GCb.teb\\J", "S>WLG_cT\"ot", "S\\gU`*\\:qoZ0!S1?", "STW&b^",
  "SALMggD9\"1O9d=\\:`FTBeM!I8Mpa13Wk1WjKkRj", "S3;,GH3[8<!gn\";0", "S9*sW]gU.2NZ+U", "Sm/btq",
  "S!_?6U", "STqpM!@U14'rY$UiIp7", "S`m-<\\rL9m^oq^(d0Y4", "S.8(<SFi8H'9-l", "S^[[V", "SFu(#d",
  "Sb0B2b", "SkX\\ru9\\", "S$=!bR3+/%", "S0Z[K&0&<-2>?nFu0\\", "SVPfe?`oL1", "SPtO22K$",
  "S'^ehebi%tB$=i6gn+pakrB", "S\"D", "So/n)\\O[JmNM(2lg*X4", "SU]<2j264",
  "SIn3d+2)tLpSU9@Qh!7V%.IeGto`3Lf<]>;mB\\m?)dq7issh1lI<r8e]6Vl$?G\"c&@'Ag3dHW@)tLhT%0JDIN'W0u8UZ76=,\"`(J+c3p36%]C!1p4,k+^kS01eokeIJeK,4,eWp#]>1",
  "S$EpMg74S;", "S'oim.%,2", "SZg5ii", "So983+", "S%RBoa!bTY9a&]TcS.jqo,5uj;t\"=dUb\"'",
  "SQEVNi8W", "SJ4tBnoT\\Hlp/jPbUbk7\\r!d>;>q?Q8mN", "S@Ik\"E0i)U`opC^7*N<", "S>?Wg9qU5U<Ee>4W",
  "S\"oZH=iCi)'", "SpJL<4T\\HBj3]VnY>M&", "SG:G=sQn)rnG38ld+WFfpa*[\"9", "SYf8BPTa6OW\\\\mBGKl",
  "SNQ9p\"", "SpJo:n)hc,.N_iCRK$", "SBa*8\"\"<V=HQL", "S_X_k_)WI**F:1$W",
  "S)B\\K7iPWFik>;JQN@6?F_t)'G^OGZ?)SLot<jFU,:Aq8Mn5@`!<L3C0hI9+#N&B,LkpVDc>9E[l4?QU.e)CkX\"Jp_%JO`4YmkHq.Leu*FZ?()Y\\6$dV%N9aA])&RpF*q+B:XdDRcdj",
  "StZQLSfDgD", "S+neAO", "S.gn><\"]", "SOR++su7s", "SrKkB=\\'_;USH5RN", "SOg)[lL3B[%&sUOjJ6c>",
  "SYhC<;",
  "ST\\L2;<-/0@>k%jf?AhRQWh#ZuU60^['P^gqX%H*7Fh#7NrpFe*IL1f.HD^>m0*ek\"a/nestk!BQ`!CM29I@I\\auD0HVC=QIeOa%C<27>Q(Mk28<(e;;#BiDch-lnpW$s[[_DKL6@W:",
  "S:<<", "SOIIk7s9Yf", "Skq[e0Lc[VT61B<tFaUR@", "SVUGf+VDF", "SY0bfcZ^Uh(", "S+Z;m;f><2;ARk$a",
  "SZOU&7e;ZbDT%@[LWI", "SAQ&PZtK", "S&/MTuEh",
  "SY2DZoQ!2#`qM+L8G$cnWaL@gkSfUWG.JJj6h/EPr+4nk^pVrVf,t$&'eM<$(Q,jJY7.]eZW:cZ]pDjugkR^R5d(4f##f8q3[5AL+ccd6&(i'n;ba@PTn>VW8ELm%1b=Wl&(cIVshGj",
  "SMo'3r+-?ajF-CmA", "SqWf'2EGt'(43^", "Sm<=g)", "S0Y7!9IV&p+\\'mVL7(",
  "S^\"/NmPA2$=,fijs_h7_DA@",
  "ShcZ[O9'GB\"R%VJYEp(S>dW,#db2&$`/\\'q:(1Jq\\HoEU\"GT03\\2e#@6X^JRA!Yg7fV/Zp:'-q`TITF>=Ifg,+,fR6%*/338@CWOSS08-9>=b'TeY+_IT;>hM2\"9c9TE?()MRf]nehN",
  "S4TqlZi\\o%iXYD", "S\",]9uiD4[qUqpk<HL", "SldqECOL", "SZ\\H,X/Bh;GW@g*b8M7",
  "Sb)5#ZT#ZEBrQHb=", "S]k'D`Yjb2i\\SGlO", "SnX9O]FY`Uk+f6*?#I", "Ss\"'aoIJ=IQ<MF,",
  "S33%LWE-K<TgBA!A0(", "S7!U^uIN.3Z`@*1j", "S`oLmZ>;g6",
  "Squ!pFna)tN$HltQA0%-K:.ZmS<b`&F(FC+,Sib@S<Mf3_er]dMOf9J.QAf`PMj)b+58OF)5e\"lP*nP$$\\2\\Zq^9X&4jF;52pq/)X`(uZB0VDMMFH==A/kI!0LAs4G$falSpW<`S:j1",
  "S8mg6HtGVQL", "SY1", "SF5\\kub]9B7@WNb_\\I", "SG9j'j3R", "S;lD.E", "Sr*@BY",
  "Soo4$mrZ2?``-4)aYA", "S=iW\\9", "StW@E^>9+", "SUcNYSBDjUK.Zs", "S\\\\4q03:.u6q;pE?7S",
  "ST2o,^J<Y;!uYAh4?P7A#+^BGKZkmjlsK=", "So%i2ir2C.:o_pdq", "Sbp%19hV", "SD'a*",
  "S'Q?Y_7p&6H0/d", "S@3%FJKY8ZB8poFfVD", "S\\5JL\\BA8V5", "S*2h;pbUIjLS<#FNE-]",
  "SU\\9dqN!?pq#'P%m/`#<E", "StqS\"K@Ffj4", "S+#_SeUEa", "STUCIlN/L", "So=D_$K9K",
  "S[IU'[@do6/dF", "S#XUg\\bE", "S7OSJAPZXbo", "S#-lRTb)Tn@eY+", "SYhocM#;", "S>[_HhsZ'",
  "SK%-6fE<&2S7YY\\b@V", "SE%&,m5e\\_KDp", "SR@rTI(70", "SpV", "SQ]&rHb^O<+n>",
  "SI<CAKQS7b5>JDI%npRLn2kb\\ukMcV", "ScA", "Sun", "SA@s^-.%VUY", "S`-633=R3", "S)0(iOZPJq`",
  "S)\\9c_2,C[;:),rOkGMq", "Sr4G5uIt%H`E#`?", "S9L]t4dpRtH", "S.Ak&p'Lcc@@g?iW*/(gJX/MM7kOo",
  "SJe+,^Ph^", "S`LQV+,t1cu", "S]eB!cQPoDL5u3", "SE-t[**d=X0`D:p_", "S-6eX[`dE%M",
  "SMk1N,`,)+(P(", "S5<:P\"Aq`6", "SY,19l\\\\rg*7Yb:Y", "SoXD)H*2jt6KC=<J]Iu", "SrUoGE",
  "S:_A]0oj`CbhC>]HXp", "SE\"e-T2[d<D", "SY0i>dor]_]\\SV9T\\5X", "S^i&V%HnI]CqR", "Sb1\\>:]r",
  "Sf'a,\"", "Sem-R?SIE;", "ST[E-8<@)=;U;", "Sk#QOj]B", "Sl/OIP", "SXD#.9m9u(", "S`Odfj/R",
  "SYiO/Q", "Sp?&duEU6]=E.s=6Kl", "S+OLfto[XY)P\\",
  "SX3IWt4T/V18,(inr'1,\"&;bu*iN%&?VmpJ#-c7[U9f'mOu4.Ha_M(\\=", "S0jq-u0b?", "S45TT\"e)W",
  "S#G3mW", "SHP*;tV:", "SbBd*kL:3Yqc4ih", "SKG%H<", "Sl:iE+6U!V'c.&fQ0]u", "S;W7u4fU",
  "Scrn'?O2/", "Soe?uf", "S.??RV(ii'@3?`", "S\"4ISI?8;NtpgV3D2FN", "S!P*9b", "S0At^cUI",
  "SB+]lhsO^", "S0&,Q39:G", "SGZgtWun", "S*rP3'f)", "SnCG)", "SF:cfP7C<3XYUePgE>", "S8+&",
  "S_t5n_nj-n,HL", "Su_1F=$UOqH[G8", "SNa&`1R$j", "Sc>LB9", "SKQkuT@Fq:?0Z`LPq5h",
  "S5H([B.e6:IrX", "SAPB_#",
  "S$!>l8kT$9_Kkc\"2,.:J$5BL8:&`76[[?a3O9q#q0<TM$,O#rSL6Jon>/N'k:nA>:iAEQa*bMXOqEp8Bdn>J/+jiY(o?j8HW$@7Zqm::l5LnnV\\(_SS7S:gsAdQB\"F*b1N0Er.j,j)Q",
  "S\"VTc`Y1", "SJ?5U(UmQ4g", "S^*rHI?6:=#", "So$Y0C)KFcd", "S^FhE6bK!!", "SNTaOG]qI", "S>frrk",
  "S3D0-",
  "Sc+UR/;63$oqA!hX>XfUK]=Ldc*H,n3SZ>g99LMBJd^78dgW@e/PWE^RtW*%CE@@V(!,YC8,JXJ?*0U7E-$JKM3Wtt=d%Ng<pS\"Sa_#I!oL(Ykr.pY*#A9.;pV4qK",
  "SA04;5XUmAm", "SNNO_l2>", "S3FU\"&ElG2bY[/3&oF", "SA[Q+LeN", "S$2k@L7\\tUKhV",
  "SYp*(5Urs9,HBiP6\"3Q.KeBBau0`-nH", "S'lcKB[j", "SYEOa]9N/i/+^5", "S?LBa;(buJFbDMf+pd2^W",
  "So]4hb_[:h8", "SI-8d\"Q2on?", "S:q<,CpV", "SNnq8;p#@_SIbhm]?4/PNss/1", "S-pARR",
  "Sb*+RM=sQ&A!Rbrbd:$", "S5ec", "S*Q<8Jd)",
  "St3]:GoNLh3#ZXX<(q6d:JB%Q6\"GdW;&(YP6f><$1Q;CflUq:$MF@o<nLX$jM$&GWi:-<KcL!*/'5NsNa;SHiXtIks%Ot*bR-C9.K!N,V3`]%iK4UjTJW^0*7Q,V*:JK/Q&q?eb]F>e",
  "SZV@!VrYB", "S>uc6Tal.$D6_YtC'G:Fp", "Supg:6[X6", "SqDbR;0E_F#T4nfs0`8M.Tc*", "StY9",
  "Sms\\])", "Sr\\B9PHqa", "S^t46rDi0mk#;", "SR%ruM", "SF:qfXEF)1CKX`gr", "Sp$sb[8U",
  "SFRNddH]K9aiMil6cN", "S*nE1n#YJ3^d;T", "S=e^F,O\\V@U", "SPr9)N#Q3G", "SbXEoBHE", "Sb<tK",
  "SR)-a6!nT", "STq0rp", "S0!ZD@0\\", "SJndR7JJYk", "SPsB-J5=KYGr(`X)W6E", "S5E/`%H;'$,V@",
  "SYGGVHr`\\V\\72E2_@1", "SJ<`>T<(emC", "S\"6-4,\\J", "Sut)-1", "SWk%1Tf.VUqbkSUg^;", "S'6`-]",
  "S)rljT)%f%K<$", "S?80AfO`", "S0&?#LYk.4Z`]%fp`I", "Sh\"p$b!Rc^;X,\\\\f.klC#3#9oDbb*5>",
  "Slh?[k_d#", "SKc)9s,,=5.", "SP?,h6\"qA!BPVPFQmoH3!\"(Z:YksK=", "SNAV@*HE",
  "Sk#+<iq-=)3k=>8B89W", "SgThSCYffg8be8J", "SDBiMQ", "S:-BaFXLW2V",
  "Sguc13d2BVmF9t%0FoA.Sl$_28(TBa.DeJ3h\\fLXosbUD\\smV<7-c^L0DsZ@1LFq44WXEo*_*9[=Ng'ck5Xf!7nXY:it9f_EWU8A+\\lj&PUBTTR,/1B\\AFsSA<fqbZ$3RTBdtRaMo<6",
  "S\\$B'f33pClIuqXFb@]", "S#mIkC[\\F", "S;'WobKGT", "S`nY=F>B", "S@4_!", "S=L0Dk6C'PC",
  "SKqkfI", "S2P7r3L/[U?Z*ob", "SN^Hg1dh@", "Sb`.k$Sq=2OTqE", "S7!`mRgpS%H@03Ri", "SQ2)*I2T\"",
  "SOQ)G?8u!8j'\\iacSZi)gRY#eCS]<LT", "SSZI.i]Dsc", "SR47OR#k_F7j/\"aT+VZ", "S&mr<#9_VJG:3H",
  "S'`Ztt<6:g", "S`'MMWY!Q1(Eej*6p1", "SLV;FN'$\\\\2)3ADVX4", "SYki`=T8e.YgV'P<>B",
  "SY+[j^376+", "SXaiN\"", "Se#I1M7e#UN@Mes", "S>?UADK-", "S]YsM;pfs:3\\tmqM", "ScAEfU]eINq",
  "S]+X#F[(9#lHR", "SaAO.&", "STg3s", "S#!iUI747k8O4gj>>re\"", "S<R?]Y>X", "S5TZNjl5]g%",
  "SokN7>s(", "S\"!?P3[O@", "SZ+9bg7(", "S.Er]pAt8q\\", "S0s*jTb[6<`>b5U@",
  "SGfY_o+j3/4W4pE?\\OH", "S_5Ns&_:b^]", "STXln.qUs4(TXu#PT(B", "S\\]Z1-I*i`_71H^l]Y(",
  "S\\naq@0Z\\G_`oSTCqe2", "Sma\"E)mj>,)_@2", "Sem4Jl",
  "SW/@VbsR=j/;28dRQC<Z\\\"Lg+5n2#\"H$u:pQdJrE'[=K#o2:*ZP-OWmTQa(Y.m,s+:s1'R&O?809nElRC",
  "S>`&>V0*TANbKGC^\\I", "S3HBkHTo]KJS-:Od", "S`c4#r$&HCnk(", "S2L<ZV",
  "StXqcP*7HluMOW=Ys?c/uQL", "SXXlQF\"aN", "SINtMsgA-[<*uYH^o)", "Sp\"Ib.`.C",
  "Sj%]@tsIVU$AB?4#<$", "SE+iS)hYOnHNSh+", "S!a@0[", "S'0.(9", "S=.igS", "Sg/-!hY,:", "S!=Z8",
  "S\\#j>^gNW^rb;kH:", "S)W;5?gm-;", "S\\X'WWpA", "S0(<\\6", "S4Z_On", "S;G8<oS*q", "SbbKAb'>;",
  "Spf9D^Trg:.TrJGt>X", "S53cC.$mn<fGU", "S(l[aKIt)\\?mD-=!K)t*58mM1X", "S\"7*_KA%_",
  "SY,,:XE>", "S/\\Ru;TMR^LHL", "SRCEX1@6a[s6h`t$a[", "S@;uA%\\eCs6`#-A+", "S`]LsE#?'af",
  "S`6E:-Y&9khKd0]>", "SWgojX@f?EK\"Es!", "SgAlsI0b.E.E<3Gc", "SRr4INb?YUi",
  "S>M;u.`#Ig>ToraO>r", "S*pt?K].3L", "SM<IOBe,h14$sZCTkB2;Z4*", "S`'MU[>Ic7-/R", "S=fcSF",
  "SbOaagVek", "S`@\"C+o\\JnC0Z[Eh", "Sq=tElEgd0uE>", "SIuLAg@.p", "S:WfSh[_=k@", "Sf.WI\\HO\"",
  "SE6*?ZYhJo33DAX\\E.L", "S?$W?MJW/oUcN", "S0iE&_>!$<oF5UHg",
  "SSQ3Q\\UM7s:c9(\\Q\"ZpcY+KU9<&q%;j[ho40=!C))\\6dsJl,(<NTKf#bgCjo.#;", "Sst1Th=hZW^hA",
  "SEXS(3", "S*2P/671\\MLpjgTIpV", "Sl1XEF^/Xr#4A", "SJ#cYGZ\"G!*r4M*::p", "S<\\]]sd)",
  "S.-O*u", "S_J(TNok8NK", "SFE[2NF2dC<", "S;]Z-", "SQ$f0-J6+AX", "SLe23_Dul",
  "S&L7s7VP4o7[nI#.G0@Y", "STXIgOTrp", "S5(", "S\"ETT_", "S>ICN#bUoE>gA'#F\\<n",
  "SB#V=+@+,'6\"(IOe",
  "S6bb.8c#>r\\)Ff)=%d]q-05`01GBN0^R%&O?sRM_O!<cH,Go:PYn,&mrq\\=R#N+FZHBntH0'Z*M*8d>4E(<p.[Y^8)A>4O$Moaj.F63`Y;Eg?&G$Pe3/K$M/)$k!KFQuGd&]YOhChfX",
  "SMgT;Hi(]\\N", "SgpS0:E3oNZY;OZSEHD", "STUrH$", "SjDU", "S35Zn]rRt_\"YFqJ2S@?", "S-%bod'&U",
  "SK'T;Ce?qjLS!TnujA=1RY<(@", "Se=*UI_pk:fXB*QBR;", "S52YrZ\\[W!A7gb6h4.N5L9Um,", "S@ME?URJ-",
  "SXYp+]k3m", "Su&C7tASe%Am-M7`.J", "Sflui</W0_fI@", "SBC-9*7NL'c^L96+Q3-jR", "SF<F][nbB",
  "S?].:\\", "SMde:9rTD!RHgY", "S8G3E\"I5[", "SXs9DA", "S/Q\\$:Y[5-7X4", "SY/I9X",
  "S2e):2&me9KalH", "SjApH<\":", "Sn=R7:r%OG=.>3D@*l", "So4r`fiU", "S=`2s7", "SU8)gIO$`",
  "S[B1#HNVDpW", "S[k6\"p#n]i^", "S3J>lYE$m5\\>sm[Cb.6", "Sp.Rib\\9+bf$C%3'T<G", "S0MY+IoX\\",
  "S\\ntFUotN,'Y!j**F>", "SA,L-1hMhi", "STcL0jbE", "S$*3nKgYl5t>?$", "SP(6J&tudqp",
  "S9M[kjsgt0:qEi%B", "Sg>g4oDdc3HmoI`", "SgZ&a_^'>", "SiZ46t", "S=(14@88j2", "SI/k\\m#D0T",
  "SKpZ54b5W-ir;c@i\\l+", "S2+0_?GQk?m", "Sh94lfc/5OmYi2q)S>", "STTdnTbAHp5U5L", "S!'W]H",
  "SP=9d\\U0@5", "S?+O!4B'\\", "SmUL0_*?h[QL_4L#\"]", "SA=TP?SK/806o_a", "S0YCc5gnRQoph:et3E",
  "S20rgC&aHuo\"]", "S*dL=@`oETU\\SW(G@1", "S/RS-", "S*>-44O=0", "Sm)h;TDjN", "S:a.&_nE'9'HZ,X",
  "Sp.SDBS6jEpKdKl$", "SS^rXR", "SEUXc@`t?s(F<P%F", "Sjc>hb2\"MW@", "Sd%kD", "S)WUD",
  "SfX0cj6q4", "SKd>a@*RgWco\\I;Xp>k",
  "Srn6^K`>CCL;4S;;naq2)L_o:8QdPU3n.B=`HF;:6;-'`?@`R@+Mfs6V9p\\oRcfeV%@?9/S3]CCtg\\fP)'aJm9?%m0=;5kb[X[@#e-s'ZL+@0;E@OR&TTOCYFae]kASZSBbIK*hs/<R",
  "SlNU@$lS!jC-A%(1RM", "SS-I\".?GBhjhDCf6jj7D`3U.", "S\\e53#gqXc/3]8+,", "S_RJJL<7^Uu.&`b",
  "ScQJm2k.G^MQc@LTDT0j!rr", "SiEbV$ZhF%o", "S0lms335A+hjB", "S$&4#ZNOY#5", "S]KO)q3[dPs]Z.b7",
  "S>#3JghQo/pl:", "Sd)P@sf-f", "SR:\"!G<(:[.h1)", "S4KOpeP\\", "SIX>h\\uPE<I", "S2PjJ\\@Rl",
  "SMV5N$oNrl_;kbO<(\\:", "S^(?uQ", "SateuJeSWCQ:]4h:L0jX@Wc^<i&bnG", "S4QHFS8T[DO",
  "S!bR]p\\;", "SeC0V_mqJCIB^7>N2an", "SW,7ZlMlGu1", "SRjYJ<n:,$sKn.&hGU", "S]??SJh1", "Sq_bNa",
  "SF9iOWrY;T#Y?%CA", "S<SH?O0(", "Sa3Vg\\a$:LB]c]", "SfZK9COf>Isl;KO", "S4HEEX>\\q",
  "S\"KL2*GW", "SZ'@EN", "SV#o1:!Jt/", "SD3WUisKfdh", "S=lOB'`s]+]", "Sl!lsNfD4j:G'3s4",
  "S.r8#ps6c9GG>?W",
  "S'a-$]ZZT*'DVUtB^<8mhc+4Y5Scg>u/aJ8!MHM[g'r(c,`.l0`&@@FIXpW<F!Da*o;qj9uFNA2(>+6^r,+f>?[Uts&O**MZ-7@iEFL61larA!D;5gCP7-D9pnu=\\/p]]6dG;#+FoqA",
  "SkLMDZ\\nPD>^K", "S7136i@Jt_AgB*(1", "SnQ#u!oKt", "S>21au@&t2_b[rFJ", "Skub5&", "SF41C",
  "SAU-=0\"In%<", "SNc-*X3_S", "S%]k8UQOb4*!JCbH", "SqP>;ZdE$jqc:,M", "SM#Raks92nk)h\"uE",
  "SX^Q,*", "SEempi@U,,m>?RG_7NS", "S>0%e9ocJ+Y\\DU0L3[k", "S*W+e\\<7:)K", "SMmN<I", "S^\"`dg",
  "S*fq@$#Y(c", "S_)?@", "SDFpkdJI=0D]OB?q", "S^'B1s/b\"K`)g8L5\"]", "SE6AU", "SZt?2A",
  "SqWA\\g", "SqD2l;", "SgX0nH,]?_m'r`#hWCfl</Xe]", "Sa%da", "S?NTSTdReDU%U>f60\\",
  "S&(b6BmPBM*'NIX@<\\]H", "SXWlN]@W9Y4MqbV%[h", "S@.*L:pKZYNS:K6;", "S?qC@I8p#/rXN*",
  "S!:P\\WtQ+BORUp?", "S0:(6hm6>Ct", "SZpt.NK$", "S^\\;8R", "SoQZ+N80k*c", "S,AgTBFQba",
  "S-Q-E=K[p17=`@Gm8A/:j)#Q.-iMlFmZgt%!c*", "SWp=_$:tP", "S\\Hk.O-\\6\\LFn3C", "STP]2J",
  "Sn!A%=g/2enaO1/", "S4*XC\\.Nr.Gp@GT", "S<KQ\"+", "SPTA+%", "Sm`(Qg*\"<,7V(9P`aS$>2PF!E?",
  "S,iZn8JIb", "S\"_),SL*&qa", "ST1q", "SUOdQQGW", "S+/BXuUEcQ9smSt",
  "S\\Nj9Mr/3$T?X>[fZ;b22J=D,", "So)DcT",
  "SSt&Go>-DH#><L!5ROm^uqH&R.?fSBVX\\#[Bku&B_Dt6'uOEQ<#!nsF!01fOP]d8Xg)?c?)^Y(Sc4G/N3=-\\P;MtoEfrea@m;iQ`el,*Wj?G]\",*,R.Cei]C>Z]1tSMPaP:K`-20`?A",
  "S[5'WL8dg0t\\47JjVYd", "Sd2Vc;8G@d", "Sdu5Dh_r", "SonYj'bU#t?I\"0o0", "S$!qK,>9Bb",
  "Skt?uOf\"d=-LT[6R7KLo'a(U9[;\"$n8-($tS7oU4tS#NZCPP=u?\\cqrjgNEbfTAa>\"ho'Nqsf`Y#k`/JIDP,ObGaqBrZ<qa!Lea$alh3gSL>p]hF9P:U%]TK`fdPS1SC[GZT=V%hX?@",
  "S>^Qpedob?sI@", "SKA5Q6", "S:f9%fWJ", "SV&FlV+/P8;$0Y", "S4S)&I", "S0L2XrI*g$F@W?Mt>QS",
  "So'FQ\\0N+8G(dSJN\"EgE*)6ZrEYT/[GbH(3\\Up#F", "SEO%*T.K", "SVM.3Hp1", "ST6pmF",
  "S^nqGb)F6U)8)", "SgAlsI0b?", "Sr;]!", "Si@,Ou0j-dm/[+C", "S\\53Vj", "Sa)kP!^p$)\\>X",
  "S!mT-5Y's_M", "SKP$=XE$&lsI\"p&<", "SgAA5S@hTi6oP\\2FS@'", "SopGg?", "S<7I)]", "S87N$o",
  "S<S&eUu3`Z:", "SWs0%jd[", "S`C']Ut8d3>8W", "ST-ifj`n@A[beK#[pV", "S@M!H@g/sasIp\\jb3E",
  "SHsr*KNFNo(2!OK3", "S0?]^6\\ZqTf^J", "S]Z8djphj;TKd'L*b,`", "STX;5g0\\", "SEe:5tnVQ=Tl'G8",
  "STO%710jedi`#J<\"`l!\\^K$", "SroYDY+]A", "S#e*6?", "S-cRMSraB$_K-", "SYG-9Y`D0sRIVj'M@N",
  "SiiLUe84?AGV6,Z:rAn:", "S8oX7iu*AYP/HC'$^bO", "S-=A&K!p[", "SK5rl8pBEN,<s</!__",
  "SAt4q\\0[81G'l", "S'[1fG=O8", "S]B", "S0&*+f7>To-S94Z6", "S<!uY,QS>CO*/i_=aWDih;89Bi_YIf?",
  "S)/aR0g>mQlM]", "S.>8;?M@O4uRQDiWDdu", "S];)jg?-", "SkAP@Go[G*]W=3",
  "SL2eG,Hng:mR/H<!OkJ#sRnDDrHVdfK-Y<$+^qZf].3^6\"<qZ`HUsf-r/4&)GnOuM'NOO:0i<q=obD5O.@_GE6BG#i1*9P*/h_UGkr.[CX]u03eT3!rk_;=,R&SGG%:)`&Cqr?&W;';",
  "S]D5P_;Pda\\<`\"6:",
  "SNFi439#UIddcF:R66)I'G]#9oOVha(G4,%oEDma`fHW\"OFe-#Tr?b_Y3KH!'R_,&\"`[>EOk&?n,APBh\"''3lft+,!K,\\T31ii86J!Ui\"DjSgf;$,^Oa+#-`rN@Gg-m@E,RQ<q]uO8e",
  "S3KY6NT(l(jTB<aq", "So4ls:o4l8s0TF&/bmM7ag+O3'>X", "S9\\", "S*$l=#7m0", "Su.CN>m1",
  "SZh,V<Fh", "SEUU*+DHE", "SrX23O&But8@HU\\V", "SOXt/s&A", "S]h_8.Y;)e7F5\\!jSj",
  "Sh#oA@bfF`Nn-b", "S\\Nu3L", "S!I.oj,8Dh*3gp",
  "S)h.lL``-$77mTQAA7m]eYcC>?HX-LM9Wg9[g@=@\\AaD:MGIES1.;",
  "SSp2>'g>\\cSU`HWq&P%g3BIKu8MJ%G/G%o+T%RH5])GWFA3Lk0OJ`X#Irca?e+Eh[@g3NjF\"%\\rLZik<VtH\\?umsUWs\\GFru@e\"<QH\"&_,<l%nq<70<C0g&&iI#S\\h219IUZ$8,[=[k",
  "S4#G=P:3:LJ", "S7-g#['*K%JDJ'i", "SlhCffcZ%a]", "Sg*QPYEakt+b@IH]pV", "Sp.SI^E-T<",
  "S,`ia%SCZ", "S:Kg!d&(dh/", "SgE;9P[SZ:", "S7k/V#", "SYW!EK`$MF7\\mj<[3Wd", "S)iU@lEOPt>&1",
  "SE1$N*", "SLUc$$pgF", "S>E\"5oTnf^;Y,?9&", "S0Z[KQYff_5`a<", "Std&j\\`[8Le+.V6@YT^R",
  "S*@%TedChQ?G-4\\N<Q6uF?`F%.ufG9g*Pcf2,nL/", "S-+@/%k`D", "S;234#7Z>\"mSj", "S@r7\"K)em",
  "SE`96nuaN8Xt72k", "S\\$<1E`stuJIGF`", "S'6)VajWf\\o^J", "SZL5", "SEe&)0YWkJ:T4oW8`<X",
  "SIqlY6\"cnL[dQqK`db)POt0MaVb45]a8N4", "So\\F)Wt:!)P0A\\H", "S7jae)o#8j`Y0^Ct@A", "SkFSK",
  "S$\\G0OU:@^m6\"r", "S7lXA$", "S0lhZ]", "SnM[Fa\\I", "S734r*", "Spku)FqDSMgo$.5Sor^",
  "S2]$-N8U", "S^E#AZb7E))", "Ssk[af", "S6e;Oj;OMI#FBNI=", "S[g7fQNGeZQ", "S8@lSOQ!Y\"PH:D",
  "SE@!$3>`4laqe9\"47S", "S`oL5(TXc", "S4NFQ.;\"nDXFh", "Sg(\\f=bDD\"*F)b?u", "ST>YG=",
  "SbDrj80!hKqYWR", "SQII3Uu;f_B", "SQnP,ItWnn1QN=G", "SocIG60&9>?0Z[0", "S@H=`cPq5o",
  "S\\<_(krkTi&7i;\\_YA", "Sj\\j2r@log_B4IhZdK?Q", "SUJb!_ZOs", "S\\fb'og5NnA9n",
  "S2(8it^Aori6mCD;pN", "S?nHr\\k&c", "S>sjDXY)N", "S3I2WmF)popF'k]P3)P", "SaRK)", "Sb??",
  "S&;RX9PC$DbHE", "Su5-D$`)6n6", "S_T8T", "S<F&+t'\\s", "So^dX9",
  "S3?^FFD*>6Xg)2B9W[]GmKl@gCgmB\\Rs@`X-", "SAb(`^\\F,", "S8j%X5UK.Y^", "S$Yb][+-", "Sr76^$ZL",
  "S-^:9#bE", "SF:YchK^n]FY?5,Co)", "SMbsDlq%ou1", "S=O.B.m38gg_r", "SVPf4^YV", "STpO3dKCh=;`I",
  "SI8C*c", "S!]01'no:[:R_CMG)+qJ", "SGZ)d<iCRC&4K^-:$6U", "S:1l1@V:", "S)l]K&.VV<N",
  "S@I>^7umdPkFh", "S'&TLVap(A4O;:S", "SrDhliFW8e?", "S]K2%Z7RYTTYK<3.E>", "S8p]-U)%Vjnb<f0L!r",
  "SGE!2'8UEq2ch<t", "Sc!844jGD1G", "S3^TM]jdm", "SrIOjUfqH7(", "Sg/u5aE-4E-H=&S*pb[;",
  "S]Z?<O@.-SJE=?lWIq,", "S8NA_F*^:-HDA)$,ICZXS", "SV5?3j'-", "S>hH?Rp>\\E6g*[0n",
  "S:3;B,u=RK;>ST!kUI", "S5o3q", "Slt0ieRj#8q", "S9FL8EfD4h=mfb^0", "S4eeM5'EM(T!,Q;)VC[",
  "S6`LM_&AsVM^g#o", "S8Ihnlc=nV2", "S3R", "SPob:nWcSTpJl", "SZNaHjT$5[`<'", "SAJRZ@",
  "S_KORmolYA[IUQAp/R", "SXu0GY", "SE6AF10&H", "STaKU5Y)\\FeKuC*q", "SqXkm@", "Sc=V8oImh\"L&j,",
  "SE3e7'5\\", "S)C@$", "St(>?X)&'", "SFP9ir(h", "S#u(9Af\\*u", "SKChaOYFSN%7N5h[Sh",
  "SKiAIVDX", "Sm#M7!<qc(C", "S5*r\"']]]97)1D1_0Wk)ILPG@Z>J1", "SFAaR&E#HX/", "Sa2/[MRVG*H",
  "SBI,u#q&3*", "STAXdkk6F7F@*T", "S>B", "S_QnuB_R[AgeV", "SDUXJOF#E", "STBuuigrTUYpK)UI",
  "Si9s@OHL", "S", "SNT'M;0TG,``G5.`FAbs", "SE$4SpE:nu:E<Z%+g]", "SYM2tpK7<G)Flp\\#", "Sf0s5-",
  "SKQ6aWE<mj+q:n]T", "Se%X/mlFf=H@V", "SJ8P5L@V", "Sj3T/:J*u8I-O%iL/22>UP+&,,p1", "S6a4o_0(",
  "SNVi^hd7t", "SE6$P=", "SJC,4+,WA5", "SYKH", "S>ZkC,3WetdpJcO\"\\;", "S#FH3^h86%8$<+",
  "S[<MK[&Y;[mZ#d>", "Sc`5eWP?=N\"mG(:joF", "SAEO^gf\"9,U0(", "SQ,Z/#i8QN", "SMjb'L\"nTo@^I;O",
  "S4&-f&", "Sr%$JaXrRP>", "S$#OG", "SrhTG#YJ>L07Y=n@0`D", "Sq:L)U7b%5grJ$\":3Ud", "S5`9L8",
  "ShXdW2uQNk\\", "SK;[1q(N3", "SI\"7:DE.%aHY0,1$0\\", "SH.Q\\", "SHfZjuaF\\G<@(1i3W;",
  "S7!r7))$!,iLS6)", "Sm/9^/2UIVR6S", "Snl>Q4fDN*b", "S>?U52`ne:^T4nfs0>o", "S!:Ob0do/",
  "S:o<A5)_ShL8s]6_Ng", "ScBJ.`HC[L", "S!r>hW.e8", "S3-!Wjh(QYi", "S*<_:c5jJU/Q7X",
  "S=mM>q`;\"[", "S_<%N1T`6FI-;Z^PV(QQn", "SA2%G;rO+j$iU", "SrQnH7Jgf", "SH=)=TNbI", "Ssk[;TJl",
  "S'U@CFKC#", "Sf?+/9", "S\\@;'0Fh", "Sf/:t=)o-HT\\ar5Z", "SLe?a.W[`R=#G>2,", "S0>cmq",
  "SE:l%M\\t]!uT(8'>", "SMt#,,^7r", "S9F:$S", "SKV$ZcY%77>])=JQMD", "SQRo", "S\"H\"Y+",
  "SbHPKMK)f'e`RQ$#2!",
  "SW>G8C;0+aJg:>&26?\\o^&Mcn(7'r@gP$d;;ULB\\BAcUb@[^>ue[6BUbj0;\"T[jsd0l_1$n-]?NMT<rJm@p4c&ts3,;dNHn9$4*2(aF4d8.jhA@0[OXA^kmit?%rGY7_a53]2sasa4p",
  "SP4@77aXmB%/$HmC!DO(W", "SiAD&'#b-H].tI+&Vt[i1Aj^7W+]LZ>_g+", "S0OTa1c6YAAc1q2%gMYM$PL$",
  "S0!h**SlkD=", "SGiqe96sHWo\"ii\"_,sMt<NtHN78d5U7qmF", "SXf.-aP`b3a[j", "SasJ/LOLgn",
  "St<4pb&.C&", "SFr)L2>?[/P@V", "S@)]&AEW7TJKds:O", "S*u]uTKX2#;F:BS(`I", "Sq.]l7rjQC/*RfNuEj",
  "SHb)?AY(*0?", "S@,nF4\\a<JN7d8OE>X", "SMmsX'5Q[:[`J",
  "SaHVWee(4SaH#r/=9&/@[fY=#P6U$@T+L?-sKN3'kSpB1`!':(,'HjeFBV^'-ut5\"oP[)s,&!pS7UT,(?gJaEmMeaj;or*!u?8>RrWB^<=Y0S@\\b0>eKs_c@V:ulI=#crL3eYN[/p/?",
  "Spj'FJbb$3", "SHh&9O", "SKEgembD9RB7if04guS", "SrMqA*F.1OSF.;7$TP\\", "Sg#H*XY;S$W7+PI,bes",
  "Sp;Q;1T)cEtYYp", "SKXSh6bUfV,01_2g", "SFG.-G@$/]", "SP9;>Y=4]\\B,hl", "SPkg@]po,0^:X",
  "S>-1N-K$",
  "SI+h.)m_D+P=6&qu#5r4\"gNo=6m?Di4(FB#4W`1L;M2N2d5T7jYn0-aMpD\"_;pV?=U9]Abk)Qj8)cSb@\\hr?!c2l3MZoWdL)p@bi+0KG!5OtU6,XIl>$86Kd*6cRPZ?8TLGDo4_CF&$",
  "S<:A7m;i+DmQr0?", "Std^", "S.\\n*:;[,WDrj*6",
  "So29Y:4=c2Ec)n^?hK*.)&LeXk5sS5s:>G`&M@VU?'\"(h<6,9fct;", "SHL", "Slebb'U;", "S=0sd`,7G.etK",
  "S+?S?", "SfgFh\\DSiS[mL&+n", "SSg_Sl@?,.\"7ETf+", "SoE?(7", "STIsr!t-rQl", "S:sB\\!(j",
  "S*2uQA0*IAW@jNRK", "Sb$+]I&RVZ6Mec!", "S)mjD\"`A/II:%gj:HrNl`>Ek", "Sp)8J\"Y?9hH\\$_!kb?1",
  "S]!7ekj<=\"p", "S82r\\)e6YtFhV", "S(B5;9c:ZY;H(UU", "SoqBR*", "SQ7XK%+Xe", "S.N?8Jn3U",
  "Sr$JjMD'B\\-", "S$]/Pj(P_Ff6S", "S(6]K;hBAN?@+i", "SE,E'd", "SYft2o",
  "S+:/tIN#@X.MQFU;68-*Jbq)>", "S)T:qSZQH", "SlE[e", "Sup6(U.RJm=\\Ib6V`4F1!K*Lf\"Ki8X;f.;p",
  "SOTG`d-;fZCMRXnIU;", "Shn[\"q59-T'7iYSScg75a`,>C", "S`9I", "SE8W?", "SP-c#DGq%^KgMTM[TG%",
  "SS52pG`6[o@K4&V8`I", "S$q`dkVK)XL)HZN", "STPS5=3GCWAgA;%LS5t", "Sh64)[fU", "S@'4p9<&\"?Bnk3",
  "S5Bl$", "SG^$,", "S,]r)0(u;D_nSjb", "S:C:h/H9E", "SfC>,;U)0", "SI\"BdErIp4*qMDI6>B",
  "S\\#2t4E-oV%0^Vi?Y?b", "SKRqj]bDu>U\\@Pur", "Sc[k..)j", "SDmEj", "SgX1SK`SOsjg7YlWKl",
  "SD:PUta)", "SoF.Hu$/nWs<;15CX^Q6(P?#*@NCJ6", "S`a7A`@ZX^=JM/BF=;ZIIP[3,", "S&+$U&mEN.DHE",
  "SdOP8J.n49.(b1.", "SsH'A`V=;FWWDS@;o8O#", "S_Wkk;^d@", "S60K/s/C-", "S`E=sI",
  "S@efbo>8?`^#%qrpS=VRu", "S:-4", "S&>%%EoQ`IZ41", "S'Ml-6!<h_9", "SSW_66Q`", "S#g+9AZKA=Dnh",
  "S#>)2:tq(:4c%DTa=L", "S\\l`&;g#BHI]K>*3", "SEld=hqD2l;`nT", "S'prfuN\\\\n", "S5!W>D)Y",
  "SU!*LHjo[g%", "SY)dHH0Y+.8*dh$*pkQ", "SdKu@8']F7", "SpUH#SKNHcISe\\'4>B",
  "SEgg/P\\@s2C$14&&", "S[5]cP", "SOUJB", "SY85kcR7]!u-Q_EG`;",
  "S,+r:CQ!9t*6o.p,\\CJe)7p*C\"\"iW_", "Sa\"(M+/a*i5dVJYb", "S2)p$=siJm",
  "S(]Zs9:=W1,UgDe9'&&s", "SgqBCBb;gVpq:ZW(0j,", "SHHabtG5]qU", "SG]Z$GOa#,YL938", "SueleN&1",
  "S<CTVXV?3=T-Wr)Tm_pi]", "S7;p),MI2OV", "S2oQW<ODOl.7a::", "S5lPoDjf>C\\", "Sk,XWPMsTi",
  "SSRGJI", "SF6Wq#\\\\G&", "S4Il<8A1E9]9HR+-Di9", "S=h'ZU", "S5\\s>", "SYY+6@>^/BcYJ>NW",
  "S[U^(Yh$]f8dhPg!", "SN2S7K", "SN,V(", "S@[@_n", "S3b'bK5-;", "SKBUhc7ZI$EEUr+$E>",
  "SsR+Rod7HEY+<5s", "S7184KmOFJh", "S9J?Uo_LZ@FY;jS+cT!", "SmCV::2j", "S@Q\\-/G^\"",
  "S\"_p8%8R!h$b7oi>UK&>eg^[0M05!l8o9nP64;+E?SYeir$@`rObul/J2ob;h69pfgf.!uQ/3jAhSbB5/bMBQj\"':ZrBPWqlF8J;F\"&-E(5<E*/^7SFf6LLp`Lk0-4ge&EP+5--2&\"H",
  "SI5j8", "SQt\\nQ86SOY", "SlDO1f", "S'`?@q(539o", "S?n!H&>B", "SrCGc;*6nT+",
  "SEej3Wst/8R]1m+QEDk", "SocIG]0&<<mTpnl", "S&m2_$>hl", "SK/@-FV*)", "S;2EtRK>5C,GAF0",
  "SnL]1NnPSC(OR", "S&J';$Fj", "S&*", "SuDc%fh\"O,j", "SgBOYM-Ts5-=t6>", "SV3a#IW>D_\\",
  "Si@L6eVZR,+>\"$'DiR5\"", "Sorj[.0jZ]ZY,g3eK$", "Ss(Q`Ysn", "Ss:VYbn8B/4", "Srl6%1-p6?@",
  "S\\tm,I@Y[R[\\6l;rYN", "SHVEW!", "SYk\"U", "SZ_QHB^DuRH(!$c#plF", "SjOH_&dc%(s(j",
  "Sr1\\]cts28(ni/YOX%#", "SKNe5->>f]OFDB7`@sa", "S0R?NTg754hrKl$gqD\"", "S,?k+kG`:kt=J?nu",
  "SsoDmaJ$olMj7:", "S)>&9[", "S7bh4UK#?(", "SDP%G]?qDVU", "S@WJi\"0dS.?`l_Jj",
  "S$C*!HrL!rLqFYs@bE", "Sc`EF!0;$(e'$", "S[/%AYUK3'rg3pT\\-:&$", "SO.LiN3R", "SV9U^T-9gHI3L",
  "S\"3T", "S+]4g'htJN>]7Pa", "S,tL", "SWK:ELoX^", "S7*PD3gXo^Bb:kNY", "ShW\\H9^s7)[g<2m",
  "SpsjVgY=VTBK+hi&S>", "S@&GFYSmFp:\\DST'Y=p", "S=X2QO", "S?k8Jm.[CjuZssq?V2<", "S)IUU5",
  "S`U(jf7m+(t", "S>>TqU0*lEL0d[cK", "S_I`j*USZ^ATDC", "Sgi>E.$1&l6>I5X.", "Ss$>.WUU<7g`:8Ec__",
  "S#G_-Pi>efm]?HRnLTYCdg.SrlYS\\h9[.eYV`]-FOM-cO",
  "S>d`%JDp$r-K._W@QU_A+f5F,Xd^:HE\\#-u[$bu05]C/aQ;SXk]ah)IBQ3:s[dqE,&qZ]Wn3qpDg/MZu\\na.C(IkW*dQHV<%T>1J^&!qOW?Fh[A$fH(AW')7lmT'lsTO;J\\Z9(J2LE[",
  "S@8V'<b+ij=`qQT^'CugL45iq]5u3gqoE)\"__aJ&?gj1\"#bNqmkKPV3<fBqtf6pQOeBk%:1JG%R(d\\(7<b/CK9KJ8r.H='pt3'=.bgXF)CNAT8Cs&@u/+'mlfGgP)^d96fWPQHL4#C;",
  "S$<T\\s8L3OZg2>*", "StaD/ulO<E", "Sr&;42\\@K!nE3f$G\\lN", "SI\\W*cKCY0o@fL)0", "S/&:?MGW",
  "SOAR')!q#po$B[ss#WPZU8=T.JFc)<-P9L//e::42e?_Hnu$Za:SCBUPcVG+5=M17mc>4#@D+Kq=_%]:lJ7jIR=U<N\"cDsaqEjFO%(6up/[8DDpO++j_?El8@cX\"%LZ-I3cAJAG8FdO",
  "S'Q3\"cI7j7GdIO-.i6[C*joM1ti38Do4?XDVt^=;8mBGOBB%JJKO*UP[2W=<eb,)Q+dMMs6S_I!OR-c\\((cRXN5Mu/Y,r-$q6U8pZRS&Ih94VXSI^(Q\"b0NnaDYAk5-Y]9,kP5I?lBP",
  "SQQ6V", "SR*?g(Y1", "SgZ-+6.&FhC", "SHKmPF?-", "Sp'Gt=i]@)79#UU",
  "SWjjSEZCX[CIN0&nNd_g^m+5*", "S/;.Xc2&2aRZ?khO[9iTM3m@L!.0J5qP'/t", "S$1YLK33CBaoX]Mr]r",
  "S7AI", "SqKAA;`8RCt@,^QV>X", "SK4tIKni>", "SBf74dpeA7>bXM", "SD!kbL$U3%P", "SPZB%",
  "S8Xh5ti2i7:b5Cj_BMi_3", "S2VEmuM3n,umWr", "S0h[<Qr)`u.3HOlemN", "S6(8nts@t", "SIgP#Q9n.@H",
  "Sm=_dunh", "S\"h]h<9Rs*,TjjmPsN!L%t14", "SO122DV@", "SblKG%kE.", "SEld=hg+[t[Tq9b5>B",
  "S)HqYtUl4", "Sd:ig$", "S6:aVF8M270",
  "SE=LAJKVBi2sA^f-0m:G\"6LWP;ro0DsmrK<me.fZ?I5@5IR%[V84k;e`@EI)F/COA6SP;rfZ-ru>;FsLtn]U^D-\\dC#+(,n'/hj;$Ec0hFk\\7dj-sN5E.jUjmc2/C;N,GoP]?5[mNhj",
  "SO;BGY48;", "SGU", "SomY_'uS", "Sqe9(lE)nM9gX\\ha", "S8uI)oFF2Q(Al)", "SB5*NLUX!^SIr8E",
  "Suk_U.,DW", "S.;", "S2jSe#saP6i", "S#sd(Y", "SkhOF", "S$tib9(#Z!Utu%p.",
  "SS5j.ZLOB\\8Q!uY7+h\\<@I0h9cPJI6,*OAUMr8G\"-+?)>+[c=Uq/Ug`emfeEPslc&Y\"OAXU>og)h", "S`@?N",
  "SLqR.e)o.hs--`]e", "SaD\"<FpG2l$r5reic:E!9", "SE$^G", "Srbb'r3R", "S='JqKg&SY",
  "S&]J1b^k2YhZLm,5DB", "SKX#J43fC42]ZfO^",
  "SS8SHl,IR^KEt\\KIW(cdU#`JfX$)a7R(d.e<hYkMO)=hoU6pO<Lf>APraVtE=m=Y></0,<4u<W)3_KX)V$cQ)W2'o-dRe4D=?ajD,3D1PrX?LiK@No_XH]^4S>J+^DZk%+Zh\\=5kG1s",
  "SEld=hgNHbaTrV0,", "SnfV_", "STCcDEqE", "SINGC7q@s\"\"$1Y;,bL", "S?H2A\\&t6,V\":", "S<#)B",
  "SLo14PH'CjkdFm*C7n", "SgTQ!1bNY'd", "S3EL?+4@P9", "SS1B)@", "SE;BE0UH=IT&*",
  "Sb@lT'E-WVUKATsGT)", "S0RJ&AKdClMpWF(`E>", "SOX^Dn'[d\"Oi;<[)24Ms5", "STmrbk", "S0Xk5A!#sjb",
  "Sb.ln(q5$*?>Ed`1bG`", "Son<[Ioil@D", "S,*!kl<<H#>oX`", "Sgips+7+:]bgBgI;7L*",
  "S9!\\`juX8arSj?SY;!f", "S436a.a.gSW[+nK", "S.]S>", "SL#eIF",
  "SY$34,]h*+lb,(\\RhP0oY)(uQQ/[,2jqo3+kRgTnjZ)r.O2l+P^.qPM&Z\\2\\A=li/!Ue'r58Ea`2UF>dondA[)X9^:bIUK_cIVZe]\\GE0FFP]#0tql9SiK@+oOh>9j*=EV3'p\\O\"O\\W",
  "Sn`I@_bupW1kdG()-e", "S/_uef", "SX*\"@rW&:H6", "S`.\\i,J(%o)", "SS'Rgj", "SlB%Q<@2j",
  "S-IGCK.q_K\\", "SsWLPX4@&fF0i6h5#Z(a#24H(", "ST>p6", "SYU!KJNcfGskQDc", "S0)bRn@AZ3[\\&gL",
  "SIVej2oBBnm$%)28YN", "SIV9a+oaLZ\"KXi-Gb]S", "S0`5c?*u>54qK<G)pV", "S\\JPj`+uR", "SX@Y,",
  "SPgZ[D", "S+1\":j[Kk*T", "SUB)`V4\"jA#WI", "Sq@kloEe&DRgipg&0Z+", "SR-_o:ZHM",
  "SY!Bn>II@A#hk*:L", "SND:4jIX9#", "Sep//HY(hc\\01CkAqtt",
  "SSNbJciN77tU4]!EPeY;UUEn9;*q/FhO`5i", "Sp4eRQ", "SnbXH<", "SS:l7/gPm1fr!!;)",
  "SuL8Gcp8_Ahun", "SL.$\\Lf\\!:it/H", "SKo!TuhgP", "StcY8J2ZG%X", "S_el%,UtXq*", "SKc>^",
  "SPX?s>-/&", "S*2:RIgXa]kF)j\\m", "SKNX!kbH(qc`@V'j", "S`6R2Isqrk0V:?u9", "Se[J-Sbai4?EWZG'",
  "S$-%bs", "SqI?CY.Z66H];^*bb7kDg9M\\.%K)-qq&L6<$", "SSi6jGe]T", "SdFak8$C$#", "SV&1L",
  "SKCYZfTXA!Pb9U>H0YZ", "S0Z[I3`n4TRTq0ds", "SQr69O", "S\\q9p=HR", "SARbT\"ND<",
  "SEld_X\\'4]@3;d0S7^^",
  "SDX%fncG$\\?5)qsM[C0dQWSR+/,X2$.:%godL]r?4h\"5T>:oB]UAp#b:KTEO.<@i[B,D>!qOb4Z=Okn*^@t0i'FWJ'uRj%(Q-7O\\@*mV:4OKsq8fr-;K]oB^rI3;.o_oBSM^jJDI/d\\",
  "SsnsC2", "SK-", "SOZi:[", "S/pm<l5(",
  "S=3#eV^S?)0n%Fo`eqhM]^m`U]g7,?AJTSd*'Og0LOrJ;=P#XFpllkr+>,*(,=)UPGt;:i87SQ_e2!_,17t,1lrSs",
  "SX8q\"ati^P1tDA", "S*_C\\fgA+^6T$@T[", "S[NuAWe0t!5M7MNmZKK", "SP-llh2<<`OkE2^O",
  "S6Y,7rEGFttKK<>", "SgV\"fRTa9D%Iru-Prr", "Ss3e5Obr4<i.1M7(", "SGEd=^", "SrLhsJ>`e;,gpbBcoX#",
  "SoSYgg@0/'jb)+0>pN", "SSm*U*I`o8;bR", "STrAS7S6qoW7`9]\\rX", "SgYf$gI%lBb)Y",
  "SNcEPJ=MO2%;j\"a", "SBn`E'=RBn", "S#,7Egf=g$", "S@MWA;", "SY.jL-qUBXpbe^!3E$G",
  "S7C7VX5FDV6![e1", "SK+mqSpjUUT7Q?Do\\J", "S7TNp9onD$VSmFK_", "S!5JXJ..V8_", "S^huJV___",
  "SOgkp-u]FcH+mTUS-ClCX.5\";FO?Lb>!U=4mKrW`-6e2U_mE,5$L]u(DPli4kt0\"Kj(-R2_6Sk#JB$`]3]c\\2\\UkCs,_gUia5\\)%j\"(^/#ACVOeTgck&VajeaM5+V3cj+8R(grM<04?",
  "SfH$\"1i?U/Rl$Bc2F#;;OH?+]/&->Lj]YG5*?D=O%_h9iV&(\\'&J+le]:F4%jd?4fbE:XO'*pB<FoSrVA@U*;J+dsG>qJlPFoU;d<^)9&oc-KJrpWU3!PiOi_fqoq]d:F!WrB?>eI)'",
  "S@RI8'^D9SotF2OC+7@nr'U31", "S;#]F.E@#", "S\\9?9gTq9\\N3.Do7", "S^QmZFufCHJ#;s5=\\;",
  "Sb25bu", "Ss?jLD?@W;g2/)", "S;E.t", "SI9fNB", "SU!?89", "SSm6eX^O7", "S/FZI?", "S#m:[s*/L",
  "S[Pj^_PW+EDblZ/(.YE*c4EX810e^", "Su@C,,(@J", "S8s\\k1\"DmFRi)", "SocIG,0>Y'pTB;GZ",
  "S>G2S!`'aNH`Sh]QpIIO", "SEdP!", "S(VB8", "Sr?0;80YsBPIu#O[@V", "Sl#%G&-K1,m", "SH`@_-Z2",
  "SjB[\"QU\\o!", "SY[Hki0\"4HdbF0RhYkP", "S$m->\"", "S0!h**S-0(j0Y-3", "SB*-p8G_`.ld)",
  "S*E\\&=Lh", "S#%pWchdW3<m;fnu", "SM2S6g#\\]@;t;", "Sr7pJd@'SK5S(W:", "S>$:o7;JO",
  "SQLQI'3)!Yh)Q,WF/cI", "S`-p]]o_&0Z3KcdRYKQ", "S<p:_Es(", "S6VgN83f,J0QTV9", "SGFdSbE-r",
  "S:20Rpnf31I]r", "Skp%W", "SD<Pj\"f<G4(5n",
  "SE)K+\"sDGb'Z4SI13Ih!s475I%)P2n-q5X<?Tc@!4X$asrkej`VKpuqoKBoSckiXt1?NFFt*q'b6=elfrqA*jPcahIOG;%M>W-E-7)HmL4>LDKug,'O:>,IDL9RU<>+QfB=l?#[\\6jQ",
  "SNOH]iF02t'Xg,.", "S9d(*Y=8\\", "Si)L4@OO&L1T'f5meSD+'", "SoB47\"S-7_2Ku6'D",
  "SmPXVPsRQ46\\S9t", "S(&Mr0/e^YZ", "S<q`Vj", "SOaKua-pKb", "S8G;sG-K!", "S)<kpT",
  "SokfbA?+Bb>]D@", "So0T9Q", "S@;@`u`$8m.FH\\[H", "Sr?$;&Y)aB", "S3Js*]@&i_^3[^q$", "ST)ju/",
  "St*-L6j$@", "S\\$ejCF<X0)3]ic]", "S7YH+", "S$bOb=a)", "Sc1", "S5WR<E`f$9",
  "S]@Iehc<rWrOX@N+VRgY]iWYs620k", "SI'PLDKLRg", "S4Y0[i:^YA9i9rQ", "STF:A.#Q41nen1",
  "S>s&0l]2)D`0*IB0q]\"", "SI\\d;>0>pJ!Y0`JVTXc", "S2q53Y[h", "SZn.gW", "SoS6b(0u=Q!KLIruT)",
  "SOAd/]30!Y39Dl`]=^7:CULE<q2_TgZ0PM0.Fm2b=_t7!7-&EZES4De^0e,3.i8\\,O^m/m@V3sf1gE_f_s_:<\\GhiQOFODcMO.H\\bNYdU_FX?Tbnb=!Am_s-dQ?=Ti7<'`sOiV3=>]n",
  "S5Q>,eU\\En:@V", "SRc\\;'_/1h:5Zd?[)UB*l4X?+!/_V*V]-4", "S/@*$jfX+S!4OJ", "SVVXUH",
  "Sg4YK#]h>spr>0I>@FW", "ScMj3'", "SocIG7>;$(,>;;a(E9'G<`at&aE$4M(", "SJ-2bVke.", "SK)PsK@1",
  "SLD7\\g", "Scdn'X", "S:r9pO$-", "S\\'](qqFboQo#gD&oX`", "S>V2,]", "S;0p;JG'M+oS6?O3`J",
  "S7c*X", "ST,I@\"ElCe]", "S`uO.-6oCSW4*", "SiU", "SS9VKU7(", "SqWB;E3.3'QT#q`=F9P",
  "S-aro;:PIZNf'4p+VT)UPS`IW-ra;<\"<8Zce^.b&DG:@Y/9m]PU0&>R4Tj!kib2fE*0m%=q7\\(XL=m1iUjQ=Gfg3Oi:c5TC0+V+^h;:J@?2VJ&GSVoVTI9o84fnFZ3rXCGg=B+[\\NSr",
  "Sb?n;c7i?c&E3g_u7(", "SM!4cb", "SE6AFLTrMK", "S?N.'Bf_-<,[KuZ", "S5*]('2s@UCJ[.P",
  "SP3ht^qVY", "S5-L\"Jq&B", "S<:i4Yeq;T9", "S\\%?<TL$=Q", "S>M;64\\\\DV+Y.Z?:gu/", "Sq%h>\"",
  "SR\\uHDkAn", "Sr0#[tEl$<27*BDP]R/", "SSg?\\(0Q^METr$kS", "S0&CJHYfl3+pkKf8",
  "SKC9`j?EVmPVN9$EtQo", "S@f#a5Ys.p!TpWP1Fj",
  "SMX#U)G=D'FR@f;!Rct'8^>5Z8MA*.D<L4Pst3,B=]RLgkn#RN`rtK^JMuj27+U2IT@h0%*", "ScP=6@",
  "S;_VY\\", "Sipi+4.ejiFl.X^c", "STCds/o+b", "SE-oPJ", "Sr4\\93ZKDNnFh",
  "S#UVX(2WhL@q&p?D/(n'eZ\"5]", "SfJ$31'[_", "SYcoGf=`", "SXtM2.,OkCc@7/", "S0b!T2(kPdWN2Hbp",
  "S.gRjc!0Fk1[ZK$DLq\\nc#(GSW;KK(*Lt?L]9o\"UgDX[", "S]\\L)qZE",
  "SFQfl&P-s(XHD=9X6oFVk,EMgt+qb*>jTPs!M/_FI=4c-5dGY&f0\\", "SY0Ue?Ysf(MrM/J<", "S\\hUk_5\\@GG",
  "SFWQ!TQanWl", "So>]bs", "SF^l/1", "S&m9`k@1", "SkS", "S\\e<n0SHe>(Y)Ep/Fj", "SAh?k,%!m]",
  "S!pLKE;Lqg",
  "Sfda=MJU7u<_ncq==YN+-A(^gtqJ3&`D<nt6BI\"Me<#r]kS;OEi02?nY[l-@kQOPY`\\d@uh]O3,P?;*[J9!2q*)?gfMtne5kBS:ohW_RPaLonFi#QneY>@,;X#hj>9tG52cF;?<6?H;",
  "SO\\A%f(MP", "Sh2,]", "S?5\"p5W1TLC", "S\\naU", "SIV5Hub?^Garbpd:gcT", "S@UVpOSD'iQ3WY7m",
  "S)&t6XHL", "SJiV>lUL[rDsD+L<bt0FNM!t8Q6n", "Sn2b)dW^2+j", "S2:<4Uogb", "SS$finKAM#EKugi;",
  "SEWloe", "SGmih!-@", "Sa_h\"9>C.H^J,'EAi[", "S'9hQ<oNlsYl6t_oP7YF", "Shl-Y2eW:", "SRClGm#;",
  "S&U?X/;D", "S/=:a$Jl",
  "SAte7MG2@b?Mc:4':'Eh?=mj_j9H*qYpJ&[`?,e7Nr%605&Qu4e5p\\R:Nt*<HbP#r00jXLkf\\NeOL]<l3S1gW-N/$78s'=-eJ=)1[47ATbm^5j=iar8Y:/Z*0E[2+*0rH_*T]6QIP2*",
  "S:YO'd_U_kag`nJ.9(", "S6)YQI&+_", "S6\\6cP.I&+lMTl[XiU", "SfiTnp(dGtMNX@\\",
  "Sq7nJaF]V^j/WldJ0HLucG@#jNmK<.aoFD.$K5)>,\"j9tW,Kh8X.HZYEPt-:6dhUH$Vd)i8M=*NY@t!Rd=qT&n_fT7fK`U6J_K$pB>@P:$2\"W-`2^]hE`%X!G78]]P'1CZ2+jCW`YBZ",
  "SK:YKe", "S^8cnTG%G;A:<bt)", "Sb)!1_TqX?qTpR^;`J", "S@UTejINof/`<NQY", "S\\dKCUQBt\"P",
  "S!M2)kdbq%f]IK", "S7P^j>s\\", "S!5%sZ", "SmN$;)jc\\``", "Soq`'&\\S8H30ZGfFpA",
  "Spp2Jo7=/KookTOD#!hd4@D\\'049IKoS7eGf\\uD<ZW>t2RAVuE=l>2", "S0in$FTn.uaE=lSk3E",
  "S_lf!&Z/$-Z", "S2jd", "SeV15]J-", "S7n",
  "SQeD&a\"$9a1Rj2,.S9Ke0Idbg0+O1*od!9G3nfT0d`4K8]aeMV+!T/DMQal76N_tA7t?YGG'H/hN\\WfQ$J'G@jGOCR-\"$<eqf#ZKM`>TMC<:8En))@6'Sk6,Y@9a:dJoagJBr\"jnO:l",
  "SDXPqjWi?2U0TN", "S;\"78'Db!", "S+1J?EY#d>B>uXW]:5\\", "S$e`cL+:93JcWI", "S)h",
  "S8Ziq*f`GGG2LCP9,sLZW_fUsX(qBO0/8uV<AjIWAA_h=+WYPsHh\"=!aQ;l'+/m*PehJb!jS$)0,-cQtR9TcS#\\'!\\hFDKmUn9@VWFke)pj(@U[7n`hC>+)%5,J8@.u`/$JhTRU?7E+",
  "S0Z[K(TpH2C", "SrkSDY\\$!1\"IV4R4", "S`#12XK1#VjYN", "SY`\\-']iu", "S\\k)[4", "Sho=3Y-@",
  "SF/Pd]j$0d8", "S`o\\,;q@>G3`<a\\.bR", "SQR&esB$,Z'(_S9d", "SQ'IBo!]2=N", "St35^8+.<%H",
  "SRGM<,cq6d5A#@", "S]Dn(8gZT", "S?mc@Cpek", "S`(hbZ>B", "S@YUFJUc0",
  "SI/h@n/CX9QPI15as2US#qiq#d<TS.<q/mD3cj^6U;gFg72:E1(al`ZQu>->tPdFkRcj)puGT@N8h,65Vd(PnE5k&uLqM-RNRVWBb8p#@_k.A:D\\R=H![RO+3$Eb@os/e'#8k/(j0+>",
  "S^VM,TNT8[aqY%", "SbD4%*Y>Z]E>hH6-rB", "SKmBflP4L`W>gq@l0lRL`nkUd", "S\\]V",
  "S(*e.;\"2;:9Rkt7TPSNHZ\\'_l.XS\\U", "SHB3Pb", "Shd+M.;DDZ\\", "SQL",
  "SGS?t[@`&f<`K8+0VqNs_u(E_>6/dnmDEqSoR3c?TG>J[N^tOg;SfN]$4]eJ5EruTGA\\e;UeOIQU\"jO24$eJ[=&RP)<L-Z6ZPG'BsNQo0s$t*UVc!Hc3pPtO`RR\\!'el9P:'(@G@qAh",
  "SK==6+MXq3`/P\"tP+]2i", "Ss\"[jqUSVTUNad>tG[KFd", "S--SKicN", "Sk@)ic=29.;Uq8",
  "Sqf`l_q:QU5K77@j3E", "STPT6tI'aX;gD[Q8tZGSRRR&??Hd<", "S/Bm:#ps@+b", "S'A/=6#IM_3ufL",
  "S3%j_VAg+R$#J", "S/>ZpA6prjr=;E,8<GbM", "S!)0_CJ/G+B", "S7AR;0$Xht^KEa4q@N", "S!\\S-HZ2",
  "Smr74oPdidB@N", "SL)]ps!9-", "SPQ0]c]**s", "SHa(k88W", "S75skuoRCMEj]bAj$@N", "S24WUR@V",
  "SRqa1Jd(_", "SgcEs;]IdD_gpbV;pA", "SFt4:FAM'\"s", "SirE6G", "S5I#s#U,.t9i.PFKlP.Y", "S%!L_]",
  "S>r", "S9aQ!", "S9(", "SWNRQWq#p!_n&%2", "S-u3k\"`9-2aj<1_H!dTKaLA=1QQWj]$NC3GU@A",
  "S\\o-q\"0jb\\1qDWEtY?2", "S7Mu1_,U%", "SGXt!I", "Skc<N+;:", "S,e/`?", "S'c,6<eV",
  "S/GA+dZ0n", "SKm!gFtPBeX", "S_.P9\"lkcg8JJZW\\;k!", "SO4sGM", "S:ErA7pg[", "SE'Y_=gNqV",
  "S01qYZ_&AgT", "S!T/,`", "S#1Q7B&3Tc`kn", "S@%i0<J7a2s", "S)\\9<+?iAk9^_aO", "SE6AFiTpna%",
  "ShKhmf'-", "S>0B)Vb=Z7Ho%`AAK+t", "ST;^,iOk\\F*",
  "SP76$fj\\h6!IJN@TK(r8^l/]'cONa+!'#)m:uP=VD<$5Agld.IMG%H\\\"f]3HG7RCt<@*5^@(IUk%936YkM&]Q'P^e3k6WPsu\\TcrBSqJJ-\"Nb<TTHandd+/3p<gdA>2?,#NqI:[bD?`",
  "SlTX4m", "SPu.MR7]^B0$g", "SV^R", "SGfi+YGrH_Qq:CC", "SDs>X7^a6XK", "S0^lP[qFp9Sb]5WGg]",
  "SQ\\o1)tR>CeVD", "S6cg)", "SocIG7b=m/2YWholE-,qNE-T-=>sjIt>X", "S.X;K2n'0=1Dg\\+i(7J4",
  "Sr;'?tM6IS3WJ", "SYXn>K)97", "StlQi4\"MrSZuB-lJ", "Slbo^`5(", "S2s`hVO`", "SETQQk#!<t",
  "S4d]Y).!CB[", "S3JQOG0&7nkEgTE#$-", "SLF6b<$-", "SbJtaj>>lO0Iu/B3qWq", "S0\\",
  "S$nI5I><mr&*g", "SI8N#88U", "S(g-h", "S`KN5/nB4U3k[0l", "S:p&+Rruao", "SjNKKOJG\"@]TU",
  "SNAhH@r\"((2", "SE]\"fSDRf\\ojaC", "SFmDj3\"D", "SsC3.WDI-3f:X", "S^)^:",
  "S0Vu,(q:Oc7Ir7XlbeB", "S0>o4K", "S*R\"l'b[*6!`\\5cQqe=", "S0Z[I\\E-oah", "SOX\"Il]B",
  "S`(&=JgCZ3K", "SekH<JpJ'F]Pk<(Kdr&", "Sd-LJ!,/b)7do;1", "SauP1<74Y8!g.r60iYDb", "S^(As'N?*S",
  "S\\<PZ^7b'gb`]u3Y`O6", "S&/+5", "S..E365(", "S08FOE\"j)T@teQR-<b=h", "S0Wli$.-5>Itnnl",
  "SE-\\_gTp[s:Y)Sb", "SA%\\gkR##6!_B", "SYGIkUG_3Se", "S.EA\\7\\$.E^;D", "SbetU:@0q$F3UD7\\",
  "S7(h?K6&6A", "SKCB!#3@n\"00Z`S'", "SI]YHP", "SbtX+>Oo7G)TR.RbmJ9", "S?Fbe0", "S5so^W<$",
  "Sjs#mV[j", "S-p/']RrD?Akq+K)#WWT48@8jL^J_oOe63\">tjsOHr[PuprPnTgrGu", "S_;7_C$=X>`",
  "Sl=4c#F6u", "ScOAt!", "SbDCd1Fe'kt`eWd!", "S<).Qd", "SQj>6K#rb`]iL*fKhX\\kRkRC!gJ%KS",
  "S<Jp=lP/ZUc=;f+", "SRh>iS/3RiqDik", "Sg+Oi+`I", "S,Qnh;\\$*h,-?sr.", "S>sjEKKC3am0ZU!b",
  "SOa@`C", "S_Gpam", "S]J/j5@j!rW@=U4/F'H", "SRO08):LEUe7<aD", "S?6E&eeC/'uJiPQ", "S+oRIHTJt;",
  "SdDG[5EFo#a,[", "SsnH,peN", "S.CqTe?WMs", "SY7R1[$<.<&", "S+/L@IT@8cu$gs0,ZE", "SRM",
  "S?he5!<,l[:s`@", "SgX;n1`oEZ!Y.HtJ", "SMOZBE:T0", "Sq)okg:\\8>UaL#DU", "SrKAY'gXlIL3K:j\\Eh",
  "Sg5g^5GU", "Sg:", "SP6))#b4H!0([=T", "Sa$1KI^m9", "SrGgKPg1GV-p.Ohdo_W", "S\"=o!",
  "SNLRT\"EBb+o`[=%", "SD=bZqs<g", "S7t`40dtSZS;LrW.Ha`", "S@0=+hq,`A\"ph]`-", "S_?4sAnft,",
  "SMH=1`nj", "SrGM:6rkG%brEk4QT)", "SY;Up[El#F\"grNGQ", "S[[tQ.>s7#7GW", "So_@kIo%[N&@0=Je",
  "SI%1A,", "SdCPFEn40$rYo/i*YA", "SY^uuVXMQe+.K", "S`f5&GM@)#;!Fa!`", "S5>18L)IO",
  "Sp)'1p>b0*eKL;p.IV)", "S7he.3*Nf=<p,p0aY1", "S\"aOB", "SFGIRFkO)b", "Sb.81U>&SNkq?GgS@=*",
  "Sfi9jOp%U!Tu4ZN2\"(H'giC1T", "S)EWWIWC_nk", "S6'3tU[>c", "SpJ4]?TpQkNS'odVEh",
  "S^GX=1>Mc<I\\fJ", "Sa!+A:SKB/76Qc%^g&N(=Gdr90pmuF)8Aupi<u!XF:La", "SV6$K<0mf", "S$;#WLa[B",
  "SLh", "S^YHfg9)$O?\\'S", "SPdBBj%U0V", "S4=2l", "SZd7(kVpaEAYJ3", "ST[6cJt$U+I", "SW8Y3\"4*",
  "S`;rbOe4^>$", "S=rWbQpBsPb5c?8TIY!sK", "SumJuZPW\\r@VK(<", "S\\XS#U/J\"D?",
  "S5)/[>\\HAK,ktbE_\\Sl?&L,4s*", "S$XQ)gpWRG`gri*.>X", "S[Nj@B[-;I!", "S$V%'D",
  "Srp,_KlBZG2:$c%P'crJb88T", "Sh5YW1", "SYk8X'`-p_30L:n^o)", "Sl+hK6(C\\1nS/Rj?D(Q",
  "S&Y\\LprbT2J`Mj7<D[DpJ", "S\"_F=#W>b0osig", "S@h`S0TrIgP>`O%$\\eb", "SR!6Ps", "SI'HHK'\\s",
  "S6A^6`", "S`&Ih!/\\[79", "S`I7i", "SoQEPE!MgrfAVBY", "SO7Ta3^F$UF`J", "S$%iYU*N`fd\\tHOcKd3",
  "SQ\\,SAifTr50C$aG4lrl!7!u=Y(9t", "SDM=Nr]ZYcEs,[.#", "SbG=%@0YJ[Rbml%fK-",
  "S!PuU'@<A!;&T4lX\"K-4S", "S\"dt#M9Es3Ua)", "SP:,t\\Z7It9E>", "SGS'et,bNK#i[",
  "S&;IY)5-!>SAql1R'n<!CLLd>_", "Se9-6JBB", "SYh$!8TXl7Fg*L^E@h'", "S7diiqI*a<\\o(X`Q",
  "SoN'$uK$", "Sa`@;r\"]!8&Ggshus$s?t^'7<<u#U(?P:T//JCe0.g@BiWFf*YOj6(k", "SY[oH!rQed4`g3I?g:",
  "SrZ*X<BX", "Sqm0AqS-C`FrjYZH>;3", "SI:_M^jn1B)", "SF4:#(HZ.A>-#K![3/f", "SJ]&TG\"tWa",
  "Sf?[M]u`q=^56#q4+Q8;VFA;Vd6;bs,0u71HZcGb3nA\\bjrn8+W/`?*XdkhKXd2hqI,.q)9;]haG9(J1Je7[#ZlRlaT`'ukXFM9r,ih$oW.,$T+7`bO^KBn=iUs-WFPb!^pDL)$q24<",
  "S`;", "SP7]thL\"(P_!H6.", "SB&<nSW[?", "SKph8Rr&8GLrLpsqT[", "S+m]a", "S9`*Nn`fr,?kb!,i(/1",
  "SbU2uXrkFnd>j*Y2@0a", "S6W]4q7<M$=dR%a", "S2PnqPZkiB%P?`E`ebsF:#^$", "SKY1R;r8R4eset",
  "SnrqFk`$i[]eN",
  "SsG^W\\)j^?D&(Q52uFB!W^Gf=!Ua:4-fW/k$n2$_qhh$P#NelUb>L'<=7iP;+u:J`gN)t.J]Th[&k!'\"a3-FB`!q&Cb5;-$*t4Kl>>;7nqqVh`-_N.pJu^5U@ZHUY+^Qf/>ujpOHcn(",
  "S+-", "S\\h_\"^ed[", "SaatY8", "SLMJU", "SE3<_CS6m5!0Nl[L3K)", "S]k;\\(K7N.+>jumt",
  "SE-;=)T[", "S40=NhA&S\\B6/Hb?", "SqMp]&0%)2", "SpHn!Pi\"D\"dO*K`H", "SSl7!d",
  "Sq3-oD@.GJHgu<T_rB", "SbD:-;3JZb:Sg?;k7S", "Sh^'<O-pT", "SO&DYU.bgi^bo8j", "S;EgGs(HZe",
  "S`LMApg`<", "SHRd`GcP7", "Ss![P_", "S,7P]mpA", "SBEis&0]0", "SWhhFEcfF.\\2Fg_", "SbW\\i",
  "SBTKbo", "SFI&qO", "S-!'2I2*K+BMGh", "SEU],Q`$8N:girri", "St*-h%", "SK4DRAKCjEX`OMuaSeK",
  "Shp!f/bk+gOm*", "S3:M1uTX?onF<K2R\\J", "S2ZG=uBD0Q:", "Sg1aU", "S\"ZeP(0AkLb:B",
  "SbUg=\\0L@6BED\\?\"bL", "S\"qrPuo@q%aOs:1ueB+;\"cOX1hlrFBBQQE]", "S-Y3c'", "S=fgSn",
  "SL<5[>D&WcN7kZ", "Sd/'A<g=q+;Sh", "S(\":3Kq(&?", "Schr*L", "S6u65p08]S&@a+T", "SJfX8.",
  "SKJ:H;YR:", "S9+O>T*stiG:uE19", "SnDeZHekLULGf,=9q]WIpt;", "S/GoAA.<?5iR;", "SrSX(*pN=DR5@m",
  "SJhHVe#72", "SQnoaQT6uf^7n0I/79dl.\"`^", "S`[18Wp]8E,", "STS\"!7*N,Q<TXkmj>X",
  "SLpO_Af_KPkdghr", "SMMtA-", "STYs(", "SE_In*)?0", "Sl#\\)cjHL&M,E9pa", "S`o)snKLIAkoO,jU",
  "S<1p\\@U0LbZ)h>#",
  "S;S&,\\#:'J3DN(5NAf=o4r*#S7\"VQf?t[#=f@6@XO3-\"3U,;C]M33>g%GX*3Hn((&nH\"el,b#joBVlluV5/>hYXUWP9T=HgAXT%V<;W>,9W;g:,h^K`><2R-&;9AGS4EW1@h+Zc#Q`d",
  "S^'\"]L", "SS]k+a]k-p?Yhsoj7T]", "S/qN^!", "SZj1AG:%SSPW/Z>", "Sj3qdfr<:5*-(0;@",
  "SS8>JGO'>e", "SJrK+IX4", "S\\t3+bbm1Hu3KX\"#3JR", "S*D]M[A!k8]gX*Lm_WoDU9,%o2gXtD-6#!2&un",
  "SiP9]pV@", "SY\"BhG-pq)g", "SoqcPN2MJ=,QF7^`", "SemjSR&q^",
  "S@Ii&?P)dB2Ul$k^unrV)Aj^dtD\"fA32Fp?4@An%[hK_3(VCl_7<-hGF0RT)X3g*h?MG@Rmq?kgjc/(<Y70/JX_`6l3[/$-M&]n:9An<7d/6uVKsi-Co8__a56`,j*?RIA42>!Q1Y?Q",
  "SocIG60&9B^b3/8%0\"Pt>Y)LBoE-T<",
  "S(@:2U(N1G.>X<?<Fss8;>B;LJml#cHtCE81*;F#RaS+3qfu^,Q=MA\\a'7CJ7-bbj_.&.,<u&V_UiW(Ws4_+51PP-4jnlc$3D!4\"G\"Mq\\5^m*PS!ITi?Sj.*9c7JMatJ1WeU&?0Y=d$",
  "S3]11urL7KQ@UJIipFj", "Spcj*u]]>", "S&E2GncY8pB", "S62Kdnt5m39pOQif@V", "S`VPf.QiC$_jp",
  "S.Tqb<F<L^unnT'", "SdWWDAs9Di7", "S(tqT(=t2M&", "S/@LuD:tk", "S3%/]oiG7?LUM",
  "S`-s6ab.W&!]0C1.rB", "Sa2'PiJ3]!<kp?", "SkmpAo.V><:tJ", "S,FlH", "S&Gu(fQR", "SXpL1#LY",
  "S:08C-&sq>VneD5=Sh", "Sgd.RM=h;\"r0MGSaPn",
  "Sd>2+3Z-Gae)*_Q>!5J&J`r,\\\\\"YP2X;]RE>fbdKoQDQ&bnqZ7g:Y5NdnSI>^706s4Z1UXGl?[Vta=VARDNORKkJ.kt`Z:cLD_f>nM.oT&i:e%s*>Loq8,:i1j>6^8uQ-JRS[>=3KuY",
  "Sg4RC2Y0lnnK1iGV", "S0qJCc&*q`k", "Sq)mGHg+`<1@ImtHbR", "S\"J;", "S[ePeh^*F",
  "S9A?UtJ3eaG&\\g", "S'S!Ff", "S$kK(V8W", "SWXA<3e`>HU7(>F7IO+`g4GE;po\"PhDKKB/;", "SZ^R'@",
  "SGS_KmuS", "SRXt,]XN0>M]B",
  "S.[^DOe'`t<4T5]267>PX&8j[7!1g^aERb=#^/7/,]Ghl?ITX?d:2q/Z;)6tIBn12bZD8u,4P!-NR>t?cjp6#bP_7TQIRVZt@'8BUt,6TRhpmIBJt</elZ4o\"/Np@r)h1PW@@OWu7A1",
  "S0@Q[84N", "Sr$B3c", "S6_5&", "SMEScD", "SK`/e4@?#0qKN@PQq;R", "SYRF4au[#Y8^$@D/",
  "STOV!4Y:JA>", "SF+*-QVCh06-V]", "SA&,].7GNF", "SWC>ff;MdRS<t2A<J3(^N?:Gt4<d:nKWb)sR#*;",
  "S!Y+UVFqY", "SU&n8%Ri$L++6#.$\\sP(hnM68F0:6", "Su]7u", "SQbsbt2D3o/*-", "Sn9$H?",
  "S_t#6gq\\LF",
  "S+Xpjs#0LA;b^@MuZ2.Z9#sd-\\O>?>Y5i;.C3)DRLgg64sl/Cc[-R29fD*uJ]s)VJYTIof<2E,3Rd[O/9D?Kh^et&eQ\\2\\7`e0h:2GFb!d>k-*0PW`[jG8@AEhK?Cs/SP8$N-96/D$K",
  "S*fZ[KgcYXo]7l'Z/Cr(", "Si@/D1\"87g=`.6h\"J.eY", "S2NO;83T<", "SP#U\"InE590",
  "S3mi+:l'\"/rBp", "S\\'5b.p&B_@>MKYsEj", "S2`>CUD([*hu(jmkos'9I", "S\\g!i][Nf", "SsGtQV",
  "SUG.mdFh", "S*()6n", "SGF]rI/TQ&3(S_)`6&0", "Sblhb,", "SgI4e?NqB92W\"U", "SkUr61`QDMqd+/Ws",
  "SHN6TN", "SHkc]*L`[5", "S-I0g9d]LA,e1", "SjPm4", "S\\DR?J0R**V72F]L", "SR\"WSM",
  "SNmS6gV<HQ,;Qh*)Tfc*", "SZ:K\\:c$H&", "SSJ1?05s[D", "SbK`C,3,K61@.NFD0(", "Sb7qr", "St@EN",
  "S-d)K1\"STI=to>*(", "SD)`0=Hc1ul", "S2%ZY+KQD8;", "SZ+V/nDH[", "SWGYdF@1", "S+X.d)",
  "SrK-\\iYf;6BY)REjYfG7_p)-#D", "Ss62Y_", "SM>^QNMFK", "SL(Q*oo\"G.BG9^iV-J6A1", "S?l",
  "Sp)\"U+`nT", "S\\nRn<TpLaG", "SJRUI\\P6BG2*MSFg.Q=kulPO", "S',7C2LA(!+l:", "S4n8)",
  "ST`pliNl0_-HR", "SiE]NY3r6t", "Sj!mLU", "SrfMXfYkT2U`'l>,qR", "S$&9$0$be?eZ$Ra",
  "S$`duX@).gkQ9GUn0fO@o", "S\"'dIMRI", "SgA-,pg\";k_oqbfu", "S5(X'cY1", "SE:*:DOe[",
  "S77Q5r2!", "SE$(+YoaOMeg*/Z,Y1",
  "Se[@Bci/(Oi-@>a#tL`9DEKb<N;gKl>R6]aorj8!E;j))N)q)@1'WEKAcUEB18F>Wmcf'n1W!!9Yqcb<pU.K0>5NiE+:lplM=UE9HRpgn/9=[b@-@t`#:_J$Fq>$<P+NqXWq)LK4p/N",
  "SZOV:b'hci?[3-", "Sl]ZF3^K", "S'd\"U9X4", "S0Z[Km>k:t", "SE6A3kINTR]0Z[0", "SS]GZ(",
  "SjaYJj=35\\(cC-];#Xt(JgSTLO>DEi(>Ir<qG5>BTRPG.\"HWh/VH1[-\"7n", "Sb)rC&T%pn)T-NXaKB*",
  "S;H_=K/QcN", "SK_c+i5]^U2", "Sa%3*", "S0ATV*MIq8?qgJ", "S@D4<\\", "Se;6M", "Sa41j>6+QVB7-'#",
  "SK:gb#Is\"KD&A", "SmI7sR(WDp!GJVth", "S8^E", "SOfne5OtZCe8Kfb", "S]CFF?tK",
  "STpO3dKCpPi`oLB", "SYFF^mq9oRhEee41@A", "S=pZ6ggYPY=e_&2gNfeU", "S7:HE)pH#-jn>", "S;E->pZ2",
  "S6=!l!hPD?slY'j", "Sb]9DS$1jR*T-f#M", "S[)Qs6;@", "S?%J6!;#&a", "S2#feE",
  "S:CM4URCk50Q3<]2,oP", "Sh]U<h:=*98m\\S", "S=9sS7529l`'7bpg\"7:", "S_4I\"", "Sb?+",
  "SZl`?_[>", "S75@Yn>?uR0oJA@", "S7ngFe!nErC", "SA!QB.FIPQi", "S\".DX^WME0H_T],\\",
  "S]U\\AbTErupX\\u<,b0LE1D*]c,@/&", "SOV!Siskk", "Sr+>%", "S#?g.", "SPAQldHs9U/3;*%",
  "SWA$?OL!EJ>@u]FT?8kp7fsRgankXhJajVQ-=M'", "SE$eZ_Tc+", "S/t't=M:RJK*NN.t;8^", "SOU%K&I]cE,",
  "SY#CRO_R8T", "SV&3RA", "Sj$mGrX\"fM", "S$-", "SF$b.8", "SHBlrJd/B8\\", "Sr<o:u=dmQVc1",
  "S7k/grV<AV", "Sb.Jc#,k_ZpW;", "Sbbs]+E/<ius\"A/", "SodY0s\"D", "Sf5\\35`=8",
  "SUh?RZHSchO%6<D$A:R/FJZh:H>B", "Sk39nTONV", "SKk$_Q:raBcB^('",
  "S+%e-^Mo\\)=0]IP+)oAmp>5tl<.ANQ::ht;'7Q6c/", "SVV$ck", "S=R", "SOQ'hA", "SF?)R$c5:sLG)",
  "StWOYUG'G<OW=lSA?Kd24?Lm9@T4ak", "SKP%+->KdLCrh<?D", "S&DK,N_f$0`", "S<.hLNe:n0I0(",
  "Sp.qReY.>Q_`'gni", "StJ", "S2RkMW=9uhA.IHP", "SASC@GK`?ORtJ", "S_/2\\/mB`XF", "S53pr(@n(PY",
  "SJ6M1n", "ShJO", "S\\'56<5Yk", "Se1:f9\"O>SKN/S<X", "Sbg58W?YFkN7i@,:OL", "Sl9,eQ",
  "SEH-lH7h4Zt\\6;r#", "SGBoC0", "Sb/E>-cNh)?", "S)*Af!A@", "SK?$#:tT^", "SKd<R)TcSb3*2ub]3eM",
  "Srk[1PbKnL(YY%0#", "S0n", "STg97-mOh", "ShTmK]9O$tJ48\"", "S8rO(G", "SkSX%m8D0s!G3sK')Y",
  "SlH9,&M]q2V@[t7qU+@", "S(JSo", "Sj^)s3LHCGp", "S!-4P5i4,>eguRtO\\HEW", "S@Jg#?$1Z2#TX+Z;",
  "S!,maokr'S\\pN=", "S&?Q4TfjYoes/<1", "SO5BIa>22BOqTt", "SY)+", "S,M>#O?ZL", "S_kl=2",
  "S7'`\\r'-", "Sb,X61@?M$9F:/?ISj", "S3<nM8*P`p", "S7t]i", "S[^QnA''>0j", "S0(aSoppQO@kS",
  "Sci/[I[I8Fj_Rs", "S5N[3.^K", "SF@a\"YjaMnqK0;mISj", "Soc$kA>Z7'gS@``cEj", "S,6=W=*]LN",
  "SWb7=6_knlr", "SVk!f'", "Sq@$Na@KI.?0dEmF0s7", "Sa<U`a*/<kn", "Sk)C5b4;9*`UlNH",
  "Sl+B;qJ#2+'3c:", "Sa..r", "S^GW", "SZf[RZt&h\\+/hg5?a[", "SQksldBl\"]L", "SqeX9SY)Lf",
  "Sdk$ng@-me2$5Pi", "Sd\\/AHgWh@", "SkI;", "SEBa\\J*\\CdbelC.s4N", "Slf4B.\"KmNA=nQ",
  "SD,%P0!X", "SpgNuT", "S!jX@3", "SaZm#d:R=HH7',[T", "S4^AAkfjRinSYU", "S?Vk", "SLY*?[",
  "S&;k6PD5`\"=VeMQ_qYjT8", "SE-gPa0b#C", "Sh2rT'GhZmdmN", "SIJ1rQ9rY8r7%j&",
  "Sc:@$Lc\\+o>Rc6_", "ST(ISJ`]5EXb@i)PE8S", "SH24ib-2,8d", "S*SmL>`&G", "S$qs+GAVW]$mE^-",
  "S:U[9", "SBp", "SJUEUn^&6+H", "SKCqcopGciY`8F04Eh", "SUcYP", "SKG\"^_", "S[Ku^h^r\"",
  "S'J;<ph8U*tB`,]", "S'RZCj4gYV", "S3[;WKTpni]Tt#G4>r", "SKX1Lk:B", "SA6HCA",
  "ShcqkZs-M6HbpCU9&MbP", "St>6@dBrfrY\\!ItY`;", "Sa4@^T_T+'", "SS6ialY]C", "SLe!OWuGiq2Y/\\/",
  "SruZQfVAsl7eRRfXsD.4n*/@&[", "ShN,-2g'S", "SeV", "SZkVMc__", "SW_b@4",
  "S\">t\\<;YUR1:j[5>u691:", "S@,SSCoS:+^qmDO9", "S>IG@G:&DOntGsaH'L8/l", "S8B^$g[+7YD\"B1f+",
  "S)el5A&l@.:go-00)%m", "S'@\\$/", "STB;b\"`J", "SARWeE.1Ick9(",
  "SN,htBjWE7RHQ:,hZOC=FZ:r[!,ZaJCJ\"(7Ec'*hGpiVBPTj31.hm6)&(BE^=(0#._lE\\OXq0[BM\\h$AHol*9sTKIA5lO9]qQHVqhT$\\51/Fu.e9FUP(35C3\\\\*2ruBN_`in)4hq;D_",
  "S3HH", "SSiEa", "SqJpf2MDT!", "SGfMB@VS#", "S0dR\"\\jB", "S@13NTmhjQ=\\Gb!W", "SpBu8KcO<",
  "S_R>VAQSf", "S!B", "SM.DSem,b@OP*bOlI=^W:Xp", "SBqfQFd`U[[o#]", "S\\\\ZOm\\:bsg7C%U1",
  "Sg;(Ml", "S*6tCk_1c)srB", "Sn>g*:*GBK", "Si%==!p9ZC", "S9pLJ:.M,6j3E", "STXIqd`\\;iF",
  "S)q.Iaho'\\ViU]ua", "Sin3j", "Sd>Z%MhAL", "SRm\"fDR;0h-7oM", "SYG?Y\"Yf17h7ZVWK3m8",
  "S#9>i^", "S>s.J", "SDl`O;", "SqmYf^ormfpS<V&3Fj",
  "SEN:YdMVcfQ?'*\\d'_49%col'!)s$2NG&,6FGNG,;Y9GYR,U>", "SqeX%f`#c", "Sb)>)ZrRT:U>045g0ZC",
  "Sb?mD!", "S]h4;E8'aUc;k54", "SG@')SK-", "S*2@'G@Y8ooS@UKl71M", "S\\2NpI/#d", "Su1=l^$E0_R",
  "SglO_*riOSD\\TbESIA+'", "SrRR]ZpKL+=*Rljr", "SrkFB&`n`tL`n4[t0b.1k", "S]IPiL",
  "Sn`2h?8B??&boKmU-t8gr9p'7Z!k4I*c0>C`,6[pccWg", "SP?S@T.X-gYIf6d*rMu5#7a[K", "SY/:GscQp",
  "SN)(B82\"Z", "S4S^#QMg]jY'jisW", "S8.JfL:rjJVm`nN", "ScL(,4AFZi30,n%eZjlE=N54",
  "S6Knk2VWOd3", "STSk4!,)", "SpmAeH!AMjGID", "S%h[5", "SstBVT*NK", "SiBKJG+j+DNJ5e<Qqo-k",
  "SPkYWVIHZ", "ST#4R$EgN^SpM\"a5bE", "S&QM80;MWb<`[R#bY\\:PKFs%hP$L!7uU!QsZ&FmQ#WKW4b+83",
  "Sb1=A", "SrMp+0ol*Fe>?di@01n", "Sohq+", "S6)^P>cl8Go-A\"\\L7N#?", "Sl27-fX?FGNmKI&qF<WI",
  "SOq2/KpkQ", "S@Z24@_2/@U", "Ss8ss8,5@MrPBoTf\"7W+t", "Ss`PZT9HGe3l^Ogk8,#>D(/.+",
  "S0(oZlIL9<)0PY]9nM%6", "SefHf!7-[", "Sc/-IR+\\B.]kb&YhhY;T^8h,A", "SmN48Y?$", "S'XF@RmgHOf",
  "S>k!f\">X", "Sil$0<<PM[", "S?&FQB?:L", "Su2KV1V:Yhj@co", "SRSO34ZL",
  "S-8&n$7dh85_=$JcuHCcR\"Lm1;J,OfC5TJ]E", "SN/I3O!X", "SAsqPAauD]", "SX_'.1eka", "SsE+kn?l",
  "S(<9=iF0ms*", "S0EY_8pJ[c)7Nj)tS)@", "SbWU+eSeoS2*uqKa", "S:t&;d>6qN,pEJ",
  "S\"!d/*V@JsV?NFNnI@", "SF-nXfp[0B;q[St'", "S&(HT/EXoL\\.;", "SgAlsI0b.:)YfGiF",
  "SMiK3KLk>9JQUENj3C&", "Slcqnp#23ulT_MD[", "SgCH0L>;g6", "SE-GSc`#MZ\"", "Ss1t;i_c[OAc1",
  "S43.1'RnT", "S'-M95s:I7*mQj=", "S!^'<JkSo'rc7^]c8)", "SoqHT$gu?M-3Wq#S", "S(emb/sJ\"N",
  "SLUQR&GmL!I", "S(@Y![t7[c)fFF]`", "S=.W'D43W`sm1@k", "S/#n?g+uPX)s\\", "SVNlpU2^*b=",
  "S3D($Pj)*5^", "St.D#-j'`M1*'ISiKThl", "S)%b<d#T0$e0F*", "S@,\\O60TLmsrJV^.", "SJ`M.j\"=o",
  "ST,D)UL4C", "S%dZ'C:3O", "S@Wl(h3Ue^,@jKmQ", "S^YC^C^(<ihtK", "S3e^%a>smd7Iu2IJ", "S``%8p_B",
  "Sn[W#0S>'", "S^Jn]?", "SJcJ+pAFe", "S9;7k)D=EX:n\"2d1GS6[", "S&/Q;A[h", "SQ)gg':hY2qaN7L",
  "S@C`ouca((", "SE6AFO0j4+bY,,HJ`na", "S&YNl1", "Sb;+(_AhYJK*;i", "S_s(^WgbD>", "S,a`t]",
  "S]Km`1`''_:]R'Xdrbl", "S@[7u\"TBCkBIr6_ng1X", "SS/@_+6n.=e3&t8", "S>?F]kTq:<eY)nT",
  "S;I%G\\6\"r", "S6YC#G2nW?Iejm", "SHKuCM", "SHPR$jt;", "S\\f4Gsc87-'FEAZ6rbHOF",
  "S70'V/Ph1=D86mKmLhN)DkUM/o`/k", "S[<rd!\"]", "SVlb27>jG3tO-pV", "S(AZ?`YV", "SEgU]h",
  "SJ6.3^5n", "Sk/Qc46IbYrjp", "SHl@?J5Zkh9`I\"`t`VHmIuhHF2VT@", "SEld=h\\SW;PYW%gu", "Stt,",
  "S*=+J*;crqg$nY4l", "Sk,s*", "SV9UVEnYR", "S:XS5BDp", "S+Ns>", "S'%7f$t;", "SK;uVN&1",
  "S6-j`[-TEDrT[", "SJ'sZ", "SJ8Tr?;Nf3", "SbD7:U>B", "S)@EQ,)H1", "S?GW^2,U;ZRcN", "S]p!",
  "So>'cc", "S0PHc#", "Sen4>qu$r?", "SH1:T6", "SR2HU.!WNniFZbq", "S>*52l5`%((", "Sd+rZ0#nUB^J-",
  "SOM_4o=rL", "SqVJQZRI", "S(:T@$4i>GY",
  "SUD&DXJ.0g6$N\\Wr'S+K!WDo&!2rpAW@DV6uj4Y[=AYN?]rPh1aTN,Y@,cN:7'rKd6$Ko\"0kVmk3NZX^X7Me)$a!UeHgt2=[(7W)r<\\&G4\\\"0=i@o<\\H-pnMPI=;+Z:?8E$+>%rbeF[",
  "So'i?'Y&;B/@IrdQ>B", "Sal'dCjAkAg'dC", "STpRmsK+j_.\\-ajV3.d", "SSPPIgL8\"tk+;RK.u58",
  "SE6A3RTpna;Tp[s%`n4/Z`J", "S<Zn7G", "S7AF$-\\n\\(IIqQ'gF>",
  "S\"02YjPOO^\"@aTJ2>kO#UGuT]*T7\\", "S7^hp,`tA2?]>)\"#", "S_@Sj", "SW06Kg\"omBc",
  "SlU\\/LbXcV\"$l", "STAX4[O$1@X!9k;e", "S*DD:J7j+W>", "SQK$U4l9!&VX2$ks",
  "S0>4mkgtc\\:\\lFtK@h<", "S0&6=d\\8NtZbURUVrM\\", "S0umDhIu@,mrhJ.(KdH", "S\"Ya]*6L],G",
  "S@`V[ma)", "Ss_rT1J\"af.", "S'4N$[ViAWprme^", "Sm$i]E+B8fKW;",
  "SLZj\\laY5tQTXP-ORBBkjthS>^r'`g?Pm;D0PROo5O&HA<ffrQTW<1H%4r2(td$?WdQhU=U6%fPsAI2K*GP*C9S4*W*?tErD\"9(Nqsb8LH,J_!`d+@,\"VV+5UVFaiukO1/9,s%**5bt",
  "SdC+CMgD",
  "S#UI[mU!6)?uI_ng>.;FVfp1b;l&Ig>Q(eR,<.pMP#CrNnq%YksRBg7u[P&i#Xc(:@dmjskS;<?<ZoN8mn0H@K:RlSadR(;/M1[)kAZ'L`FW-[gf7_1=ID:sdYl10-p:j'Y*'N6?R26",
  "SO_03pBU'$nf.+jP", "S3)\"4AY.mTKrJ<:0", "SZ%S9>.7.'", "SELJg8&F-", "Sj?*S//&fm\\Ym=KBHW2U",
  "S:#0",
  "SR`&ggbe*oQbV]uju=.ISST'JjHm0X7r#^)sOmY1b0ts$I9]STHEm&*kQ?t#=j`8Od._LcPTJ`7?R8h;nfc]j7JW.Wc7oK,-&V5`>hX@=1r?ap4Y1EZm<:+!bI\"T57U.s^-Y1$5G),V",
  "S6nf)7Z0A1", "S*g`R,MLt", "S-htCnc1", "S^.f_gJX$`S_f24", "St.\"j",
  "SWt!GE8FeB'VH`8XHZ7p(tuOfIA=\"H,\\Y>knL9qRH(g^@!5NXs@2!", "SF!,bbfmu=<",
  "S9DlM8hTAaMl9D%/p7k", "S07F,)^;", "Sp\"X(O", "SD2Q8\"oF:", "ST/P7m@Y.;9`a)Pm`I", "Sh\\HXi",
  "S3U3KSS-D/SK`b4;E>", "S&G$4A", "S*uji0q]R=MrJ+;6", "SYQeJCIaql", "SE9->sYU@/JrKJXg>K*",
  "Sh/]g)4N", "StM#3Va;j;+=gVVhkS", "S>e5s%`?N", "SQK^]l2rm(", "SpjUVJTnMN1op<Q:Eh", "S,dZ",
  "Si'<S[,B0^LaO&g", "SG>id`", "S#l&hPXI.", "SH-*$>$2@iWU5RZ", "SW;", "S,2`?E_4fn",
  "S71EXpS]NRFo4aMPF>", "Sp.^8[F<uX)pfPMr7n", "SP#jG$PBi",
  "S,u?_U2WGR=gSTM:Q4gIP2(gUVs\">e^\"rq&tiO:%Vmt>[%F:bd.Y/BO]87c3\"DAbt(0&qk@$n$jhSQ7bq^,%cL,:i,'mWK(qZlHAOslYX54](qjV@ZCRQr8NUl7:Z!'N\\t6,=)'ch&&",
  "S!PhGN\\e,/?c5WIdnj", "S:rC<[pb!PRp:c", "SYWD[8E[3FaF<_aT", "Ssf0\"XRYhgIiDtJXsd@m,FP%1Y",
  "S\\tZ0'0dn`!KL;.c", "SZSm<DK-", "SIe0pI8fGq", "ScAW$]Y1", "S5giE]s]09J_\"m", "Si[pIbuH\\",
  "Sj[Es_", "Sa)Xjj6&-W,\"j8X6LuNa3H39;;eQ,#C>i>+oTd'/%HE", "SK1`n*0T,5REW>Z6T[", "SAF48<",
  "S0dlT=a#mffM$;", "S=2\\3C'^/", "SdI:+$50aUX!h7Z,", "Sn\"BNG*Vq6.Io.\"bngLYeebP,K",
  "SNQ^rF?^6uBo)",
  "S)`(EB`Af,T>#=jHpGXs0(N0?R,_c#FJ:U>DXjErq*K!ofu6iO*(k@R++?K].e+#/0WgbeoM:=`eB5P76o0_3Jo&F3C4Yt)(0n@)eWE::27h`!-uP.f$OW;N49]0a;MVW&QL(Z)fuf)",
  "STB?0?r`;HTg\\4RJ7dB", "S7k@tl'F;&=&AJ4", "S;(Y", "Sg*Q7pKd?2!\\a<fX0*:",
  "SKL-tc]Y0a,psCf=`e5", "S@.ND=q;@5kTX5Yp7ht", "Sqd2l+pct/pn&aLK<$", "SW/%a)WEpMt)l\\(*7Ja",
  "S2hj>Xd_0lmS8A",
  "S^@qlf)R)u7$?,56,]5f@9_T%(:Vf?hIp,P0d-JY=a8GiUPHZZ2&.lK1:<UYN!'j@:P,uDcDbAGlN*W)cF4Kuu/kji_&pr=n!+qiL4ajQ*@#p>7W1*utUW.C7QnYOPpUsuuY\\5-9K[E",
  "SpA$m*R%8/g)&_8!Yp)t.>Rph", "S`l!K!rbqtK0>ZNHrX", "S+\"<Xcg4hg'\\M^QRb'r\\PE(87`*`P",
  "SnbYrs&*s",
  "S:sh!>7>^fu+TR0;sXfnS2X^-o^'FoC<b%<1t[YFec%d=qGAfXDR^5\\3J[CUHI^].^,%(G&-nl^0rGDKB9<Eh0E6n]_\"/fPF_G$U0I\\OE-c*$_7S^2;Zdb2K)^=L4q3'`0:o%Z0kdoQ",
  "S>JnI,0`l8%E-t2MYV", "S+nk$d;\\(k.ceZ\\GGIFt7[?rag-g#_qo>VTe", "SXp", "SK4f6f", "SrR]C",
  "S>j*H1`n@Ec7`B3]",
  "Sh:kpSWX9UTNFOP8Thu'9s2&d?0#K#ZclRnFrI>VXd(t/L(1bf9sN^7<[jE'=X3jI[p#AP5(ik)=t4Z_P,*@0=\\;:pADOGCh[8VOf5LfB%@b8WW'?fF0d`64\".JYR4cd2:*8+g@%&A2",
  "SqJ<Pb@0)W87La74YA",
  "Sld<FSB!oIGt7I?6D(ED3]bXR-bo8JY>;3\"'BN]_!^-h7eTSKkF_,KDL[*@0/lBF=E_Es@]J]d<aIAUVepn\"mZs#mLI[?!)fabR$*eD'upgnS)jjgg$rXT1^5Kr!@TIL<OMs^e&_*(%",
  "SaHBi?2NNlK7pIo6WNntXVo]ij^P$T6k_O6V(W-H`O%0)6#*C^6Sk2qYK@tt9g9#8@GPd*9^B[#/!&X:iUoFQI#7=>Lk1VH%f\"RlEJtrZc+c60-PKZ6KH]9CBVgF#+#LqJ+$f_`<W8.",
  "SO*rl%(,*M5/%Yh-41", "SELBHC8`Q", "S),)DbI@", "So+>mc@5o?Q\\Etd/H\\?3\\aSF", "S!n+PO",
  "S@f=r`@//@?", "SI^Bi]", "Su7gFO", "SY.N_of)", "S$^Q=9q0;>/^nTlW3L", "S`l_\\Gol$/!INCjor&B",
  "S\\l&gL`si>UP4Z", "S7!Ie<@GRd^*u]!^qL", "S./<6J^Ssf3)j", "SOOSl752BS5$f.Wj", "S@Q$gP",
  "Str355Z2", "S*HZsSA@", "SgAgGA>jg9m0&JIN`I", "Sg*8MBD%#b\\^JM", "SKT*:F",
  "S0E?G[eUNr%^s%S/f)", "ShSU[", "S$Xr0>qf(?obWi-V", "S]2ca^b]YbHb?(8:FH'",
  "S34:K=6\"$PY\"/F>b.K", "SE#FHGl5(YUrX", "S4a%/i", "SaJ-V9m*", "SpLO;W_aPpSJ[<2uN-",
  "SWaA@J<$", "S'=<jW:B", "Sn,\\%r9h7", "SF8llgb)!2!0YsnE0i-", "SQgW", "S\\9A],KN=9iK`&iQq)G",
  "S\")GRa$l", "S[SBPFj8IZq", "S\"lM\"]", "S*)n?=", "S;CCYg:B/M_", "Sa7+S@b8n'2!qD<",
  "S)D5cJh?YojX4", "Sa/,IrtpI9d", "S7^j,u>JR>%FlQJ+\\#\\", "Slf;+6iM3=odHhII", "Sik%EW",
  "S\\TJj3_l+", "S@.MKGo#a1N*dXoa", "S`t;Mt", "S'#b-S9hA-RV3(Vr$uXOtbm]aJ5ZR>AKXr%f9g7%RV7AY",
  "S5+]/5euZc#]qi", "S0!Z16", "S,fVP", "S:54Y;n\"3TCK-", "SX\"JNn2hnc*hrc", "SX</eYOLqrDKRi",
  "S_7u6.\\N%*ZB#I#", "SQ\\'qV/88\\D)GtNm%U;\\", "ShM,5#-IH@c", "SYc9e\\-@", "S/n'O9(`qgtpN",
  "SU.RSB", "S7Uh,!<7._K>=jUV'D91k8q3sGuX&iMSoM", "Sl\\%cs[QJ!Q7h,bJ2>", "SfOp8h/'=on'H`M#-e",
  "Slb6?WOeS", "SZ^-01V^lM\"kZ0p,", "Sg1;-:3.DD", "S>biP?*.UK", "SpJ[csg*/S<q96;<g]",
  "SbeoG\\p=3F@p)gU4", "SGAn%", "SE-1b/7&Y'mr>pO)bR", "S4Re<ilU&&U`ADL", "S81&#jO^U9kH>+$<:Ui",
  "SrZ#)3\\/!-?`a.KRpA", "SP'/psHuN@g&1",
  "S;h4<%s,D,Xh.l$sdDh#PlF8A2,:M_9?<ul76h>7-ueT\"C)03n5qj>h@[iT-L.uIk[>B", "SkB9B0u6f",
  "S:,'.>7&[)!U;", "Sg/V4KF+0f", "S[+V/?:nJsUP'*L3\\+gb>", "SrL9U%o(Z%S0NiD0>&;", "StV]c-.tb1",
  "S;Piq1", "SY,_.Z<A.", "SO6oR>m74SPf+Z*sD$04U", "SoT7gq_17!", "S8#9air3Kc)P$1JD",
  "S%\\W!_lBa+Ncdj", "Shr;2`Xopig", "SOV@Ye", "S-rtZK-\\\\i,", "S-J9('de5ON",
  "S7ja^YIVX9=rYGQMrX", "S!)`Nog0VKdH>l", "S77gJ'Nfa!psX`k", "S5>6tB9^6G", "S_,8ss?n=lbV1l",
  "So[", "SuI$)TrFfbQ", "SJDJ9s*g", "ShJ\"BT", "Sg18]?`\\;iF", "SZS8$k,F", "S0&9[&Smnh3r&dg.",
  "S:p", "S]kIWC\\@:\\h]MT^;0ji", "SqdR?f", "S+sGu)9Z84d+$", "S0!ZD@0`M/<Y1",
  "S>jJcBo\\iU`S)ie(3@\"", "S=G=c'[P[F%Ks20e'_(", "SF2O#2", "Sq[hf30&<t5*u3p!3L",
  "S#gAWN3l^K7pN", "S7j$1s7\"t;30&Jj\\", "SugL8+pp^5^b(W?\\lbt", "Sgi0:sZSC_C",
  "S'[nJAOFZ@5K)5\"5G0ABX=81ISQk7S&W'ORcGoa\"]", "S\"6#:DGY@<k*0pd/]sslnT,Z_t", "S,=Nio",
  "Sp.SDBrJAtmEHah/Y[K", "S.[4f%U2\\Id<#X5?t@3", "SJ*n$\\PhgDO", "Saf8O<5[`", "SA=A\"PJcS,E",
  "Sq#]Q;41", "S>^OQ*K^[2fSmd\"\">dm", "S\\]=#Bk;!S", "SU_j('un", "Srbb'r",
  "SDs'DV2iE`@G(`SS']YE1bJJ", "SgAlsI0b.>DE6-\"-", "SW+dW(Jjh", "S^\\D?",
  "S(@%'93o>D$-arqRO?;rneLSk?Mg#@JMV4Tfu[B#!G:4X%OR8;@lm,?s*L>7RADkP]Sq!Vhi+4BK[,?QOZQut5g`WQ7t'&1SiAt&GSV)F^L@^=:8be1HSTE$=^<e23:c9,/7/A^$AGW",
  "S4'Y004?&KJA(O0sip&Y8q(mUh&b@%,[gR%1Wa`R^!eYqB-9J8HSg#j#+;(Re/4DZ2!@1gaT'1(!uX$0_J,&uuJg8-7Fjb>JB^YtZah7&%@G+O:BDGCc^.7mS)VUc;mhXu'ht8)q:t9",
  "SslEaR", "Sc^ZJ%3o\"iX:D@aQ^`&H'", "Sp3:m0_uGG(Y'2V$", "S`#IMET8P/JqU<RN",
  "SWBHrho-\">GiQ,-H=;PV@44SiB?Pp,SN720abR", "S[I=>%rYX+]8&/]n(I:[m9;1!jpV", "SV/<",
  "S+drLE$^0D@P\\oT0oG%Z", "SMAWqYD[nr@)\\n", "S&)Qe5", "SZAPO&t3G<!e(o;5", "Sg@%.gH5;-lJ-",
  "Sp<HL5oMP", "S8p?Y", "S,3.+VDmA", "S0Z[K^E-iQu`I", "SPu+,+R1\"\"&:X", "SE-A6,bWIB``$N/`TU",
  "SgmbXj=R", "SBiUY2`.6", "S?ZVRu", "S!P4p&`tfVK3R", "S*TS1", "S3)g4pK2aoO3W&QO",
  "S&7mqn:Ackm!eQ(^s(", "SuUmCj_JF]KH=u^io[", "SFWTjlWqT", "SKXEUaF)]>^gc[Z$>hl",
  "S`5(>OYWr!sK4BX3", "S3@LQu*Nf7ign2_CoF", "SnBpYmZ%*2.0?V\"0&&I,'Tbl_@\"\\:)1B\"F)C$#_",
  "SKd5EE3:gJ&Tr</V",
  "S)U[X@3;Q3bqWt;a'c964*CLP`UK'u7tOl3&=R,5&5sFIqgd#Db-6_i*;&lPc3*sb\\(_Z<p]JSOhNg[M5>\\3K/gXX8sDVJ=)BP*51+^&Bd,U:uI`MaQ6$*RD>s'O&3h2:]AU=cJ:\"Nn",
  "SFH)J23ecNb>IKLJ", "SDJ@tHK\"D_l2M33hrBD", "SS]Kq/E$O9TE9CTkFlG", "SP]mX7;9iF%", "Sg]",
  "SbF_N.T4RJ\"bmgshY1", "SD$X;9/K5u", "SW-2,[uqKLY", "S\"4eLP", "S@;X5>r`(hrTnI]6pI]",
  "S[g6OFdCk", "S0Y-$E>?n>Z", "S`ea.*Tt\\b4qUK']`eP", "S=6s2rj;-XQ", "Sp)IYL>?Ujm0!d",
  "S$1XNTo#?8Eq:)U1bR", "S5sk2F#H&UdU'4P!u<B", "SY\\g@q=ZP", "Sa#GRgBX", "S`@,U]KPAZLT(1;V@h*",
  "S\\$jRorZq=^ooL!m", "SqJ*P\\]!ZR(TX%+b", "SE60$fYjHS+3Do'A", "S:g9//H'f,`c,O",
  "SpL.0M8l,(ViU", "SH=dpu6S", "S`l)", "SdFl+?0,cP%G\\N=P", "S/bP(lGo0", "SXmXM#_Zi",
  "S.BGZtEHsTFhK!6[@A", "SF'!F5(9V\"N",
  "S'k+m:!P_d:\"eV\"V-eL^.UV:dB`/D%>ANer-k+!T[$R:(%oY$%$Is.teiWe1Rl;V21!Z.'@4mTO[#rM8?>rJ<r/7'/.V6sAileHVt&RTOY<QAaPg8CWl;#R+QtVJ,?:QalFPPVQS$@1",
  "S5I8k,?$", "SqiT`1", "S(K%]g,6W[a'-", "Sf;X7N[F))W", "S7!M\\;7dM/arM]7cEh",
  "S8Gd^bg%u1N\"DnmZ,Hq=Y", "SNm.ng;72fH<-", "S`SYs,", "S\\@jCo`<+]VpF$)Z", "S<^l;R^&]>PPCn",
  "SEDFdl>d5O7S-&c3", "S$BlknLl]L", "S#S.PA\\:4`", "SXTT", "SulJnDE8;Qb", "SathWD5(",
  "So\\oC(g79<FF8f^3pA", "SIYTBe#;tIK)9VuoQA&!", "Se^-", "SU.4t':6n", "S]kI<t7`%>Q@;_qk",
  "SZe\\eaB2Nqp.l)N7", "SlH:;a/j79V[=J0OT-s", "Srj6FF0i.EqEmphOpI!", "SI73H\"",
  "S\\#4`l<pu`qec,", "SS]J.kEl.YcqHAZfTpJ", "S,9l\\r'&k^KFF_+", "SqJ8[Yo49&1rhTl-bR",
  "S'*8j\\Eh", "S)^Q+fBq3Q)", "Sq\\k/-Tf0Ke", "SZ%kq(rr", "S]KtNq9C_kEZU[s&$+ed", "S6@$@ILY",
  "SB+76/BNLr*2N5", "Sd#?NDWS5=u]B", "S@LWgPN-", "S=g%up",
  "S:H)Vgu[/teD:UliSJE-3UjYoXmCRB&7J?(X:i5!7&7VFOU'Q6^QobHKEWrthP`b'?8b(n&;/0X9F&]*;`c1s!U#Fs!^5XQ];2(=/2NI=%O?SjU?!D,Zt#3Zh'G$lsTEYV0U(QUnubp",
  "Sbfb%$Y.BL&@[=XD", "SFHthLTPhbdSHjc)", "S)&,9i", "S)LpOL8m'",
  "S<O<j.p?Ke(h^#f'tV\\M'ol68aY4K[-`+eE", "SK(M^62!", "Smf<&\\)Y", "S9rfK8\\;", "SF(7^!",
  "SJO1uh*sn>P", "SbF_tXIptV%gC(sOK7p", "S]fTq];&_3(c1", "SFR0\\>", "S,8ur$%gTJS3I?",
  "S^WKF90lj__rKS$", "S!##<'n7c3O=?RMeiU", "S/J3jQl:", "S7@$F7#)d", "SfjMZih*!mKa)rA.",
  "S_gpU2'$", "SZ0'9%rNH;#", "S2jHXLq-`B_EYY", "SYrlP^NZ?MVY(HOuR=^mjTR?U!fL>", "SSO1HPUM",
  "S`9-\\<", "Sg/SUl(eK", "SdIqUqPi*D#54.", "SMqae0DX85<", "SkN@o5cebDc>X", "S\\j)^+QdY",
  "S+iS5", "Sb[jej@Me&>gq?Q$rLF", "S>;$mDpFN_7>>$c:T[", "Sk0/F@@]:\\i8XK]Kn!*T+", "ScMrXi",
  "ST-#bhS3B]hE9jjVpN", "S.6lY", "SgCteIF:]2-bHmEL@YK", "Sm*$c`Y^jWi", "SgAlsI0b.EQTX102YV",
  "S*<M]38<P", "Sr?$;&Y)an", "SX2'WH.J\"kZ/sEX3", "S$jk@M?$", "SPgb58ObSG", "SK1`rmo\\An+S@O3&",
  "S:N0F[TeK:[FN^\\mSj", "SToPOn@[e@*pM*#t3Uo", "Sr?'l3@K8df7&D7/b3i", "S8RIf7AKi3s=;'Mb",
  "Sgk\"<@^ft", "SnO.F84#e45o7]sOf7[*7u@T:@BmU9kun", "Sd\"Skl4uA^D", "SbKXtqr:b%9L)Pc\"G4Vc*oF",
  "SG-m%h3C68ZPc/", "Sr!hYk3U&d5>Q0'i", "S2PNo>0`78.JC^", "Sl,I", "SBX7N+", "S`/D:eVu:.B",
  "S3K>-hE91[WYh6aQ71;", "S&!QV1PkunX@C/A^/q#I%", "SI*$)&S)$PI*269*]r", "Se8-q@0n", "S>U?Qa",
  "SX]p1iiU", "SP9d$<R!6_0MAn^+\"\\fQ=a6%M", "SYUchD3Ka\\.rqkX,8qfDa", "S0m?8!E=ClM;U5;E9(",
  "S]p&F]LXOWP", "So#,lEE@rUigpQ\"rb.u", "SqPZS*_lZ)07bD*N8U", "SpJmoHF'sF'pW`2I3E",
  "S+O,OaeGRG'", "S@;5<J", "SQLDFWcA", "S*[GH>", "Sks[-7", "S]7>7EaJT", "SqQ?V5", "SZfAb",
  "S7[nKP", "S>?FR1Tr$1", "Str;:12'i", "SLNQ`?N-", "S:6UTcp#^\"K$VsCG7Vna",
  "Sr>:G>Ku-uIKP7\\&\\I", "S\\-=,#7L`%_FDnX6b5I", "Si)Gqsgq-CI43$EOTC)m+f&W6\"@A",
  "S8IA!hq$Q0L", "S@_[<Ce1", "S^Td7'b7X", "S;rY-j", "SpVL-gG2k1", "S.DbCD*5#'-GU4J;ag#]r",
  "Scqad2", "ST<1>h\\sG^T", "Sh;h:3@(KI)'\"d;-c_^q", "S]RXiq]IoYb3)i0-", "SY+\\4H$km",
  "S8I?2/TOmA\\oM,0]sl;0cdfJ]9", "STBE^ct8%l3kI$`8;Wlq%[0a", "S4lEgl8#:", "S9^krS",
  "S`>b\"3hts3C2j", "SSp'&", "S\\na/>0j4k^0j&&YYK+T?0hC(2", "SpPU_l>KH9_K^O-=I0\\s;",
  "S<#<Lpl:", "SKmib<7(", "SLfUu6YMsZ", "S:#Jm!3>V8Q0\\", "SbF*bFKB`FrFWf_Z]r",
  "S=)f+3+ne(r)\";Z6QM`C", "Su_1F\\:g&jA", "S)JMnQ_l<nr*%`", "Sr%qNb", "S&fbpKbmJ5<nL1",
  "S4a,W4HLm6$FLc/S<6U#G", "S$RH3R^0^8XiIb)", "SnVAt_", "S,Xu6[)qc-9W,_D`?/gu&$9^Q",
  "SH^/dGqKg\\#", "SToCl[S3YrZT<Oe$3;+", "S:=J#NEu'<'", "S4oI:sHE", "STXJQ?>B",
  "SocIGUY)(X,E-oleY=@", "SBbgNEu_W*\\igKZpkV*A:", "Sr=;%aV<n^-:`k2e", "SMS&+iA$0!>g]",
  "SHo@,S\\IU", "SXkGpV\\I", "S@>01qbg#", "SkM#M0H9TVDen6E", "SInCh1>R:0",
  "STr\"!9gTh/I@Jt)(gB!", "S6%Gcc$`^)=9\\", "StOC_o*CF;Lj(YCW", "SUR+$3:2/@=@Rp[M*gHX",
  "SNqH'$B\"2N*", "SEauUfbGe;@p,>,k", "SgqCS1IVb1#orh3J\\:M", "SgVaE-Y)J", "Sgq7s@rR#g2o$GC0@V",
  "S\\p(W", "S5`X5g", "SY]MmlNB?##cfE", "S`*UUht2G1KZL", "SY=NL6\\n^:^o%Ue",
  "S*Rt94\\DZ9_rf\"(n7CO", "SGC5ueTO0\"2+t]\"iP4^b\",uTe7hp0HKH2GK]", "Sbi(R<U'g\\\"",
  "Sf2edZ/NI", "SrjZ#*K\",3dE'2'h", "S>>gk:I*o+_>JFKi", "SA>&H!",
  "SXul[pO7Fqe\\f_'k\"04N,gE1)$+q0P0i[", "S@WKB'IN\"hMq,.p%", "SA2A0C", "SEk7pUBX", "S?A`YED2,",
  "S0_XorZ2", "S\\nGbIE-8]60+;\"H", "S/^iAJ", "Sq]<8)A.e^%h%?ss", "Sb34Z_$Cu5D3:\"mjYA",
  "S\"DiZ0", "S#`2a1+*(R?cpTYZ6HMEX6j'QM`J", "SWs]u,t8;<UAG)F", "S<<k", "S81LG", "St,Y-&=dq\\,",
  "So\\iJco%[*V>ZNu[0\\", "SY.!>^rJ+-?YsV!]gci", "SF(bW<gb,", "SocIG7E8k>q", "S+F2S",
  "S=;>bSWJ", "S$4?;!,&,oG", "SJJ)?", "S@2O9n'-", "SS8o!gagcU3", "SjNaE:I?]uPK.P",
  "So;,c'.VJ\\bDe+M3", "SeBuf8S$d\"'mgV", "S?J!XS", "S>T<4hr1b", "S@uTX7LM#aQ<'", "SAO]i",
  "SeiF", "S_iG&$]dAg0TT#e", "SfC`7`hA", "SW6UV8P8p]ILTI", "SM;L-a\"]q", "SA,Cji2f:", "Spg.#d",
  "SAoqiu0R-L4PAsDr", "S4%9b$g(7", "S@BS8V>n%i<I@", "Sb[BK->;J;2]Zgeg3E", "S'NWm<'cFX'#_0om",
  "S]IGh?g\"$8(gXf_U", "S7BK0I", "S^.c`DLrGKdbIQSj\\Q-NGnPm7Rl8&", "SQbUgVLQK", "SQGN#4?a[O",
  "S_@e+m$`=", "STNCo#", "S#kA*V't_7@", "S*q=4=UI", "SN_9h6$j#!o", "StN%hk!f?J!*\"^S",
  "So4ls:o4l8s0V%.#`ne%]>jAO=Tc^Kn$-", "S\\I",
  "SN*E?mAhI@d@>EbJ:D/N@Z.k@E#Va3?IiLGd?eibe[Goarm\\tROdi9PK?\"Iihp@hU8RXY`^>TlSAeoO`b?n6'd_'fD/[@?-DqFLT.ArU4rj,WF5Yb2G^jX2u]'lfL&Shq7P+V\"I[#qq",
  "SD+X0rK31*L", "SH)j=;8?C=/X=(d!ccj2I", "S-gNEhiU", "S2JL6SI:", "S>X", "S*i:Gbs(",
  "ST]S5anOf6grr9r6[4,2E.Ul6nIhZs3`fBlG`Q+\".6ep8--f`Z^E4J:esp#iKSB&])P`npng*Ve?:;-BQt)]d-O\\2^2nT!$@TUi5AIktL'mQTZ\\t\\+0q*MgOI;?$eRTZl",
  "SB6Q'jLi4jHl@", "SUq4AgQMA,c'^tkCDL`KQ*-", "Si2OV?en(!3^=(++T8<<", "S&ul\"OY!q#hSBC>o",
  "S=`", "S(Mm%HHeV(llh;s_", "S9Dni5f@c#(", "S\\a[V,[&J", "S6)X:cBp", "Sq5lXZ3UebAT$Yf#pN",
  "S0jq-u0b.F?YW7]@>B", "SQq:90", "S^[kl-c:L0&o?&?1XX", "SZ5Fcb\"S,]Aemm", "S2!aW64qC",
  "SjI?W9reUs`ARoG>",
  "SRWB2g&+\"B?.]rr#<fZeQ<mGSPnM]@-qWqi(-Fb^Inr!dY4$LrombD[osb5Ku[:#;`Qcji>_)aO_j%ehJ/bH*0H%5.YOs>#rl[%Vk]@!sE.>IMj<'G!=o5T5+=(hOmYsKG)2D/$l_kl",
  "Sm[eQ#@tQGBb?@dA_EdQ", "SocIG,0>Y'pTB;GZ>X", "S>6u1G\\W'FpIiEL", "S*2r@d@.0Okop+t$",
  "SNa7(/", "Si\"q", "S3]+i#ID9:ZJ>@", "SOX2\"p!jApj", "S$]5=", "ScVeWK2q@o^", "S]=!h3MD",
  "SOi$5ikI^;<UI", "SpjR]U3,!%V7Y3U1", "S_Y;<A", "S`LP(HK/@aSlcT", "SnN<bV#VA)",
  "SM`gF<Z!]89n(cNd5]tPH*0U69+QasNqR'*5MgH*", "Sj\"_*4", "SDp$J", "SqI_U+rhJ@'K2,65rX",
  "Sp0!F63fIN\"3D*gOgD", "S.Ga*ckhS\\m", "Sp[?c1T(Ag]TO_mm", "STRDntM:BB.h._<S4VlOj",
  "SBK=&ZV&t-<ht`i#(S!\"];gL2Q", "SsftVF", "S'#4iN<.7[dTAZ", "S`$iRsb@1q0@HUhJ", "SgTWC@",
  "SG_U^?t_0AblXFm)N-ot:L^c.M&+\\MG71BHB5IS", "SY$a]O^J0@hZA%u98U%QBEjfJ", "S:t=mWLY", "S*g",
  "SLNb*>BF:@;t,%jJ+*OercA", "SR<Paeq*K-40\\", "STHP<KR`^`#", "SIe2Q)A`]<;", "Sl_.7J\\J",
  "Sf3f?u", "SBE[Z[$Qc\\dq3YL_o%dX", "SF'cm80D!C", "SGNd(f", "S4jZGF_2/", "S^V+.2]+fTbsn;+",
  "S69,KB59It,ba::", "S0<dc&M!o", "SL2p.'N)@bPDLQ';@1", "Sb-?#p?(#0B",
  "St*e_s^kCs^t649l@nMcM&DRo", "SkaLR4`/R3[m^4h_9hDY", "ST)>)b", "S\\@rc`b,B\\T\\(f3qS>",
  "S3.b&*K2g^aY,lbH\\I", "Sg#0\\", "S>lY>9B!>L[VTk`^,5338V#7+_41XfF[Q(BuV[KBShV", "SBbRXG)j",
  "S]fgRre\\(r@\"L\\@:MbVk", "SV5PQInfMF7>B",
  "SN@[;lhRg/K?A\"C5lR\"BA\\p5KM-[s:jLi4p?#hZ#'SWYsf>#Z#iRtNsH,aD(R8@u,P,B=p>Fun*<lu\\.s]#q0adDI>.3>38j_l9:SRW>3bS]QP)d\\uOp=Lbp(omV/=:ufPk?XuPf0`D",
  "S?4n", "S$S4W6", "S`t;MtS-0l:bDL", "S4-!NY0;^s:", "SDM'rg", "Si)4,_LCt4!a?V]li[",
  "SY0R,(7h>3rKVRn(>r",
  "Sh%B-tO;5Q<L'XWJ8dc!X0^T^A#l5[?)@emd:[\"-htQ[Pi.g+uk?0K5lr6Fu`4)QTYh7ps`(3CX')RBYQtS&!?T'Nf9^rg$p$,$Ns>;N^Mj<#8nZ0.aH&_rfFWr\";c:!HUgkrI3.u1V",
  "S-@.8", "S@VJ(GWUcr7SKh=,,ZWu+", "SH1Wq[AY4!5aU", "S5'TkY)1%JQ<'", "S5n;T?ZP.t=G@53$#J",
  "SQ%tTo8De", "S\"MZh%Vo>e", "SHSTtW#'F", "Sa%p_KW$nU#NDqaUf`<:RoF", "SoL(ANMCI1P", "SEli?A",
  "Sf+%F`ulYm<I2I?", "S\"On1nr`VO;X4", "S0j[c=mXO\\D", "SOF\\2q", "S>)`E>c@>gZ2\"XM",
  "SKT>3$iW^@8", "Sck@h+c.TiOI.5@<_H`2", "S6TmYm#J", "S@?8ZMq;q=\"Tn-EKr`5",
  "S'@dun4J=I5ch!h4sPBh", "S6a6Y0mS>3G('gp", "Sp:#2", "SgO?L4F9i5)be,l4rX", "S*PF(WRlCnN]B",
  "Sbe]", "SZZ*\"7^Ju4;)1[RDo_be<", "Sr)KO\\,>[L6", "SJb;-", "S/EXo5<lm", "S_:8!IYTjX+Tf+J_jB",
  "S9['7*j[3", "S\\;", "S<.dX^@SAYL0\\", "S_\"dt/PA-",
  "ST'<BeaKp\\qi37/'[hn58dhh2T/Se]E!E&9&Y+$rG\"PcFKQe;h1iATR,u\"f70$$_q3a2HdOqK7\\eIs4X6`dDL$<Wgt+QEDucWT.H9KH:9SH)s[U[&-ET:P#i3dD$.[g%$HeuSbnr0=e",
  "SeG-", "Sk/J:'igU[,", "S4QeMIE9%^_*e<qY>hI:l", "S4M`]", "S6@3=+o&&+5", "SgAg5i`a))",
  "SUN\"R%mA", "SJZn;Qf#E+E'J^", "S!.r;NE\"?Qh+QAB7&/0ZB;]fV^H'$", "S=L", "S+^=p\"/<`",
  "S(u:eLQu&^@h`1QQ",
  "SA\\\\_&]s.L1DBW<OcL0b=FXBM;03<17g-(*UH13najaf=WeVb'2s.2\"F3eEnLcPRSU&&`fgL`r%J7Us!@eb+r%DnhS9IYo^qEcTasZBa>Q]F>3)ANF\"6-@*9LKLsI;Fa]<YDhjV\"-]a",
  "SB/gHZ-K>", "SE^O7X48()/Jg", "SM6qY+@V", "S.WY?l", "SK;`RH", "S]sjM", "S`RYT5US`/0^j`!c(bB",
  "SlC6p<<X\\h", "So4ls:o4l8s0TF&/bmM/^E<Z=W0\"n", "S.+[V2_S?UA", "SR76+1",
  "Sg[#gNV0h0ht&S6N08[", "SE)WPC3flH^F[!\"/", "Sf=,5<g-Rja$%64uQY7r", "SZ?N#&kF3Na;@",
  "ShoDY/g1NbHB1Z", "Sb@a;;@,(S(psBl^p1", "S*RRK=W=O", "SY[2Js7i*jN]JpemoBW", "S]AI4O/R",
  "Spt8!#QM/d[tCOd?MM%&@WLu[p#$Ot75m+@&DIjV-=6E:--@iQj2lJ&GI?p9LT]_m;q:_i-ktaS]02a?er!fZMX`4*jH1_n\\chRUXU.L6V.ZTYCB:Y'O(gGiZ_<03MM(!OuZ\\6f3R1'",
  "SM[/hScOJ", "SHPt<%", "Sh7?[\\*Z\"", "S+FE,`asmPP,)", "S4-Ck'", "S2S0Y[]V'cU_(I^<f/>",
  "SEmr$IS]$\\70Ah:Go$C", "SR\"[m+",
  "S*Wq[)tSYQB.,#:o?dBS<7&%*loW+Mf<>6Kr7+DV&40<95o!?!pn]#Do8En@\"HiNjS_IX@'t\\Z);HDlg8&B(4:TSUC/[-nFqMfffurK*!Q>[LqgSGM`t[YtsY!Da4)R]&3kbeQl*3*j",
  "S2%7)d", "Sj5bQ", "S:_tO^Q-EL7", "SgAVOj0TO,n\\#Xj=ps/", "S_=eL<\\Tu,*5Kb:H&A",
  "S>;C*/YFqJIqF@>cgD",
  "SoXhA$r\"K&Sd2&'&VAG`T(E+D].hKR(U&E3rFGh,p!je`Rhou(\\=$'maUnt/`5u4Le#R>c7@Ct6\"7XK\"udh^jm^bm[\\GcjQfrCNKNZ#U]mKlDPY.fFVPr+LK9qbADaP7Mb=E@=:W9/Z",
  "Se<Lkh<3)BrrF902", "SiLhgkro8'^0k0", "S:PtPh", "S=hs<m.U-61ma50",
  "S7hBkc`$8WWE<pHMY)ncXY.P!@", "S(U):Ek;D$=7.?", "SjLq-)m*SnaZkc[</7GD", "Sa(F)fk5C?O",
  "SGL!F/,SDPB[J0", "S'Z#p_;AT3O", "ST*@&U;+%V", "S*C:]mZY3EW", "SfkZ9s", "SJ&`]K;Cc!Tlp4A",
  "SS2SCqs=3", "SE-WUmK+43MoS6#o3)k", "SI_6PuqmYP/F8opNT[", "SAUVLVJe\\UltK",
  "S`a#?&0NirY]Y@+@", "S^@bPJN>2A:Jg", "SmXm8cd)*oi", "SDp", "S)`_;S[etj'Sd_", "S]CYD=euLn/",
  "SsV7m", "Spk_gFb)_h<Y.D2;oF", "S-&MF\\\\,kp", "S<-", "SJOme.\"C)T,5%L(Zt\\hg2i2M`",
  "S3VH$UKdp!MiB@ULtN7<", "S^O<4).m!$B", "SH0Q_N6(", "STRqln", "SFeA\\R`njU/qmB/N",
  "S&_=17(%?Qp,Ci", "S/TIdD", "S'IJ'2", "SbJUZWpfj]cgp/lC", "Sg\"GF]Ta?nGTSMFY\\I",
  "SEDLo]>jIi(K\"UO,rB", "SoDa2Oh&TK2F/L;", "S/tbe[\"2)o-J_\"*", "SE<3G80Y$V6`/d;X0j&'E",
  "Sq)&0hrIp'Q>II*>7AV", "S`6q!M7Tg?d]Y:7Z@Y'", "S5p^N,?$", "SPOhjZ3X+Xh:b%)I*'q&a",
  "SOBFf<]]T\"\"XF-eD>(EJ9hgr", "SYe[kk[K)p>4Dh[Hl56n3",
  "Ss2L]$4mI4nOu<W`2rIof#@VKX_O&r0;r/dq;l1/$8HV%iH26F*])gN)ePs1DrM7VVX<>m)DLMG-]W5c\"S-$OQYpX'!eaj9N9,K7TEHc&\\4>AmASSJ;#R)lq.8nN&<Krl\"pJu=-j?74",
  "S7d-3E3@H[YTa7_8@0f", "ST\\)a]*\"6[5EDRK,", "SoJ:$e6S", "SM<lW,GG'g", "S`a>?K", "SJ0'q0$-",
  "S:(sA(b_CT?(_V\\iENlK&`pt!I]ui?l5UYBR=]^nS<j8cA@gaJJ3?>8;^sL(WlLj=4-E`U8%2j+5POqU!?jNVlLl2)E=>^i@VoaQZNnl[@A)9!Uq(4B,MBai9`8\\ku3V8H-;-VAd@Ar",
  "S,_i*)6(*", "S`Ol=.$X4h*Y)t[s012", "StSmPan>", "S^7rKN^_T", "SlY8X%s?Uao\\J", "S0L3Xd)>Y",
  "SJJ5ERT[", "S>?U52`nee", "SoE;", "SFAP(V#EKPN9(Vc*", "SE:Ed-YU%AMoB3?V", "S2rP44!JUnt0n",
  "SV<2Pu/'\\", "Sg[<llm1", "SBb[k%muN1b", "S7ZJ)?oB]roE'YSt", "SBtMpln;VhLQR", "SnQqG*k`ef_",
  "S4Nb8rFiT^(R27", "SM;*XrJ:LPl<$", "SV3'7_)DiuhigJ:aGAKH", "S#J", "S'<P'=ErDdc5(",
  "S9g,ki`*[", "SocIGFE'YSt>?Fk", "SSm^*[Sm\\&:El8SG", "S/(=J>UI", "Sae/0KHZ%", "S:.p;$:$C",
  "S6ANK", "S]kp", "Su9\"4*NMs)=", "Sdc:)9I6O", "S7uWbe&d'0mg94I",
  "S4t8W;T]H`\"\"E;lI\"$kPH`j`Ug)1K\\CP\\", "SAeg^tgq:k:", "SgcmlFTlU\"4EgoBQ7(",
  "S/q0\"&01A41!X", "S3f<#,E$/u20^MiP`J", "S.tgP^+b\"", "S?f6X5", "SKk/I@",
  "SY=uD@bU\\p\\*RRub3E", "S)UhD;41^&T", "Sg1-kk]JDN`r`^KH7E$", "SU\\qcFIT@9",
  "StAt'J[J5rq2?I'\"@V", "S9V#aAqD4ngZ2", "S:%f:o^IuP#;.>r%&)(#", "S*Q,<1.kB", "SiWSQ+*l",
  "S=!kt-X2SRj;pkB", "S.+'r!", "S`-h!o7!Wb#I7EB:", "SF\\PI&", "SBLH?@MfA>?=/X^)o)", "SBt)?_l/b",
  "SE295#?H[loAH)#9d\"oWl-%`;/6n<", "SEaun`T%hQ3FH\\-uY&&", "SLFk%no)", "SM/PSZ<)*YE",
  "SqMGicXrB", "S\"OkVBp$aT", "STAf((@NFa&>t'7N$$l7qSHTk#M25-[`N!XA&$Y^:l#:FT.PU!!^C0@_S>",
  "S#O#i?h^nf$PW*Gi8C[_", "SQ>c1;9Mr+(ikjMC.;'1LbFOD'\\^=\"=8j*iT6F`", "S`JKtgi4DdT)Y", "Si>`",
  "SlFU9JBr*7jA7+D", "Sjo+:W'q9'qhV", "SL7j88RUVM7&)/\\", "SNB[?\\^Z=", "Sb)7q5E],LWYGGaF",
  "S3ZK&VaU", "S\\F1mK%2js3EXo?[", "Sg7sto@Y.N8SaZ'-@GM", "SrF!caZ>^+",
  "SGt^XVM%1S0Q*ebcQD.A]Pq<;Y`\"A", "S,DQ>('&^j]", "SW0rt>$]GIZ?b+eukmO(B:)RFf",
  "S`euNUIWJ%ZO=V-U[5\\ktoDIgP861%\"GT$a)e@3':E/SC9HtB'rcX=rFR.jARW\\+$klFYT))i^%CS8_!!eJ;Fp8q4t2@'`.jIXpe5X2&mI5;`g?cLu\\4qYQ/rt=@(*aS7U+@O\\]%L<i",
  "S!Q5>q", "SGgTgf:\\t<8N,A%qi(Pe<cnj'cbA'", "S#MeV`", "SOY(C@FPVHq", "Ss#-ehW1\\",
  "SgtZ5VG:trb_KT$FYSD", "SA7o\\BYVE", "SE'@02\\nTbNgchRtbe_", "SgX^a>3(*3PM]",
  "SYp6@p:j;F6.eG*ogD", "S0jZARYf;dHbL", "S6?fC6b9e9c@P:-2nj", "SbCO!`s)lVZAg9HEYV", "S^G5t@",
  "S)'UK", "SF'0B^qK<kE\\9;gb", "SY(sc1r)+)`Eh", "SJeEUjMD", "S>WRL2t%K%", "S8;JM9r447", "Ss:s",
  "SA\"qX[pFB", "SZBX'bf=YB%qfYWP$l", "S\\na9SK%-aOYV", "SH\"aU_VS.o1T3e>", "SXH22%mtFj6,AkA?",
  "S\\%WdQ", "S3=C]$KQk,\\YMStU", "Sb:s&%pJ)[u>`Y!_", "S52Ut?u5/<*", "SbfOpZLY", "S/f!20Q/0",
  "SdeXFGDTVI!)h",
  "S(lV>9<,dHM`>lSWG@-CP\"#UE1G\\K_)@:fRssf\\Dk2V>Q5Ol,,.5:DhleF1\"ebd:ASU!8Q6^X[LYD#b$HZ^TAR(8&m6)ln*\\HqcccWH,8pd?fgQ=E+16OrN=F[qc`6Jb=@/W]5fqU]%",
  "S`t;[;T4'", "SKqF<i8W", "S\\)ppJ4..M", "S=NFLhbL", "SV;QJut<[", "S38jh+_\"4Vam1",
  "S5kO%2<T\"a", "S?BaD-[KdA>", "SnCd.D*-", "SrsKdPA4&5>sb*", "Sl9jk^d\\=`/g]",
  "SYK<7r>M?'%T%Y>+`aC", "Srr,D?'>Ni9\\\"!2oY8h*", "SaLTr8\"[ZLlV:", "S.mTI?0=@SdDd7AdnP>W",
  "S:r.RI6:'-gVE#CS", "S`#pVTG)", "SfWfqsZ]rjUt4TS*ZL",
  "S-<36js\"+g(FlY?^4\"]W#j`^s-0fNGE(7oF.,!Vn7#Ksi2(ieFFOHTfM!Memj&<oC>cqplQ=GC\"RHs9qtF':BsqK'oP9^'Hn#G0@d\\s9CA!7/8M''!hS&[+?);UH<*Zo8gOlj3l?Pd!",
  "S$!bEN=(j5&", "S3r[", "SJKPtZk(",
  "SDc$R$niEKHF`g2QEjR(pIgEMRe=DbnI,o+rpD&/_&QB,^_<1ZM:\"/A[6NPQn^J\\1%qEg;]o?+TieFmcTJN0`j@Db:[l=<bqe5q8rIERsIQF[OVe:hIJuVfY3iq[TXrYKMbqQC*IT*+",
  "SgNOI<p,PAbKEC1\"INB", "S2KKGmtPWMrD72cbsD?^Bci8IXjQYYPc=XIC&4%c+O8?O38Gi#.7#)X1UI8%",
  "SqU5.'@,E6u]Mac<T)", "SOZK-Bi455kp4'H", "S5'Hr//rdm(0\\", "S4,J%jc)54#cMm7S)t_cE",
  "SfspL]+\\>S.iPW", "SOl/Z/", "SD41>sr,.g%`Z\\,1hBLC!<*-Ddjr8tFAK%N\"aB'(a8LC8i/$(",
  "SY?03.b:p=$p[$V*S@<", "SL\\\"_&$D&", "So!1)>", "S3AG[6/L", "S9:et0l)3pmnq.8BH==",
  "S!\\.:=2+l(<@!.ALN;>Q][o2eEb]Hr$dX@", "S>!*cFphZfaK`QR6Iu8", "ShL?LQ2AF",
  "SHRAi^)QbahKc6&JV&))Ml&;rH\\_RcRaK9geO?ks+hp62AEP(FfY(7PPMnl%[$.0Ya+C*hC\\ldc(+H$eV`.:.U^p(A^2MtSG3*fIj0#tGA6hM+3t3LsSfg*e_Zk2opu`]dP`B:Ih,>&",
  "S>Q0tq\\6TD,@0&eu0n", "SS-XZh`6H>qK%'f%I@", "Shu\\O", "Sa7Y+tbE", "S*C]0UaMH5)H?rl",
  "SLfRI)tN\\kQm(*", "S5_>gjf[", "S(IP=m$lS8@:p", "S3e[X^7iAK*T4Rb(", "S>I'1p]R6R%o\\gB^",
  "S@SfMh", "S*$l]!KIRMo[IPb\"B(%", "SHNpUu", "SZf#?m9=<nc$l", "Sop!-T(=>\\Z>LuO8UFj@s",
  "S`Sh1XKQ7_XE.c?[o'?", "S9tH;qAg2", "S3\".", "S)Q#F+/pZZl", "Sg+OiQ`I", "SrMQFqE38Wb]>qhD",
  "S49m0PoXLKO9WL*", "SrGd#AKNp0L]IfU*\\g*", "S\\kH8Ko!<&dnb5GdXhI8QseK6a,5bq%RFd?;",
  "S^dATo6?)Q1", "Sjp", "SecA$,;D", "SSWbs\"K1-?IgX8R*", "SuHcDSBr^IG", "SoBD(<o-98c`nb=%",
  "S57Y.?#.p", "S*];69V21s2", "SZ*b!T", "SO[rZ'mptOP", "S]2T",
  "SQNr4_FS3n,YR/Wd)k\\AMeZ9=n7LMK)4?V0>t<Le:(r3'rMO;5>[a?JLF/jG\"8@bn=m?7s",
  "S:s]>tQHu=D(X;/f4N", "S4Ij#IF?2PJsEZk1ZE", "Sc*2FIg^GB", "Skcn,Z@nBl", "S0Z[I2bmiDCYGGA%",
  "SUHJiW", "S*l", "ST]ImUipWd-I@", "S56XV2>ffX", "S7L.amAfpBahuRq", "S6`&b", "SMHG9b\"N./:s_=",
  "SmJNHej^/Eg", "S(3aG\"\\I", "SeZWdrVug[#\"=lO", "SmQ;dE9)W",
  "S`PNa,R>)hG?&MeYGI1X?'CKCA:I%b16TMtD:gtQnVYEuT^Dn]b.WP.dQ&:'cDm-^DtV,O,_GH7\"Ulg$V6J:et)B%$cj<KSCP\"9]$,XN",
  "S06-6+scStS[mm", "SElul3_EEf\\kBQ", "SMqE;j#5N3", "So4ls:o4l8s0TF&/bm!", "SiZC;M!ar\\h$l",
  "SE:I-LEeD\\]\\S`($", "S5`tm0]-3", "SAXY3m,F", "S4_d/[q(*1KG@ulUUk!", "SPb:i&63+",
  "SqJ1_p7Y)OVgrWRrrr", "S)J(a.F8X8P;$:nG", "S`ONFf", "SZ_g",
  "Sfj9<3s$a0(60dk.2>2:ZK!jZu4r<Nj(b\"I_O.Vp7t$:g33\"bcV&]N!tWXN\"i\"QduYEq'@J&\\eP!M#CPQ_Ych)_\"]E\\S_Om7<L=ARXtS\\1OMN5WUeD1LIL%h#E6@fJGt:\"'SR=@`5mZ",
  "S*$`N-", "SS9WOX,rFoQ\"*J?=.H,Ja\\s0R/,,3kbb>tVbc8&(O=f./b&nCr::*/ZrrGU40,[", "SK9$2RcG2",
  "S).3oLuNGf", "SIrNF]o_hr(>hRX2", "SYft\"dTXMZh0je\"", "S?i.#5", "S7Y[sJK2dp3q?C/#K$",
  "S7\")?lTc[aK`\\1!<rb\"", "SpXQol8W", "S85/I931N#j^cDH']i#%I",
  "SFlog\"FA,$4)I1H#36B8&Oi</r!Ojp,S]?'^", "S<$M$YS&t", "SntZnH(!a;r8:<3<?=Td,/K39",
  "Sti5`0aq\"", "SV0?@N&llHO", "S.UN\"BJpWo9W<V", "S\"q8=b'pbm*", "SKW.M(7n,_c3S8.^92u5U",
  "S0!h**gNqV", "SItN", "S6on)K-r4S1`I2O", "SGNaC7WTi.q.J",
  "S!W':q-Ql#QKX,qOKLaZ?to3+#&1`s;;b=2\\VI;Urp:d3.F#bH&ZW5C$OI4H\"Hq[%#ZuA4H&mIUQ:bDd-W^A/qqrGT=G9!tMQrj/*$,')C><B\"#7RMhq!-9n'SOK)+Ufqm2(9DpgJ?K",
  "Sn#]gl", "SKpm]c>?n;q`DrQL", "SqW-Tnb3=/I0bG,F", "S]*&U>,A^M", "SY)U!i`o+", "SeFn", "SWmG)",
  "SH>IKUh8N`", "SRG\\::5(", "S>Ji[C0&6\"GF5\\ZkYW[", "Su*d6?&$8", "StOin0OEZ", "SjcOs\"rr",
  "SS<Ib)rM3Nl@.9=I\\I", "SgEXO,*p:8E", "SpNH", "S/+N]m.KmmZp(lDDrkOfhT_m",
  "S5Sgm+#2GL,hHo=VR@Ck", "SaX18-", "SXPk@IqL", "Sd7ENEPuHpQ", "S7]&TP#I", "Sc=W",
  "S7%fRWe.J].", "S?Bup2et:uEJ#i;BdcfC0", "SZ:laHW8<fRI#W3", "SUVT9gN@YD@7.M\"uD!*#g?rck'W;",
  "Sg0FZ7q_j", "SK*@o7`tC0s>Qrh.", "S7Q5(tbfX^Ag/>'a", "Sg[mX9!,EC_G&?9JM]", "S&45J!>io0Fa[",
  "S[)_L@X]VG<8t9',", "SgHWHU[J$7nA_Fh[", "SN`g7@'-", "SWd5d;", "S!7YIWJ-", "S>,(%&j;T*G",
  "S`['Xg\\I", "S`-#Df$)eO.", "S\\3!mnmS)u5h1", "S-Drc+", "S7U*",
  "SI,r0a#d/^[k'P'8b>K*qIUp*W<beF?8(/YTI1aE.,tF", "S%26K]/@?W/Zp'Y", "SY,,9u",
  "Sgu?r%bD:I30h5!3", "Sea*MG=8`", "Si)", "S2#e4u", "SS$T[(33%qN7*jA*T\\8",
  "Sp;1#]Iu[[VKd;ZaqR", "Sd9$mJYV", "S\\t=o/S]0]uK*p]co#r", "Siaupp", "S5ZG5XH&t1k", "SbR",
  "SE3kIGGSM-!jX", "SB2#D\"", "Sjko2FaP6/`t_*\\C,3tg", "SE]d_,0E_2B@hLhmr>F",
  "S#aPn<]ctrNq&cTD_X", "Smm<K9]B", "SJLX,#5VE)\"", "SYKeki", "S3EGlTmN\"$fu\\m)",
  "S9>UH<Sd#rZgSsc?5\\GU-)$]-K$R])PQG5<Yom;->YnRO!?d<>5F+dL5/X#6^q\"`&2R/PIc/6]pk;&m(49H@[%]f3s.kAe3CbuoX?W<(,\"-Un)'\"\"nG!H)EAHK\"HE$#6H7,:r9iaWPA",
  "Stt%t*]r", "Sg[9-ZHR", "Sr^^[\\qW?hNF<Bb.E>", "SGYYE4", "SLe-D", "S;PS:,",
  "Suoaf,\"BgJ,&6`cr3E", "S'dk?ZD\"')Y]b>]", "S:MaeDt--", "S#d0p];]R%7", "SZb,_.E#tYjDImo",
  "Sf\\=V#=R", "S&A", "Sar-'_D4]:t", "SE6AF&`#-TM`nf", "S/#ZsbQ(nE", "SE)qg\\Y)(hXIqe94Fj",
  "SIT;", "SN!T)=lD", "S]MLF-g/9/[op$4q", "SD;%jug]",
  "SL\\TnN:PSG[<Sc?_@'OpP8[5](.HrY4!\\^\"C:IJ+gAj^&Id0)4\"-g-W`B7!qR$U<*%H6H5hf@>h6^j20:YEbSc@AeUGO3K5(W'[[+\\V4$Is/j@\\NGE5Uq`3r@\\du%GG>$K\\48\\%,upH",
  "Sg]>4[EK/", "S&o0M5=>^!AeN", "S6\\b)g<nGli>&N!", "S/1FkDbNDu5`Lu_", "Sqg2e", "SRTifb5S$",
  "SF36G&\\CK#sKs_.tjp", "STqgYO7r16^(%8]P", "ST)G\"><mO:=\":",
  "S:\\%AeM*QRrRB)RK<?;gL(6P$$7&$L!V^H-`i<(Nc41J?iBcX^PZ\"91U>2D++0ane+iP,%P)S22e;6cd0M(/8ddK;W*^5:Fq#A*+hsi>1j>RXq#)PCt5up\"VltH%T;5B,!^PX*XDII-",
  "S[[)enI4m`,GU", "S']>RA$-", "Sa(]TBK%3O*", "S(`F", "S6S$Y@P*bVMiU", "SYiLEZ#e!?:", "SugFH",
  "Sr>P]JoPoSm7!#iE", "SlMFAo", "S@=\\C^]hD=Ib5HqCbR", "S$RB1^;i:FM", "SBG5b", "S0bEgk",
  "S7L(I'KXRRXYfAq:Fa_", "SY?ju", "Srfj5nA+s1#u'qga", "S51u::Y;3&@)h/o7&Ta1G=CcU",
  "S$\"=h)P5'0F)4U", "Sja-j6AsZs4dJ\")7tb8", "S<e1", "Sl*<Nld?:R,Gr.O#", "S@bp`oU[7",
  "SK+=^RTt3B\"KE*DA`J", "Sb:CoLc&:f(QJi&$@_t=f!j_s[K+hnNh8S7Y,ik==N9aB.&XOT>@J`h", "SWYE!N",
  "Sc%f_H\\;", "SE.D,Gr&li47T'N[@?0", "S2+dEhK*\"u'Tki7LO)KQ*", "S*d<5`eY?<_LtGHYJ!3l0E>",
  "S$GBD8t1XB<5Sm8fVD", "S'M_M%", "S#'c)+!r", "S*^%", "S>J(A30\\", "S\"c)UOgsg", "S2IJ@d3L",
  "S=g\"Of", "S;EbTR", "S@kLLVSW/>CY?%e27S", "S+%PcT", "S@pT_cdQMTmK;-*", "S0Y$gN",
  "S`2<l+qgSA5IpII?hA", "S)0D\"R/`", "S\\]OGUK1o7PrMjZA3:!", "SqDbR;0E_FiY)nAhp)IUn`I",
  "S&`bXM'NADK,iEL", "Shts9aeC7DErYMS", "S\\Ll#R", "SWmGBujTKP0jp", "S@B\"0rY*7O#]CG+",
  "SQBNF0<-YS2W;", "S&%1%", "SiWI<o", "S4.$l`+%V!B<dH9", "SQu3h2*JQI", "Ss=Z![7@YXZ<(I2*NNNgY",
  "S^Apo8",
  "SOZ]hPeYd\"ct4K`/UKBa$5423t[F);Ae7^%-lOass4TG`@U,LP\\lR(23K>l/Ok)h]16hRkd?2OeqaC?MARH?&6`sk;F?;e_p<RRN^]scE]9?[O(an!I`VS^ApkH??&`7cKLB6m86_0*",
  "Sn(B<<GHI", "Sa9at9/IfNR", "S@kd;W@MGM[F>", "S'hJZV-e", "SuO'[KdTNm1,bL2d",
  "SJ^/(KMInB=Iib8Ft/H:", "S/h4i,.9MFqS>G\\D", "SZ.u", "S0>cmqY.\\", "SZ#WrlST(aqK-",
  "S*cgoL\"O=[", "SD1TlAS?@;^-e", "SE'=aA>?`E*r>jk\\", "S0Y<A!E-f9uTrJ-", "S8#AbF:GW18m1",
  "SM-,/#M(cab,(^abGbe*7", "StY]p'Xj,;G'SF`M", "SFl3t)IpGb\\p)'j'", "SFcI7GDMFH$HR",
  "S0Z[K<TpLQm", "S^enX", "SV:", "S4;^QAH#VA%R#/$", "SK%<$J`@MWV]!HJm", "S?TO0O#I",
  "Suc_PtRtp5*3*P@!OR", "SpG,>Vh\\l", "SPjT]rUMs-'", "S0jhUJTc1", "S+K\\n", "S6g9?D@GLM3;D",
  "ST$m3PTo:qlK^L;<", "SuTA7Q_=dm@4T?D", "SP%_B", "S\\tha+>>d25S3b5k", "SSm[!pI/!SD",
  "SE@pe(T(A1Zg1k4[g]", "SVp%*:GQu<h,*qs4", "S\"e^$bZ[0NP2NBR^", "SAd-*d2>", "S2X4uc", "S(ZjC",
  "S%\\q.+e@:gHPn", "S\\#j[YT#bLG3UQm.r>S", "S35d4-:mb97WI", "S!,!&F8qq=J", "SL+2b", "S3VY/^",
  "S_]N", "S-b1a)T%9[fZYJ<(q\"!hN:MN", "SOe;UJhA", "SF:[W;n`k>bWGZb?_Z:7c`hCg,g09F_8GGF4",
  "SNhI;[t3@%T", "S-%)9..@d", "S^GF3@<__O@I9F", "SYf8g%`nec", "S][u#+g(L=Gsn", "S^_e]lrB",
  "S$iLF*", "S3;^p=F8fTGgq7T=", "S?7Y(lj/9FE'l", "S^AZPT_=5?2=`", "S>dp)>",
  "S]u(B)t3gDcEBA\\0b%s]*5&@$L*\"G6.MXS4h6n7IbBrS\"QS5tT/&9_):\\)b&`N)9]lp-TU2AKJB$(IL'FNp)'TkOq2Flh&&\"$JBBc:#$*Y3Zrn+om)d9Af6<W]%2$\">3bm#7as4S;@o",
  "SNJqd<", "Sph@.p94^]", "S`-pp4Sl]iq@h[J=\\;", "SpHJc!oZUe#", "S@[_\\bo4<CZ>Y.B@rr",
  "SY?%csS6:g\"KXHuB@A", "SmM4mh/R", "SoR40QOm?.0", "S>?Fr20\\", "S^5EYr=ts8Q", "SV90jn[aH=T3L",
  "SNl", "SgrMLm>YO9,FmgWkI@", "S=q?BeGB[B[8U", "SD3<<q4ejZB!U6?\"L455b[:h]<VCVO76p%$]E+`F",
  "S^F@r[Lh", "SY+D]1!mXBcXo`@`$CZ", "ScU17(OVu@GkpXYX0(", "SQJ8`", "SGIiWO<MGi;5=Klr",
  "Sm*Z,hA>a'[XX", "S+>Z2cb*I:", "SU-Q%",
  "SRL<ajoh7K/?3\\W@UM.dILJbDb<Ck]]'QD5[!6DQV*#HH,Qr;S!kbCG^:J1*_uE^u?SJ,oF@lNsoS/I;#):LE4FrHU-'L2/;9+7_UlPB<5j(54L@nbr]mn'[t9uG@IuYNs>e!^Za@8>",
  "SA^q<q", "SQ=%&N!r", "S#PM1mIoT+", "S6StPZ", "SIt+j$o*3", "Ss0[/+\\Qjc", "SMXDqB#j\"G^",
  "S:>c+!G3n*Lf[", "S\\oV/7TaC[S>Y(fC", "Ss\"HM/6Cupj", "SI6W!", "SY'_];4a98ZM=;O.5(", "S0!3O",
  "S&;sH/", "SeV#8Xe\\eGh",
  "S5FApLWj*Y,moQe$nX6Y6O@M5lE.C9/!Vkk5IF80LnPIt@&ue=#6j0b1t.u(tiWE8R+0bQaD.\\lB\"eW4G-Q?&RuDlGt4#rc*Ok[RT:O]+irsZ\"Pa8\"MN0DYOef9>1/77GJA(X%nR!W0",
  "S;tPP70bJ", "SYFbJ>F9i/`KEtk2\\J", "SIbqCdt7p?j?d^nqdqB<K", "SS$G5!0R-McS@f1=Tl7",
  "Sb@1=2K2i%CYkf2S\\J", "S-3RiU", "S,PH?A\\.lj=Ng", "S.f7T_-`!92*$PX?M]",
  "SS$VHB7iPX*\\9T@5Ej", "S=6F", "St8q1ua_P)'", "StmjTd", "S33KrdI7m*ZYU3<R`I", "SY#J$V!r",
  "S0Y<)hbm]", "S3-M3d\"3P#WYV", "Spf9D^Trge", "SDX", "S\\S`X8ocI;", "SQFE9$Rt?8:Mg9U2qf=Vk&A",
  "SidfkU\\l5f", "S>j$`UpFuBCY,;a?", "S\\J4;", "S&$\"?W",
  "ShVN%Qc?$\\e:\\+)W)KgKEh6-5d(+hV@H;*sM0Q18V\"d;?2@9q6s%,U$?dF", "S&)+:an>", "S^+1D`MYf:L",
  "SgIU/3k:k", "SV>TUE:HgBXSeuq", "S/CLU", "STA),7=Kcm1", "ST/m<", "SE@`7",
  "S0s=aC`9i/`SG0/f8;Wr>^M>\"Q^FiV22u^k8pcA<JoEKdMSa^X1T`md.)3slQYRZ(G=\"AKeF`Ng:Qq4Zn4is!i+1t-kgYMC0hm4b>)k(;;r'E6<J)a^7m\"/sn0P2<V/,qJB-\\^Mf)XK",
  "Sgg,-;", "S&%;r%ACT?KYNEt=e*%^jsZD_", "S48HrCU>pma\\l;",
  "Sh3[f^`@G[@!a'E8QV:l=WMn!`'k:la`#Bj?M/t_^#3)VH.Bj:f)<,ralELlik]Ym8]2EYJ40Y#DIAG)[oWBiF)=TOZ,7RcLM%]J0cUQ6m>oZmE(SW(]lU9bc_NZ80JqKW$4#Wf!\"!0",
  "S:((Y\\m80Cc2>", "S(ga74J,XpaqA!*G?K671", "S+7p/6-hs", "S4N", "S_\\R<8rX",
  "STX+98Yjp#=$CJBQ3R", "S)@GC%$5Q=^)J.<^oB,p:m7d$*", "S\\N]*#kJ].,BMI^L3L", "SI3Je",
  "SE6AFC`#1+", "SW7lTlun", "SluM/Ztf'%)2a?l", "Sd=X\\;6Q1ZS&PtRh;sr(%oqf$mrKh",
  "S7AF(\"Y,M9ib3FJ_gD", "Sn`q$]ach@6", "SZF@4`", "S#\"h", "ScpWs0\\`PRq\"6MR/oX_\\6_8h@2/fej",
  "SRkF", "SBqQEm>%+\\nIl]", "S:GIMf6pcV[PR)", "SSqpEs", "S_Jq2U#ZWj1_T0M", "Sft[cq\"l\"0jX4",
  "S&>^CU5@e", "SfERjVorR", "S7`rsNKX^(YS:5@K", "S4)5#q", "S@g5#=",
  "Sjp*P%Z4l[GsBV)%#<)l`!I!8Pa_@qH)K'93V:?1_u6@N7.n>(n\"S3fGEhLrFLD:S?E9bDqu$<N7;Q'NMZX+d$f[Sub5t$_Z7#4,37<Mg5sa[7*ZctFHJ@6+R?PQo&@rZO!YF*JBrn_",
  "SB\\NJ9DB", "Sc^9W\\*B>K1#J", "SSc+r']f3", "S3_H5)6S", "Sfs2B7",
  "SecS\"8dsp,IVahP'3j&=@+pAUjXp", "SS5i", "Ss`^n(NL=qT&%G", "S)3pag", "SWpAU", "SY[(7t[4Yf.G)",
  "SmiY%s.VZS*ME\\(", "S*&%IK", "Stsec", "S,ck.L!-Er;", "SfM\\OA", "SE6AF:0hC(o",
  "S*.C_As<s2Jf5'F", "S+?/_ZlD", "S/ZN7f", "Sl8!0]<jMpjkmJp;$-", "S'Cg:%-b4JamN",
  "SQ<r1[tsNmUPM]GbuS", "SA_pYMB-@Z\\n>", "SFe<Y_>;5r@7Cm5Z", "S3n>=!LJB-&Z2",
  "S5(;RrlZ4I&bYM?u<pXkel)Qt1IR5rr,c8'1uqNi1Z#&?D7r--3&[90Y[h`ab;S7Ed7nYrec4^22*M`7;F5OAAo$mGAJ$X(kG+#^(L]m]H6PR'ce\"W%6:UnQu3++tl>Gb=QUns/N>dq",
  "S*It9rr=Rk4", "SqToHS\\(ulE.n<%", "SN*&'./R", "S7ES[rK`2[)E3;BSKl", "SYaL\\q41", "SljU)4*-",
  "S_]4i", "S`$l2\\pfX,3Y,->%", "SfC6e,8E1Io", "SiL[>Tc^/PD", "S0!hKqYWR",
  "SK^);Rq)n@IoSpDmKu&", "S8kjpRA4uIpoG/O0gY98C", "S>.AMpqk5Tb\\A'(6[>", "S4c&_jd/PnK/#@g",
  "SRi7f,.ACa!3VH$'$:,2a", "SfRLPE#fO*n4tPuAgq\"U", "S/1:eFDR:JBs^H!Q", "SNN]nf",
  "S3f*Rq*\"J;uqU+s%Y&&", "S@f8>%'-", "SJEdX^Q`,", "SD&3gMp56j", "S9tna", "S^A$k]ons5\"J>+<",
  "SGnCPT=o&*q>!X0j.u)>i]]-TflD", "Sq:F-&", "S\\-oIGY=V'KonB's>^8", "SQbQ+", "S(P*mM/OO",
  "ST=AS,p?.X4iU", "S\\#42O*2_4?`'f$&p1", "S<TCd0M:", "SZH*Nb<X.K9", "Sc?*B]KOOA", "S!d^ggLh",
  "S\\:]G>",
  "SSMfNbgech0$HjhP-cJh8[6QoJ6eT2<GF:Z.UYDr/jgYa-\\ckJTX;lR'm^Mn%/tYq^Lo`Sa^Rgq<WI&E;Q\\UlE4]Ju(gePb3<(fuC/>8ml'NiVrT\"+(Os\\TE1NjXX\\iqI>'r<f$+4ce",
  "S>FJ1msqrlJHE", "Sp&&_pINK:[YWmb6Eh",
  "S'VStI!ZG<%#:bF9E,9PY;,:58E+j@s-_Jj`qKQ/k.4P.rmPok.2l_Ckq0R$JOB9MMj1X/#q`Xc9BCp`T.SL+grDO)B/$;\\n=0Rt*:3!ULFW,[%Z8#RBq=/'dK+V2<Q_-j+]<1RUL@,MD^%MkIn/rs5",
  "SFWIA.p,]8:YYPdi0EW", "S`m\\_=Zj,8s'-", "Sm*", "STB+q$I*$MJT#n0,K_;", "SXY*G!", "Sg!Xg",
  "SV>Ws-Hp_0*cW]GA)dQ", "SEgd><E<p3Z>X", "SY<?s6f[",
  "S_i:'T)h4$;b2K\\!G_>G.\\Kgb0VU^s;Sf#('.A.HI_3uA[5jnjYMgUhL\"L2GmW<=C8r4W3uZUU3gI9i-$ita0q!n\\B\"GO!WZKEYg<kEBkJZh?GJFjhcHc@jK.;WegjQ2lO?gV:!>9ZU",
  "SInthbpH*@sG/5DBM()o%E.VD:7<D", "SbQG(b3o^", "S\\\\3+r7&/1f@K8/Y", "SS1gcA[(;", "SW6\"<o",
  "SP6plf&:.)89n", "Sfas3t@+tHu", "SsBd^'$U6]", "S^`%/?", "S53Ya#cO<J!,'fX\\3L",
  "Sh,9jMN\\he,/-VH=jrV+W", "S7Um'6", "SFeI\\NS@W4B>I$#5", "ScZ5JA/L", "S>krr8bL",
  "SE:)33o-_<JF=#@G0\\", "S\\A/@", "SKom(:)5+l", "S!t9Gk,[", "Si-5[", "SK;l99", "SJ\"Qn9",
  "SSYJ5T<&]`FW%k)S&A", "S#Sk", "Sb[sm/@j_OK712R]", "SB#]]38u+9e", "SP=%S&^hd", "SXb[F^:]>",
  "Sq@?RU3J!l7pJmL%Sj", "Sp\"@:m`3&OQb7>", "S35peO\\@0%gT#FI9$-", "SItjc", "SF:>F-o4JkK7dMZYEh",
  "S#V-3'Jmn`HB0Pg*c+#`9", "Ss]6>3T/[", "Sf[,Fr", "S/$i'cq,<", "Sg+)6'3J=t!E=IBl\\:M",
  "S6Xb`IQ_5X?\\Zl3h.r=", "SAHh;u:l@", "SSlkVegNHbaTrV6dYV", "S\\<>Cm]kC\"W@;5(l`;",
  "S8?KLUnBt", "S:K47su]hfDYV", "S0Z[I@Tpna;Tp[s%`n4/Z`J",
  "Sg^i`;)J%rF[h[5gN\"C&43/;&0c#^FCo\"dEEm\\;q=kD&Si*2TVt^Mg$W-DmkK`BD:[iqW,$L4g2O_o1!Xc>buf)G02gZH',\"'\"M$%)dq)*B&<Mu7t;DPu>oGN^`ei'YqUMt>bE_gNda",
  "SLAd'[&R0<,280e^^D`Em4-\"+,h\"DlCDF?4",
  "SKJGs<]]trjTANs^oL_6q\"B!%Bf@q?gA(U`[npL>kpskNoe6(@_N2)h,&b^>LK'XbIF;O", "S-ppP]LY",
  "Sg+Of/TBJic`J", "SJA:KC", "S['[g", "S?'o6!.K", "SO-d,R.aX$@", "SOScD@kS", "S2!$r^",
  "SVtJ#DQ4Y0C_r",
  "SMVi'\"I*2P<3s&FT-=?#'=)ZP$pWT^.$'8_?P:u]5i6,C!tIebL6KG3tfgY$]`;S:r\\Z9f?`Tck<J@_C);[QI,[dC?Gt^S+N5HJFoY5skf^KJC@!l+hB'U]7%B=6;E;==/es'-61H*@",
  "S*J56rYV", "ST)%l&:B", "Sh0TYl", "S01YL`Y&;4cYh-$=", "Sc6oY0*R0", "SFa.4]$R1=<<$tXRJ2X+",
  "STt3]>`tup2>Z0?m\\J", "S;1L\\PIk>", "SuL978M;h:Ia;\\XfH1`PT", "S<jc*H4*", "SJC%2(,`@[t.;",
  "S(**#$", "S8S:$:Kan-Vq\"cB", "S7Z9%RS[Jf#]bWZ2", "SQo`!YJspk@", "STu_,S@\"%",
  "Sm3VIfu<OCSNFg", "S*Bd<d.ShTd", "S[%k50", "ST+9?$>Q[", "SLA8,K", "S0Fg!NYV", "SM2G[`",
  "S_K!K", "Smh0Vj`-_?Hi/)", "So'AjMg1a!drJPBLS]h", "S@>VJHi)", "SuiElmQR", "S,\\SffU;",
  "S2PrKmI@", "Sg7?^ca6/:o0R3Oe", "ST[Uat", "S0_[HXds;6?_Sg7H", "S0>B8kY1", "SocIG7b=m/N>;4",
  "S`6kj2", "S32d;bd*$GQ$1sE", "SMrl^KT!k/oP(", "SKE;'BF<rikpf5@O0dI", "S`'1rpq[nYtorj;m3Wt",
  "S<Q@Es#EsgHe@p", "SMJXD?;p0nldj\\", "SQ$mke", "S5@=$H9\\-k#pV", "Sq54,", "S56[=q@_s[>",
  "S+M5Ef$FG1W!ft", "Sj&Rof4N(\"s@1", "SjrNZ/Y)H]StJ", "SrdX,G?Ri$*.45p@nh", "S\\E=hH6(",
  "Si1GQt8]Ht05g;Xg4V:f];@Emi2-Se-;KVqmJ'5qaa'BnUP<2=rNY&!Y]4JjNoAL''OJmldq\"?H9@UT89V.,>L+7cB],@g8+^-&a4[g[h?g\"K5-m!RYHu#fph4c1RCI;.5JVSq-5;g!",
  "S0RI0I7^b&P>!gOe", "S2U:.U:_AL:Al[", "SV-iJ[uUrh'\\:faf", "S7C5hOS=mEt>;k:*\\9B",
  "S<F6VT\"!N#E", "S;:", "S@UhaC=R", "S>J(:@0ZW<", "S7>(dN0ZRnf@;k2=", "S,Nn,q#12?&,Paj",
  "S`Bg", "S)ei@Eg]", "S?#b9r,cgT:<q^J0;I.4&:S3", "S/o1C/u5JSE&P\"s", "Ss>KsofKWd?", "Sl$[",
  "S$&(X4]X.G<4(4=<", "S_2J,:Bo4", "S7AbpuT-V@GSWL/;rId", "SgAlsI0bG5^Y)Eg!K`i",
  "SQZ\\fo5e*g!\\aV1!*_$VP$g", "SaZ/+7@C\"", "S`l=;>\\tZGi*Rt7^YV", "SuX0VN`b*L+!k2j",
  "S^bJ49WTu5'bo?<f", "SjjP%/Y1", "S`6SMf>;$\"u>RF6>", "SF3]*", "S0p[*ZLh", "SegGHEcWO*so[",
  "S-\\j'us^IXt4imr3\\Pklbi\"<'", "SgAgGA>^G", "ShPG60M!T", "SdrG,pBrc&o,c$*`",
  "S(83br?h>F$i9EFpXfc(", "SL??/Q*i,%)", "SRVS\\#a\"d", "S\\S^FZpMJe@bU`4YK-",
  "S$!T.CX*r;)R*r#", "S]7A4_e6Yba@SH6i^uj", "S-:H/I&P)'", "S9pcXG", "SJ-",
  "S*Te\"_0r/:A$lpl\\'EQ6#2S&D,V8ZMioSC:M8madh'P+\\QoWH<g+BEaf(4t,KHe-iEjTjq@!R&_L9n7Qpj>8!7$8f^hV>RM-hZX#=)mRD6fa+^PDcRBk73BsS>FMb^uD\";JEkK]<($u",
  "S]Y_?kY=K12TqDpd\\;", "S7.X_Ork'u[\"'IW", "SLj`J]779", "Se(FXE!Ph", "SE0cgdOFG", "Sag7.c",
  "S*tKnEi?J=r", "S($!jM*Ws^BE>s$RHE", "S'IPHV=KZc,0Za!1m*", "SD!Vn>8#4I#",
  "SSWHAYKEgX!Sm.L$>?+", "Sc^YAZ]:*.@N2)$",
  "S[.$E?3@[cMg6;E\\Q]-@%l\"_KX;_aeaf\"o)@HmC=i_k'Y\\ftgLTg0db\"H?lWU[q3k=\"0\\GoB`Yh=^]`ZIrhp+<Q;UqffQh\\uIm-ZG$:uYS0=DBdZ.`&\"0.F=+hpaD\"_oZPb)p#Q!;ei",
  "SkQsjh@V", "SE-f[O>;4", "S7h*48I>'%ERM", "Sk^5M&H758%XDok", "Sbf0nf!$c", "SY)Ud$",
  "S7oBes3E", "SAgQSdri\"V):Td\\Z_IV\\h/).B", "Sr0_%7-d`ZH(IjOpW;", "Sl4JRmXqO",
  "S]3hq.3$l;:dA\\Z<Ksor%\"n#", "ScZq=P_B", "Sb.o*=`-!p_0j[;T",
  "SjGU@'*=0q@qD!5McDAY-_(2.IAaT589(rda\\9\"/l$Ybf2Hf@&U", "S`/1<;", "SJLj2:", "SErDQo-tU",
  "S$M&iLFc#F_6n", "S^eb\"aO.`.E6GN", "STB1>jq[YQsb]>n'", "SJBZIm#=KI`>+ek",
  "Ss4\"gS@[f)3<jZhtW4W%4", "S>-R*EU7/R/", "SjM5'HO8fdggf'",
  "S>fIEI=gmVrP($,B8*Jt2?NZ:U<+QVsM41<)(R:6SJSK/8_H[i4e_m0Jc!VSA>R^p\\_LOs)T*,r<-I94_$rj]q?(;[q>-u6b7As=NIgo,st?Od:&7P%$c#n0>adX='#p43#o@bVnHLG",
  "SN4PsNU7D'l", "S2m9[TK-", "SDk^LH", "S*V*a/9Og,Sf4$%VK$", "S.WOouGd,;/a%W`!ann",
  "S<m6;l*i4mR^j*PR2*5", "S@mGrp(%Gj3Lql7XdF\\[%", "SuLKCY9(5NqZ>X&", "SH3()*", "SV&Z#MO9$d",
  "S*OlX", "S#^A5fqh]", "SVPf+L0bESuT4)n", "SMfl[", "S,cl>/VUsf*!B", "SO-MlW:g^=",
  "SoX@7:p?3?b`(Ee'@1", "S_lnBGW6e\"d_dQOn/3l%S", "SINl$c$X_atq;@)jSm<", "SNm_9*N;f",
  "SHia&22ooIdB''fJ.;", "Sc]2/LYFFY>b\"7,0a)", "SOC[+_h1", "Snj", "Sq+_4G>63BVgT6t_cOf.`e;E",
  "S*mMqp4^G`n4H(cC=R", "SVL1VaP\"]m_L\\Q?28W", "S0iiSjfb)", "S]hc^+Y>@`;oocju",
  "Sd7d]sjqZHU/^noTr,u", "S:I=m'!@h$#+M_'U$mkAuN`_M)", "S@UAF_g_TY(rK$]u>?K", "S,4Rp",
  "SUaIZU25/", "SJ4-B>..,p5$-", "S&TC&lbou", "S3ABc6gIS", "ST/P7m@Y?", "S'2n(8", "S_-GeA",
  "SWB*FV", "Sa/k#*=8mQ-6lt3DMr3", "SZNorn^=a!J", "SDKUA'H_)\"[W1JH", "S'^&*t@=:Q0",
  "S[&[,mRmGF[", "S\"9;cZKC3X`ZE", "S-eHb:D.C\\hQ=bY-WtN\":", "SX]>RAdf0", "SA=rp",
  "SPCg6!KP<\"aZ.7", "S)u[]_\"fDl=YCe(", "SQV\"qlHsh5T>iX!7&lo#", "SNi\"WY^nQ/", "S^?n6rA0q#",
  "SFN-SW(@5A30AkA,6n", "SocIG]Y._O@`at?9KLA\\5Kl", "S#!WNPi&=I&)$>*", "SXeAHt",
  "SpodJZT2I!c(E;", "S[`FS", "SFme`@GG!5fIlD", "S9+Hn0", "S[sBH@Ouc`2,F", "S:a']>MW31!",
  "SW1/+(/L", "SmGM#:=)0d[M:", "Sj5!r]hA", "SXhBsfPi]_V", "S'[:q", "S6$B:rhN",
  "S?X)0%(>H#QP9i4;098Wo<\"qD<GmNC:6-EPYID@94o6!(;/TLQu\"HoB9Ah_X-UG!t@YkD)+40>=sfGp!0U7'V.9C0_iJWfA2sTQS:lQ,E[d5,(r<VdJuhp!&U;RMUm3^'ut>+^]53d<",
  "S5mL1]I@", "Sl03$EuP2=h+N*", "SEPcNsZ$:;?Y.JKS", "S4LP-1.0:-`<LSVia7Q^b#8lE?Of.Ia>h;",
  "SRXA", "S=AdD+VD", "S(Eqp", "S2(A^F/Lh$", "S>EU\\dpk*<hTt=1'YA", "Sq@?$=`O0", "SK.uk",
  "S6eVSXmLj", "SHkP.0);8L]", "Sl.I+W8)", "SS:Kq47YY1\"\\8J^23R", "S_$Fu?qTP7B`-'Pp",
  "S>RhnkY;OuB`'MlRbDE", "Sqec5XF=Q@M3;[&f",
  "S@H$lq(:E9cMnV^[Bh\\rr<k:+REVF(!RbnFq9&>-qtHa(#&_Vk%',NTDn\"S)CGu<c%oZYQH.7j_ClnZj#t#@FR3ek_8hp5\\f4)tFF4$b>+][a;e3'e9'G^4C7e8]RHg]KO:O7&XN^8*",
  "SuQsafFh", "STnoWq\\noFa\\O_O3", "S&^fgM<HP$", "S-7Y.M", "Su><,", "SPb,\\BeSGV&\"Z^O5qR",
  "SBr8i5T66:8\":", "SDda%cQ*\\", "S>kX)C", "S0Z[INTXJ51TBJic`J", "SE-\\!Rbmi>=0b?", "SVPfK/",
  "SY(crhQ[eLW", "S\"9,#VV8Kjf]>L[!t\\lu_HI]26ut>HS", "S3;L4\\S<d8A>sQOj", "S>hX[2eA",
  "S\\Xj1a0@CP&+'!\\", "S)_V$&[lG", "S8ul^EfE9l9:h4@", "S[e.Y!AEn4", "S\"A0E]Yh9I", "SPOh*;",
  "SO;]b\"$EY_mE#QkbdF", "SY0^c;E-Tl'Sg7-&YV", "S`'9`,bEXY]]K.", "SF>", "SL>dni$-",
  "SJ7B(`G\\^bLDEr.1", "SQFMbm7(ll&qM^", "SXkho^9\"93U.TC", "SXm^_K6'n", "ShOBNS",
  "S2D4_cmDs83Lh@", "SnIqTC:[5", "SJ7kBZ<VVCneG54ZHA0S", "Sq'ejq+00A$5]t^H", "Sj<9]k+T:6<46(O6",
  "SO*\"*LoF", "S]q3NHrX7T+Lh", "S0Z[K=Yst+P", "SFWU4$mEs)':>uFjBRFL<@XbDVKTM!Tm@m*p'-",
  "SW6A<oaKd", "S-\"0=f*@kE", "SmEa]\"5q&", "S??lYtV+E",
}

for index, value in ipairs({ { 1, 4499 }, { 1, 2124 }, { 2125, 4499 } }) do
  while value[1] < value[2] do
    v1[value[1]], v1[value[2]], value[1], value[2] = v1[value[2]], v1[value[1]], value[1] + 1, value[2] - 1
  end
end

do
  local v2 = {
    ["&"] = 62,
    L = 60,
    p = 26,
    ["8"] = 76,
    ["-"] = 75,
    X = 81,
    C = 83,
    ["3"] = 16,
    V = 30,
    m = 71,
    H = 43,
    ["+"] = 56,
    J = 11,
    ["\\"] = 23,
    O = 79,
    [","] = 13,
    n = 51,
    b = 34,
    ["2"] = 6,
    ["1"] = 84,
    [">"] = 36,
    ["6"] = 19,
    c = 80,
    ["0"] = 37,
    ["$"] = 20,
    ["'"] = 47,
    ["4"] = 53,
    F = 15,
    Z = 7,
    _ = 0,
    u = 1,
    G = 67,
    ["%"] = 82,
    P = 55,
    M = 12,
    K = 38,
    i = 58,
    h = 8,
    ["5"] = 73,
    a = 49,
    ["."] = 68,
    ["^"] = 59,
    ["7"] = 28,
    j = 63,
    l = 48,
    B = 54,
    o = 22,
    ["]"] = 18,
    ["`"] = 32,
    g = 21,
    s = 64,
    Y = 35,
    D = 72,
    ["/"] = 52,
    A = 57,
    U = 14,
    q = 25,
    ["?"] = 65,
    ["*"] = 29,
    ["<"] = 74,
    N = 2,
    I = 39,
    k = 10,
    t = 77,
    f = 40,
    ["!"] = 9,
    [")"] = 69,
    ["@"] = 17,
    T = 31,
    R = 5,
    Q = 61,
    ["#"] = 50,
    d = 4,
    E = 33,
    e = 44,
    S = 24,
    ["["] = 42,
    ["\""] = 3,
    ["9"] = 46,
    ["("] = 78,
    r = 27,
    [";"] = 66,
    W = 41,
    ["="] = 70,
    [":"] = 45,
  }

  local insert = table.insert
  local sub = string.sub
  local len = string.len
  local v3 = type
  local char = string.char
  local floor = math.floor
  local concat = table.concat

  local v4 = {
    z = 28,
    d = 2,
    v = 63,
    T = 11,
    Q = 52,
    x = 60,
    i = 3,
    j = 53,
    L = 62,
    F = 6,
    b = 41,
    V = 20,
    R = 23,
    J = 54,
    A = 29,
    k = 30,
    c = 44,
    ["4"] = 10,
    K = 25,
    y = 27,
    ["9"] = 15,
    f = 1,
    t = 22,
    P = 58,
    p = 9,
    n = 59,
    M = 7,
    a = 31,
    Z = 16,
    e = 57,
    S = 43,
    ["8"] = 45,
    l = 13,
    ["+"] = 55,
    s = 61,
    U = 21,
    I = 4,
    W = 34,
    Y = 12,
    ["6"] = 47,
    H = 48,
    C = 17,
    o = 33,
    r = 38,
    G = 32,
    B = 49,
    X = 14,
    w = 39,
    u = 40,
    g = 19,
    ["7"] = 0,
    ["3"] = 50,
    E = 36,
    ["0"] = 35,
    h = 26,
    D = 37,
    O = 42,
    q = 46,
    m = 18,
    ["1"] = 56,
    ["5"] = 5,
    ["2"] = 8,
    ["/"] = 24,
    N = 51,
  }

  for i = 1, #v1 do
    local v5 = v1[i]

    if v3(v5) == "string" then
      local v6 = sub(v5, 1, 1)

      if v6 == "n" then
        v5 = sub(v5, 2)
        local v7 = len(v5)
        local v8 = {}
        local v9 = 1
        local v10 = 0
        local v11 = 0

        while v9 <= v7 do
          local v12 = sub(v5, v9, v9)
          local v13 = v4[v12]

          if v13 then
            v10 = v10 + v13 * 64 ^ (3 - v11)
            v11 = v11 + 1

            if v11 == 4 then
              v11 = 0
              insert(v8, char(floor(v10 / 65536), floor(v10 % 65536 / 256), v10 % 256))
              v10 = 0
            end
          elseif v12 == "=" then
            insert(v8, char(floor(v10 / 65536)))

            if v9 >= v7 or sub(v5, v9 + 1, v9 + 1) ~= "=" then
              insert(v8, char(floor(v10 % 65536 / 256)))
            end

            break
          end

          v9 = v9 + 1
        end

        v1[i] = concat(v8)
      elseif v6 == "S" then
        v5 = sub(v5, 2)
        local v14 = len(v5)
        local v15 = {}
        local v16 = 1

        while v16 <= v14 do
          local v17 = v14 - v16 + 1
          local v18 = v17 >= 5 and 5 or v17
          local v19 = 0
          local v20 = v18 > 1

          for j = 0, 4 do
            local v21

            if j < v18 then
              v21 = v2[sub(v5, v16 + j, v16 + j)]

              if not v21 then
                v20 = false
                break
              end
            else
              v21 = 84
            end

            v19 = v19 * 85 + v21
          end

          if v20 then
            local v22 = floor(v19 / 16777216) % 256
            local v23 = floor(v19 / 65536) % 256
            local v24 = floor(v19 / 256) % 256
            local v25 = v19 % 256

            if v18 == 5 then
              insert(v15, char(v22, v23, v24, v25))
            elseif v18 == 4 then
              insert(v15, char(v22, v23, v24))
            elseif v18 == 3 then
              insert(v15, char(v22, v23))
            elseif v18 == 2 then
              insert(v15, char(v22))
            end
          end

          v16 = v16 + v18
        end

        v1[i] = concat(v15)
      end
    end
  end
end

local localPlayer = players.LocalPlayer
local v26 = getgenv and getgenv() or _G

if v26.AgoyHub_Unload then
  pcall(v26.AgoyHub_Unload)
  v26.AgoyHub_Unload = nil
end

local v27 = identifyexecutor and identifyexecutor() or "Unknown"

local function f1()
  local touchEnabled = userInputService.TouchEnabled
  local currentCamera = workspace.CurrentCamera
  local viewportSize = currentCamera and currentCamera.ViewportSize or Vector2.new(0, 0)
  local v28 = viewportSize.X <= 1024 or viewportSize.Y <= 768

  local gyroscopeEnabled = userInputService.GyroscopeEnabled
    or userInputService.AccelerometerEnabled

  local v29 = not userInputService.KeyboardEnabled
  local lower = v27:lower()

  local delta = lower:find("delta") or lower:find("arceus") or lower:find("fluxus")
    or lower:find("krnl")

  local v30 = touchEnabled and (v29 or v28 or gyroscopeEnabled or delta)

  if touchEnabled and delta then
    v30 = true
  end

  return v30 and true or false
end

local v31 = f1()

print("=== Agoy Hub ===")
print("Platform: " .. (v31 and "Mobile" or "PC"))
print("Executor: " .. v27)

local v32 = {
  hidden = false,
  behavior = userInputService.MouseBehavior,
  icon = userInputService.MouseIconEnabled,
  modals = {},
  token = 0,
  hideTime = 0,
  track = nil,
}

local v33 = {
  "https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua",
  "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua",
}

local function f2()
  local v34 = "unknown"
  local count = 0

  while true do
    count = 1 + count

    if not (3 >= count) then
      break
    end

    local v35 = count

    for index2, value2 in ipairs(v33) do
      local v36 = value2
      local v37, v38 = pcall(function() return game:HttpGet(v36) end)

      if v37 and type(v38) == "string" and #v38 > 0 then
        local v39, v40 = loadstring(v38)

        if v39 then
          local v41, v42 = pcall(v39)

          if v41 and v42 then
            return v42
          end

          v34 = "library error: " .. tostring(v42)
        else
          v34 = "loadstring gagal: " .. tostring(v40)
        end
      else
        v34 = "HttpGet gagal (" .. v36 .. "): " .. tostring(v38)
      end
    end

    warn("[AgoyHub] Percobaan " .. v35 .. " gagal -> " .. v34)
    task.wait(1)
  end

  return nil, v34
end

local v43 = setmetatable({}, { __mode = "k" })
local v44 = setmetatable({}, { __mode = "k" })

local function f3()
  local v45 = {}

  pcall(function()
    if gethui then
      table.insert(v45, gethui())
    end
  end)

  pcall(function()
    local v46 = game
    table.insert(v45, v46:GetService("CoreGui"))
  end)

  pcall(function()
    local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")

    if playerGui then
      table.insert(v45, playerGui)
    end
  end)

  return v45
end

for index3, value3 in ipairs(f3()) do
  local v47 = value3

  pcall(function()
    for index4, value4 in ipairs(v47:GetChildren()) do
      v44[value4] = true
    end
  end)
end

local v48, v49 = f2()

local onHide, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20,
  f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, v50, f31, f32, f33, color, f34, f35, f36,
  f37, f38, f39, f40, f41, f42, color2, f43, detect, check, f44, f45, f46, v51, v52, v53, v54,
  connect, connect2, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, onShow, v66, f47,
  v67, f48, f49, f50, f51, v68, f52, f53, v69, f54, f55, f56, f57, f58, v70, v71, v72, v73, v74,
  v75, v76, v77, v78, v79, v80, v81, v82, f59, v83, v84, v85, v86, v87, v88, v89, v90, connect3,
  connect4, agoyParryRing, connect5, v91, f60, v92, v93, v94, v95, v96, v97, v98, v99, v100,
  v101, color3, v102, v103, f61, v104, v105, v106, v107, f62

if not v48 then
  warn("[AgoyHub] Gagal load WindUI:", v49)
  return
else
  v51 = {
    ESP = {
      Killer = false,
      Survivor = false,
      Generator = false,
      Gate = false,
      Hook = false,
      Pallet = false,
      Window = false,
      ShowOnlyClosestHook = false,
      ShowDistance = false,
      TextSize = 13,
      MaxDistance = 500,
    },
    AutoFeatures = {
      AutoGenerator = false,
      GeneratorMode = "great",
      AutoLeaveGenerator = false,
      LeaveDistance = 15,
      LeaveKeybind = Enum.KeyCode.Q,
      AutoAttack = false,
      AttackRange = 10,
    },
    Teleportation = { TeleportOffset = 3, SafeTeleport = true, TeleportDelay = 0.1 },
    Performance = {
      UpdateRate = 0.5,
      UseDistanceCulling = true,
      MaxESPObjects = v31 and 50 or 100,
      DisableParticles = false,
      LowerGraphics = false,
      DisableShadows = false,
      ReduceRenderDistance = false,
    },
    Mobile = {
      ButtonSize = 80,
      ButtonTransparency = 0.3,
      AutoOptimize = true,
      AggressiveOptimization = false,
    },
  }

  v52 = {}
  v53 = {}
  v54 = 0
  connect = nil
  connect2 = nil
  v55 = nil
  v56 = false
  v57 = nil
  v58 = {}
  v59 = nil
  v60 = true
  v61 = nil
  v62 = nil
  v63 = nil
  v64 = nil
  v65 = {}

  function v32.findModals()
    local v108 = {}
    local v109 = {}

    pcall(function()
      if gethui then
        table.insert(v109, gethui())
      end
    end)

    pcall(function()
      local v110 = game
      table.insert(v109, v110:GetService("CoreGui"))
    end)

    pcall(function()
      local playerGui2 = localPlayer:FindFirstChildOfClass("PlayerGui")

      if playerGui2 then
        table.insert(v109, playerGui2)
      end
    end)

    for index5, value5 in ipairs(v109) do
      local v111 = value5

      pcall(function()
        for index6, value6 in ipairs(v111:GetDescendants()) do
          if value6:IsA("GuiButton") and value6.Modal then
            table.insert(v108, value6)
          end
        end
      end)
    end

    return v108
  end

  function v32.captureBeforeShow()
    v32.behavior = userInputService.MouseBehavior
    v32.icon = userInputService.MouseIconEnabled
  end

  function v32.onShow()
    v32.hidden = false
    v32.token = v32.token + 1

    for index7, value7 in ipairs(v32.modals) do
      local v112 = value7

      pcall(function()
        if v112.Parent then
          v112.Modal = true
        end
      end)
    end

    v32.modals = {}
  end

  function v32.onHide()
    v32.hidden = true
    v32.hideTime = os.clock()
    v32.modals = v32.findModals()

    for index8, value8 in ipairs(v32.modals) do
      local v113 = value8
      pcall(function() v113.Modal = false end)
    end

    v32.token = v32.token + 1
    local token = v32.token
    local v114 = os.clock()

    local connect6

    connect6 = runService.RenderStepped:Connect(function()
      if v32.token ~= token or not v60 or os.clock() - v114 > 0.6 then
        connect6:Disconnect()
        return
      end

      pcall(function()
        userInputService.MouseBehavior = v32.behavior
        userInputService.MouseIconEnabled = v32.icon
      end)
    end)
  end

  function v32.init()
    if v32.track then
      return
    end

    v32.track = runService.Heartbeat:Connect(function() end)
  end

  v32.free = false
  v32.hideEnforce = true
  v32.initialIcon = userInputService.MouseIconEnabled

  function v32.unbindAll()
    pcall(function() runService:UnbindFromRenderStep("AgoyCursorFree") end)
    pcall(function() runService:UnbindFromRenderStep("AgoyCursorHide") end)
  end

  v32.free = false
  v32.hideEnforce = true
  v32.autoRelock = true
  v32.initialIcon = userInputService.MouseIconEnabled
  v32.restoreUntil = 0

  function v32.unbindAll()
    pcall(function() runService:UnbindFromRenderStep("AgoyCursorFree") end)
    pcall(function() runService:UnbindFromRenderStep("AgoyCursorHide") end)
  end

  function v32.inMatch()
    local team = localPlayer.Team
    local name = team and team.Name or ""
    return name == "Survivors" or name == "Killer"
  end

  function v32.applyFree()
    if v32.free then
      return
    end

    v32.behavior = userInputService.MouseBehavior
    v32.icon = userInputService.MouseIconEnabled
    v32.free = true
    v32.unbindAll()

    runService:BindToRenderStep("AgoyCursorFree", Enum.RenderPriority.Last.Value, function()
      if not v60 or not v32.free then
        v32.unbindAll()

        if not v60 then
          pcall(function() userInputService.MouseIconEnabled = v32.initialIcon end)
        end

        return
      else
        local mouseBehavior = userInputService.MouseBehavior

        if mouseBehavior ~= Enum.MouseBehavior.Default then
          v32.behavior = mouseBehavior
        end

        userInputService.MouseBehavior = Enum.MouseBehavior.Default
        userInputService.MouseIconEnabled = true

        return
      end
    end)
  end

  function v32.applyHidden()
    v32.free = false
    v32.unbindAll()
    v32.restoreUntil = os.clock() + 2

    local v115

    runService:BindToRenderStep("AgoyCursorHide", Enum.RenderPriority.Last.Value, function()
      if not v60 or v32.free then
        v32.unbindAll()

        if not v60 then
          pcall(function() userInputService.MouseIconEnabled = v32.initialIcon end)
        end

        return
      else
        local v116 = os.clock()
        local behavior = v32.behavior
        local v117 = behavior ~= Enum.MouseBehavior.Default

        if v116 < v32.restoreUntil then
          userInputService.MouseBehavior = behavior
        elseif v32.autoRelock and v117 and v32.inMatch() and not v32.hoverLogo
          and userInputService:GetFocusedTextBox() == nil then
          if userInputService.MouseBehavior == Enum.MouseBehavior.Default then
            v115 = v115 or v116

            if v116 - v115 > 0.4 then
              userInputService.MouseBehavior = behavior
              v115 = nil
            end
          else
            v115 = nil
          end
        end

        if v32.hideEnforce then
          if v117 then
            userInputService.MouseIconEnabled = v32.hoverLogo == true
          else
            userInputService.MouseIconEnabled = v32.icon
          end
        end

        return
      end
    end)
  end

  onHide = v32.onHide
  onShow = v32.onShow

  function v32.onShow()
    onShow()
    v32.applyFree()
  end

  function v32.onHide()
    onHide()
    v32.applyHidden()
  end

  function f4(p1)
    return p1 and typeof(p1) == "Instance" and p1.Parent ~= nil
  end

  task.delay(1.5, function()
    if v60 and not v32.hidden and not v32.free then
      v32.applyFree()
    end
  end)

  v66 = {}

  function f5()
    return localPlayer.Team and localPlayer.Team.Name == "Killer"
  end

  function v66.get()
    local v118 = {}

    pcall(function()
      if gethui then
        table.insert(v118, gethui())
      end
    end)

    pcall(function()
      local v119 = game
      table.insert(v118, v119:GetService("CoreGui"))
    end)

    pcall(function()
      local playerGui3 = localPlayer:FindFirstChildOfClass("PlayerGui")

      if playerGui3 then
        table.insert(v118, playerGui3)
      end
    end)

    return v118
  end

  function f6(p2, ...)
    local v120, v121 = pcall(p2, ...)

    if not v120 then
      return nil
    end

    return v121
  end

  function f7()
    return localPlayer.Team and localPlayer.Team.Name == "Survivors"
  end

  function f47(p3, p4, p5)
    if not (v48 and pcall(function()
      v48:Notify({ Title = p3, Content = tostring(p4), Duration = p5 or 3 })
    end)) then
      warn(string.format("[%s] %s", p3, tostring(p4)))
    end
  end

  v67 = {
    on = false,
    label = "Private",
    orig = setmetatable({}, { __mode = "k" }),
    last = setmetatable({}, { __mode = "k" }),
    tracked = setmetatable({}, { __mode = "k" }),
    hum = setmetatable({}, { __mode = "k" }),
    humHooked = setmetatable({}, { __mode = "k" }),
    charHooked = setmetatable({}, { __mode = "k" }),
    playerHooked = setmetatable({}, { __mode = "k" }),
    conns = {},
    nameList = {},
    nameTime = 0,
  }

  function v67.isHub(p6)
    local v122, v123 = pcall(function()
      local screenGui = p6:FindFirstAncestorWhichIsA("ScreenGui")

      if not screenGui then
        return false
      elseif v43[screenGui] then
        return true
      else
        local lower2 = screenGui.Name:lower()
        return lower2:find("windui", 1, true) ~= nil or lower2:find("agoy", 1, true) ~= nil
      end
    end)

    return v122 and v123 or false
  end

  function v67.getNames()
    local v124 = os.clock()

    if v124 - v67.nameTime < 1 then
      return v67.nameList
    else
      v67.nameTime = v124
      local v125 = {}
      local v126 = {}

      for index9, value9 in ipairs(players:GetPlayers()) do
        for index10, value10 in ipairs({ value9.Name, value9.DisplayName }) do
          if type(value10) == "string" and #value10 >= 3 then
            local lower3 = value10:lower()

            if not v125[lower3] and not ("private"):find(lower3, 1, true) then
              v125[lower3] = true
              table.insert(v126, lower3)
            end
          end
        end
      end

      table.sort(v126, function(p7, p8) return #p7 > #p8 end)
      v67.nameList = v126
      return v126
    end
  end

  function f8()
    local agoyFPSCounter, frame, textLabel, v127, v128, position, position2, v129, v130

    if v57 then
      return
    else
      agoyFPSCounter = Instance.new("ScreenGui")
      agoyFPSCounter.Name = "AgoyFPSCounter"
      agoyFPSCounter.ResetOnSpawn = false
      agoyFPSCounter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

      frame = Instance.new("Frame")
      frame.Size = UDim2.new(0, 120, 0, 50)
      frame.Position = UDim2.new(0, 10, 0, 10)
      frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
      frame.BackgroundTransparency = 0.3
      frame.BorderSizePixel = 0
      frame.Parent = agoyFPSCounter

      local uiCorner = Instance.new("UICorner")
      uiCorner.CornerRadius = UDim.new(0, 8)
      uiCorner.Parent = frame

      textLabel = Instance.new("TextLabel")
      textLabel.Size = UDim2.new(1, 0, 1, 0)
      textLabel.BackgroundTransparency = 1
      textLabel.Text = "FPS: 0"
      textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
      textLabel.TextStrokeTransparency = 0
      textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
      textLabel.Font = Enum.Font.GothamBold
      textLabel.TextSize = 18
      textLabel.Parent = frame

      v127 = false
      v128 = nil
      position = nil
      position2 = nil

      frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
          or input.UserInputType == Enum.UserInputType.Touch then
          v127 = true
          position = input.Position
          position2 = frame.Position

          input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
              v127 = false
            end
          end)
        end
      end)

      frame.InputChanged:Connect(function(input2)
        if input2.UserInputType == Enum.UserInputType.MouseMovement
          or input2.UserInputType == Enum.UserInputType.Touch then
          v128 = input2
        end
      end)

      local inputChanged = userInputService.InputChanged

      v58[#v58 + 1] = inputChanged:Connect(function(p9)
        if p9 == v128 and v127 then
          local v131 = p9.Position - position

          frame.Position = UDim2.new(
            position2.X.Scale, position2.X.Offset + v131.X, position2.Y.Scale,
            position2.Y.Offset + v131.Y
          )
        end
      end)

      v129 = tick()
      v130 = 0
      local heartbeat = runService.Heartbeat

      v58[#v58 + 1] = heartbeat:Connect(function()
        if not v56 then
          return
        else
          v130 = v130 + 1
          local v132 = tick()
          local v133 = v132 - v129

          if v133 >= 1.5 then
            local v134 = math.floor(v130 / v133)
            v130 = 0
            v129 = v132

            if v134 >= 60 then
              textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            elseif v134 >= 30 then
              textLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
            else
              textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            end

            textLabel.Text = string.format("FPS: %d", v134)
          end

          return
        end
      end)

      if pcall(function() agoyFPSCounter.Parent = localPlayer:WaitForChild("PlayerGui") end) then
        v57 = agoyFPSCounter
        v56 = true
        f47("FPS Counter", "Enabled - drag to move", 3)
      end

      return
    end
  end

  function v67.replaceWord(p10, p11, p12)
    local lower4 = p10:lower()
    local v135 = {}
    local v136 = 1

    while true do
      local v137, v138 = lower4:find(p11, v136, true)

      if not v137 then
        table.insert(v135, p10:sub(v136))
        break
      else
        local sub2 = v137 > 1 and lower4:sub(v137 - 1, v137 - 1) or ""
        local sub3 = v138 < #lower4 and lower4:sub(v138 + 1, v138 + 1) or ""

        if sub2:match("[%w_]") or sub3:match("[%w_]") then
          table.insert(v135, p10:sub(v136, v138))
        else
          table.insert(v135, p10:sub(v136, v137 - 1))
          table.insert(v135, p12)
        end

        v136 = v138 + 1
      end
    end

    return table.concat(v135)
  end

  function v67.fixObj(p13)
    local v139

    if not v67.on then
      return
    elseif v67.isHub(p13) then
      return
    else
      local v140, v141 = pcall(function() return p13.Text end)

      if not v140 or type(v141) ~= "string" or v141 == "" then
        return
      elseif v141:find("Agoy Hub", 1, true) then
        return
      else
        local v142 = v67.getNames()
        v139 = v141

        for index11, value11 in ipairs(v142) do
          v139 = v67.replaceWord(v139, value11, v67.label)
        end

        if v139 == v141 then
          return
        end

        if v67.last[p13] ~= v141 then
          v67.orig[p13] = v141
        end

        v67.last[p13] = v139
        pcall(function() p13.Text = v139 end)
        return
      end
    end
  end

  function v67.track(p14)
    if v67.tracked[p14] then
      return
    end

    if not (p14:IsA("TextLabel") or p14:IsA("TextButton")) then
      return
    elseif v67.isHub(p14) then
      return
    else
      v67.tracked[p14] = true
      v67.fixObj(p14)

      local text = p14:GetPropertyChangedSignal("Text")
      table.insert(v67.conns, text:Connect(function() v67.fixObj(p14) end))
      return
    end
  end

  function v67.hookHumanoid(p15)
    if p15.DisplayName ~= v67.label then
      v67.hum[p15] = p15.DisplayName
    end

    p15.DisplayName = v67.label

    if not v67.humHooked[p15] then
      v67.humHooked[p15] = true
      local displayName = p15:GetPropertyChangedSignal("DisplayName")

      table.insert(v67.conns, displayName:Connect(function()
        if v67.on and p15.DisplayName ~= v67.label then
          v67.hum[p15] = p15.DisplayName
          p15.DisplayName = v67.label
        end
      end))
    end
  end

  function f9()
    if connect2 then
      connect2:Disconnect()
      connect2 = nil
    end

    f47("Auto Attack Off", "Auto attack stopped", 2)
  end

  function v67.hookCharacter(p16)
    task.spawn(function()
      local humanoid = p16:FindFirstChildOfClass("Humanoid") or p16:WaitForChild("Humanoid", 10)

      if v67.on and humanoid then
        pcall(v67.hookHumanoid, humanoid)
      end
    end)

    pcall(function()
      for index12, value12 in ipairs(p16:GetDescendants()) do
        v67.track(value12)
      end
    end)

    if not v67.charHooked[p16] then
      v67.charHooked[p16] = true
      local descendantAdded = p16.DescendantAdded

      table.insert(v67.conns, descendantAdded:Connect(function(p17)
        if v67.on then
          v67.track(p17)
        end
      end))
    end
  end

  function f10()
    for index13, value13 in ipairs(v58) do
      local v143 = value13
      pcall(function() v143:Disconnect() end)
    end

    v58 = {}

    if v57 then
      v57:Destroy()
      v57 = nil
    end

    v56 = false
  end

  function v67.hookPlayer(p18)
    if p18.Character then
      v67.hookCharacter(p18.Character)
    end

    if not v67.playerHooked[p18] then
      v67.playerHooked[p18] = true
      local characterAdded = p18.CharacterAdded

      table.insert(v67.conns, characterAdded:Connect(function(p19)
        if v67.on then
          v67.hookCharacter(p19)
        end
      end))
    end
  end

  function f11()
    local v144 = {}
    local map = workspace:FindFirstChild("Map")

    if not map then
      return v144
    end

    for index14, value14 in ipairs(map:GetDescendants()) do
      if value14:IsA("Model") and value14.Name == "Generator" then
        local basePart = value14:FindFirstChildWhichIsA("BasePart")

        if basePart then
          table.insert(v144, { model = value14, part = basePart, position = basePart.Position })
        end
      end
    end

    return v144
  end

  function f12()
    local v145 = not v31 or v55
    local agoyMobileControls

    if v145 then
      return
    else
      agoyMobileControls = Instance.new("ScreenGui")
      agoyMobileControls.Name = "AgoyMobileControls"
      agoyMobileControls.ResetOnSpawn = false
      agoyMobileControls.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

      local function f63(name2, text2, backgroundColor3, p20, p21)
        local textButton = Instance.new("TextButton")
        textButton.Name = name2
        textButton.Size = UDim2.new(0, v51.Mobile.ButtonSize, 0, v51.Mobile.ButtonSize)
        textButton.Position = UDim2.new(1, -100, 0.5, p20)
        textButton.BackgroundColor3 = backgroundColor3
        textButton.BackgroundTransparency = v51.Mobile.ButtonTransparency
        textButton.Text = text2
        textButton.TextColor3 = Color3.new(1, 1, 1)
        textButton.TextScaled = true
        textButton.Font = Enum.Font.GothamBold
        textButton.Parent = agoyMobileControls

        local uiCorner2 = Instance.new("UICorner")
        uiCorner2.CornerRadius = UDim.new(0, 10)
        uiCorner2.Parent = textButton

        textButton.MouseButton1Click:Connect(p21)
      end

      f63("LeaveGenerator", "LEAVE", Color3.fromRGB(255, 100, 100), -40, function() v61() end)

      f63("TeleportGen", "TP GEN", Color3.fromRGB(100, 150, 255), 60, function()
        local v146 = v62()

        if #v146 > 0 then
          v63(v146[1].part.CFrame)
          f47("Teleported!", "Moved to closest generator", 2)
        end
      end)

      if pcall(function() agoyMobileControls.Parent = localPlayer:WaitForChild("PlayerGui") end) then
        v55 = agoyMobileControls
        f47("Mobile Controls", "Touch controls enabled!", 3)
      end

      return
    end
  end

  function f13()
    if v51.Performance.DisableParticles then
      f6(function()
        for index15, value15 in ipairs(workspace:GetDescendants()) do
          if value15:IsA("ParticleEmitter") or value15:IsA("Trail") or value15:IsA("Beam") then
            value15.Enabled = false
          end
        end
      end)
    end

    if v51.Performance.LowerGraphics then
      f6(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
    end

    if v51.Performance.DisableShadows then
      f6(function()
        lighting.GlobalShadows = false
        lighting.FogEnd = 100
      end)
    end

    if v51.Performance.ReduceRenderDistance then
      f6(function()
        workspace.StreamingEnabled = true
        workspace.StreamingMinRadius = 32
        workspace.StreamingTargetRadius = 64
      end)
    end
  end

  function f14()
    if not localPlayer.Character then
      return nil
    end

    return localPlayer.Character:FindFirstChild("HumanoidRootPart")
  end

  function v67.setEnabled(p22)
    if p22 then
      if v67.on then
        return
      else
        v67.on = true
        v67.nameTime = 0

        local playerAdded = players.PlayerAdded

        table.insert(v67.conns, playerAdded:Connect(function(p23)
          v67.nameTime = 0

          if v67.on then
            v67.hookPlayer(p23)
          end
        end))

        local playerRemoving = players.PlayerRemoving
        table.insert(v67.conns, playerRemoving:Connect(function() v67.nameTime = 0 end))

        for index16, value16 in ipairs(players:GetPlayers()) do
          v67.hookPlayer(value16)
        end

        for index17, value17 in ipairs(v66.get()) do
          local v147 = value17

          pcall(function()
            local descendantAdded2 = v147.DescendantAdded

            table.insert(v67.conns, descendantAdded2:Connect(function(p24)
              if v67.on then
                v67.track(p24)
              end
            end))

            for index18, value18 in ipairs(v147:GetDescendants()) do
              v67.track(value18)
            end
          end)
        end

        return
      end
    else
      if not v67.on then
        return
      end

      v67.on = false

      for key, value19 in pairs(v67.hum) do
        local v148 = key
        local displayName2 = value19

        pcall(function()
          if v148.Parent then
            v148.DisplayName = displayName2
          end
        end)
      end

      for key2, value20 in pairs(v67.orig) do
        local v149 = key2
        local text3 = value20

        pcall(function()
          if v149.Parent and v149.Text == v67.last[v149] then
            v149.Text = text3
          end
        end)
      end

      for index19, value21 in ipairs(v67.conns) do
        local v150 = value21
        pcall(function() v150:Disconnect() end)
      end

      v67.conns = {}
      v67.orig = setmetatable({}, { __mode = "k" })
      v67.last = setmetatable({}, { __mode = "k" })
      v67.tracked = setmetatable({}, { __mode = "k" })
      v67.hum = setmetatable({}, { __mode = "k" })
      v67.humHooked = setmetatable({}, { __mode = "k" })
      v67.charHooked = setmetatable({}, { __mode = "k" })
      v67.playerHooked = setmetatable({}, { __mode = "k" })

      return
    end
  end

  function f15()
    f6(function()
      for index20, value22 in ipairs(workspace:GetDescendants()) do
        if value22:IsA("ParticleEmitter") or value22:IsA("Trail") or value22:IsA("Beam") then
          value22.Enabled = true
        elseif value22:IsA("Texture") or value22:IsA("Decal") then
          value22.Transparency = 0
        end
      end

      settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic

      lighting.GlobalShadows = true
      lighting.FogEnd = 100000

      for index21, value23 in ipairs(lighting:GetChildren()) do
        if value23:IsA("PostEffect") then
          value23.Enabled = true
        end
      end
    end)
  end

  function f16()
    if not v31 then
      return
    end

    f48()

    f6(function()
      settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
      settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
      settings().Rendering.EnableFRM = false

      for index22, value24 in ipairs(workspace:GetDescendants()) do
        if value24:IsA("Texture") or value24:IsA("Decal") then
          value24.Transparency = 1
        elseif value24:IsA("SurfaceAppearance") then
          value24.Parent = nil
        end
      end

      for index23, value25 in ipairs(workspace:GetDescendants()) do
        if value25:IsA("Sound") and value25.Name ~= "Music" then
          value25.Volume = 0
        end
      end

      v51.Performance.UpdateRate = 1
      v51.Performance.MaxESPObjects = 25
    end)
  end

  function f48()
    if not v31 then
      return
    end

    f6(function()
      settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

      lighting.GlobalShadows = false
      lighting.FogEnd = 100
      lighting.Brightness = 2

      for index24, value26 in ipairs(lighting:GetChildren()) do
        if value26:IsA("PostEffect") then
          value26.Enabled = false
        end
      end

      for index25, value27 in ipairs(workspace:GetDescendants()) do
        if value27:IsA("ParticleEmitter") or value27:IsA("Trail") or value27:IsA("Beam")
          or value27:IsA("Fire") or value27:IsA("Smoke") or value27:IsA("Sparkles") then
          value27.Enabled = false
        end
      end

      workspace.StreamingEnabled = true
      workspace.StreamingMinRadius = 32
      workspace.StreamingTargetRadius = 64

      if workspace:FindFirstChild("Terrain") then
        workspace.Terrain.Decoration = false
      end
    end)
  end

  function f17()
    if not v60 then
      return false
    else
      local remotes = replicatedStorage:FindFirstChild("Remotes")
      local attacks = remotes and remotes:FindFirstChild("Attacks")
      local basicAttack = attacks and attacks:FindFirstChild("BasicAttack")

      if basicAttack then
        basicAttack:FireServer(false)
        return true
      end

      return false
    end
  end

  function f49()
    local v151 = f14()

    if not v151 then
      return false, nil
    else
      local map2 = workspace:FindFirstChild("Map")

      if not map2 then
        return false, nil
      else
        local v152 = nil
        local huge = math.huge

        for index26, value28 in ipairs(map2:GetDescendants()) do
          if value28:IsA("Model") and value28.Name == "Generator" then
            local basePart2 = value28:FindFirstChildWhichIsA("BasePart")

            if basePart2 then
              local magnitude = (basePart2.Position - v151.Position).Magnitude

              if magnitude < huge then
                v152 = value28
                huge = magnitude
              end
            end
          end
        end

        if v152 and huge <= v51.AutoFeatures.LeaveDistance then
          return true, v152, huge
        end

        return false, nil, nil
      end
    end
  end

  function v61()
    local v153 = f14()

    if not v153 then
      return false
    else
      local v154, v155 = f49()

      if not v154 then
        f47("Not Near", "You're not near any generator", 2)
        return false
      else
        pcall(v65.release, v155)
        local basePart3 = v155:FindFirstChildWhichIsA("BasePart")

        if basePart3 then
          local v156 = v51.AutoFeatures.LeaveDistance + 15
          local v157 = v153.Position + (v153.Position - basePart3.Position).Unit * v156

          if v63(CFrame.new(v157, v157 + v153.CFrame.LookVector), Vector3.new(0, 2, 0)) then
            f47("Escaped!", string.format("Moved %.0f studs away", v156), 2)
            return true
          end

          return false
        end

        return false
      end
    end
  end

  function f50()
    if not f5() then
      return nil, nil
    else
      local v158 = f14()

      if not v158 then
        return nil, nil
      else
        local v159 = nil
        local huge2 = math.huge

        for index27, value29 in ipairs(players:GetPlayers()) do
          if value29 ~= localPlayer and value29.Team and value29.Team.Name == "Survivors"
            and value29.Character then
            local humanoidRootPart = value29.Character:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart then
              local magnitude2 = (humanoidRootPart.Position - v158.Position).Magnitude

              if magnitude2 < huge2 and magnitude2 <= v51.AutoFeatures.AttackRange then
                huge2 = magnitude2
                v159 = value29
              end
            end
          end
        end

        return v159, huge2
      end
    end
  end

  function f18()
    if connect2 then
      return
    end

    if not f5() then
      f47("Error", "You must be the Killer to use Auto Attack!", 3)
      return
    end

    connect2 = runService.Heartbeat:Connect(function()
      if v60 and v51.AutoFeatures.AutoAttack then
        f51()
      end
    end)

    f47("Auto Attack On", "Range: " .. v51.AutoFeatures.AttackRange .. " studs", 3)
  end

  function f51()
    if not f5() then
      return
    end

    if not f50() then
      return
    end

    f6(f17)
  end

  function v62()
    local v160 = f14()

    if not v160 then
      return {}
    else
      local v161 = f11()

      for index28, value30 in ipairs(v161) do
        value30.distance = (value30.position - v160.Position).Magnitude
      end

      table.sort(v161, function(p25, p26) return p25.distance < p26.distance end)
      return v161
    end
  end

  function v63(p27, p28)
    local v162 = f14()

    if not v162 then
      f47("Error", "Character not found", 3)
      return false
    else
      local vector = p28 or Vector3.new(0, v51.Teleportation.TeleportOffset, 0)

      if v51.Teleportation.SafeTeleport then
        f6(function()
          for index29, value31 in ipairs(localPlayer.Character:GetDescendants()) do
            if value31:IsA("BasePart") then
              value31.CanCollide = false
            end
          end
        end)
      end

      v162.CFrame = p27 + vector

      if v51.Teleportation.SafeTeleport then
        task.delay(0.5, function()
          f6(function()
            for index30, value32 in ipairs(localPlayer.Character:GetDescendants()) do
              if value32:IsA("BasePart") and value32.Name ~= "HumanoidRootPart" then
                value32.CanCollide = true
              end
            end
          end)
        end)
      end

      return true
    end
  end

  v68 = {
    on = false,
    anim = {},
    found = {},
    checkTime = {},
    cached = {},
    dumped = setmetatable({}, { __mode = "k" }),
    hooked = setmetatable({}, { __mode = "k" }),
    conns = {},
    keywords = {
      { "alex", "Alex" }, { "cobra", "Cobra" }, { "tony", "Tony" }, { "abyss", "Abyss" },
      { "hidden", "Hidden" },
    },
    ids = {
      ["106871536134254"] = "Alex",
      ["117070354890871"] = "Alex",
      ["130593238885843"] = "Cobra",
      ["115244153053858"] = "Cobra",
      ["138720291317243"] = "Tony",
      ["78432063483146"] = "Abyss",
      ["77081789642514"] = "Abyss",
      ["118907603246885"] = "Abyss",
      ["80411309607666"] = "Abyss",
      ["74968262036854"] = "Hidden",
      ["82666958311998"] = "Hidden",
      ["113255068724446"] = "Hidden",
    },
    attrKeys = {
      "killername", "killertype", "killerid", "killer", "charactername", "character", "class",
      "skin", "type",
    },
  }

  function v68.isUseful(p29, p30)
    if type(p29) ~= "string" then
      return false
    else
      local lower5 = p29:lower()

      if lower5 == "" or lower5 == "killer" or lower5 == "survivors" or lower5 == "survivor"
        or lower5 == "none" then
        return false
      end

      if lower5 == p30.Name:lower() or lower5 == p30.DisplayName:lower() then
        return false
      end

      return true
    end
  end

  function v68.fromData(p31)
    local v163 = { p31, p31.Character }
    local humanoid2 = p31.Character and p31.Character:FindFirstChildOfClass("Humanoid")

    if humanoid2 then
      table.insert(v163, humanoid2)
    end

    for index31, value33 in ipairs(v163) do
      local getAttributes = value33:GetAttributes()

      for index32, value34 in ipairs(v68.attrKeys) do
        for key3, value35 in pairs(getAttributes) do
          if key3:lower() == value34 and v68.isUseful(value35, p31) then
            return value35, "attribute " .. key3
          end
        end
      end

      for key4, value36 in pairs(getAttributes) do
        if key4:lower():find("killer", 1, true) and v68.isUseful(value36, p31) then
          return value36, "attribute " .. key4
        end
      end

      for index33, value37 in ipairs(value33:GetChildren()) do
        if value37:IsA("StringValue") then
          local lower6 = value37.Name:lower()

          for index34, value38 in ipairs(v68.attrKeys) do
            if lower6 == value38 and v68.isUseful(value37.Value, p31) then
              return value37.Value, "value " .. value37.Name
            end
          end

          if lower6:find("killer", 1, true) and v68.isUseful(value37.Value, p31) then
            return value37.Value, "value " .. value37.Name
          end
        end
      end
    end

    return nil
  end

  function v68.dump(p32)
    local character = p32.Character
    local v164 = not character or v68.dumped[character]
    local v165

    if v164 then
      return
    else
      v68.dumped[character] = true
      v165 = {}

      local function f64(p33, p34)
        for key5, value39 in pairs(p34:GetAttributes()) do
          table.insert(v165, string.format("%s.attr[%s]=%s", p33, key5, tostring(value39)))
        end

        for index35, value40 in ipairs(p34:GetChildren()) do
          if value40:IsA("ValueBase") then
            table.insert(v165, string.format(
              "%s.value[%s]=%s", p33, value40.Name, tostring(value40.Value)
            ))
          end
        end
      end

      f64("player", p32)
      f64("char", character)

      local v166 = {}

      for index36, value41 in ipairs(character:GetChildren()) do
        if #v166 < 40 then
          table.insert(v166, value41.Name .. ":" .. value41.ClassName)
        end
      end

      print("[AgoyHub] KillerID belum ketemu (sumber data). Data Killer: "
        .. (#v165 > 0 and table.concat(v165, " | ") or "(tidak ada attribute/value)")
        .. " || anak karakter: " .. table.concat(v166, ", "))

      return
    end
  end

  function v68.onAnimation(p35, p36)
    if not (p35.Team and p35.Team.Name == "Killer") then
      return
    else
      local animation = p36.Animation
      local v167 = string.match(tostring(animation and animation.AnimationId or ""), "(%d+)")
      local v168 = v167 and v68.ids[v167]

      if not v168 and animation then
        local lower7 = animation.Name:lower()

        for index37, value42 in ipairs(v68.keywords) do
          if lower7:find(value42[1], 1, true) then
            v168 = value42[2]
            break
          end
        end
      end

      if v168 and v68.anim[p35] ~= v168 then
        v68.anim[p35] = v168
        v68.checkTime[p35] = 0
      end

      return
    end
  end

  function v68.hookCharacter(p37, p38)
    task.spawn(function()
      local humanoid3 = p38:FindFirstChildOfClass("Humanoid")
        or p38:WaitForChild("Humanoid", 10)

      local animator = humanoid3
        and (humanoid3:FindFirstChildOfClass("Animator") or humanoid3:WaitForChild("Animator", 5))

      if not (v68.on and animator) then
        return
      else
        local animationPlayed = animator.AnimationPlayed

        table.insert(v68.conns, animationPlayed:Connect(function(p39)
          if v68.on then
            v68.onAnimation(p37, p39)
          end
        end))

        return
      end
    end)
  end

  function v68.hookPlayer(p40)
    if p40 == localPlayer or v68.hooked[p40] then
      return
    else
      v68.hooked[p40] = true

      if p40.Character then
        v68.hookCharacter(p40, p40.Character)
      end

      local characterAdded2 = p40.CharacterAdded

      table.insert(v68.conns, characterAdded2:Connect(function(p41)
        v68.anim[p40] = nil
        v68.cached[p40] = nil

        if v68.on then
          v68.hookCharacter(p40, p41)
        end
      end))

      return
    end
  end

  function v68.get(p42)
    local v169 = os.clock()

    if v68.checkTime[p42] and v169 - v68.checkTime[p42] < 1 then
      return v68.cached[p42]
    else
      v68.checkTime[p42] = v169
      local v170, v171 = v68.fromData(p42)

      if not v170 then
        v170 = v68.anim[p42]
        v171 = "animasi"
      end

      if not v170 then
        v68.dump(p42)
      end

      v68.cached[p42] = v170

      if v170 and v68.found[p42] ~= v170 then
        v68.found[p42] = v170
        print("[AgoyHub] KillerID: " .. tostring(v170) .. " (sumber: " .. tostring(v171) .. ")")
        f47("Killer", "Killer: " .. tostring(v170), 4)
      end

      return v170
    end
  end

  function v68.start()
    if v68.on then
      return
    else
      v68.on = true

      for index38, value43 in ipairs(players:GetPlayers()) do
        v68.hookPlayer(value43)
      end

      local playerAdded2 = players.PlayerAdded

      table.insert(v68.conns, playerAdded2:Connect(function(p43)
        if v68.on then
          v68.hookPlayer(p43)
        end
      end))

      return
    end
  end

  function v68.stop()
    v68.on = false

    for index39, value44 in ipairs(v68.conns) do
      local v172 = value44
      pcall(function() v172:Disconnect() end)
    end

    v68.conns = {}
    v68.hooked = setmetatable({}, { __mode = "k" })
    v68.anim = {}
    v68.found = {}
    v68.checkTime = {}
    v68.cached = {}
  end

  function f24(p44, p45)
    if not f4(p44) then
      return
    end

    if p44:FindFirstChild("H") then
      return
    end

    f6(function()
      local h = Instance.new("Highlight")
      h.Name = "H"
      h.Adornee = p44
      h.FillColor = p45
      h.OutlineColor = p45
      h.FillTransparency = 0.5
      h.OutlineTransparency = 0
      h.Parent = p44

      v52[p44] = h
    end)
  end

  function f19(p46)
    if v52[p46] then
      f6(function()
        if f4(v52[p46]) then
          v52[p46]:Destroy()
        end
      end)

      v52[p46] = nil
    end

    local h2 = p46:FindFirstChild("H")

    if h2 then
      h2:Destroy()
    end
  end

  function f20(p47, p48, textColor3)
    if not f4(p47) then
      return
    end

    if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
      return
    else
      local basePart4 = p47:IsA("Model") and p47:FindFirstChildWhichIsA("BasePart")
        or p47:IsA("BasePart") and p47 or nil

      if not basePart4 then
        return
      else
        local magnitude3 = (localPlayer.Character.HumanoidRootPart.Position - basePart4.Position).Magnitude

        if v51.Performance.UseDistanceCulling and magnitude3 > v51.ESP.MaxDistance then
          if v53[p47] then
            f6(function()
              if f4(v53[p47]) then
                v53[p47]:Destroy()
              end
            end)

            v53[p47] = nil
          end

          return
        end

        if v53[p47] and f4(v53[p47]) then
          local textLabel2 = v53[p47]:FindFirstChild("TextLabel")

          if textLabel2 and textLabel2.Text ~= p48 then
            textLabel2.Text = p48
          end

          return
        end

        f6(function()
          local billboardGui = Instance.new("BillboardGui")
          billboardGui.Size = UDim2.new(0, 200, 0, 60)
          billboardGui.AlwaysOnTop = true
          billboardGui.StudsOffset = Vector3.new(0, 3, 0)
          billboardGui.Adornee = basePart4
          billboardGui.Parent = p47

          local textLabel3 = Instance.new("TextLabel")
          textLabel3.Size = UDim2.new(1, 0, 1, 0)
          textLabel3.BackgroundTransparency = 1
          textLabel3.TextColor3 = textColor3
          textLabel3.TextStrokeColor3 = Color3.new(0, 0, 0)
          textLabel3.TextStrokeTransparency = 0
          textLabel3.Font = Enum.Font.GothamBold
          textLabel3.TextScaled = false
          textLabel3.TextSize = v51.ESP.TextSize
          textLabel3.TextXAlignment = Enum.TextXAlignment.Center
          textLabel3.TextYAlignment = Enum.TextYAlignment.Center
          textLabel3.Text = p48
          textLabel3.Parent = billboardGui

          v53[p47] = billboardGui
        end)

        return
      end
    end
  end

  function f21()
    for key6 in pairs(v52) do
      f19(key6)
    end

    for key7 in pairs(v53) do
      f52(key7)
    end

    v52 = {}
    v53 = {}
  end

  function f52(p49)
    if v53[p49] then
      f6(function()
        if f4(v53[p49]) then
          v53[p49]:Destroy()
        end
      end)

      v53[p49] = nil
    end
  end

  function f53()
    for index40, value45 in ipairs(players:GetPlayers()) do
      if value45 ~= localPlayer and value45.Character and value45.Team then
        local name3 = value45.Team.Name

        if name3 == "Killer" and v51.ESP.Killer then
          f24(value45.Character, Color3.fromRGB(255, 0, 0))
          local v173 = v68.get(value45)

          f20(value45.Character, v173 and [[
[KILLER]
]] .. v173 or "[KILLER]", Color3.fromRGB(255, 0, 0))
        elseif name3 == "Survivors" and v51.ESP.Survivor then
          f24(value45.Character, Color3.fromRGB(0, 255, 0))
          f20(value45.Character, "[SURVIVOR]", Color3.fromRGB(0, 255, 0))
        else
          f19(value45.Character)
          f52(value45.Character)
        end
      end
    end
  end

  v69 = {
    names = {
      map = {
        Generator = true,
        Gate = true,
        Hook = true,
        Palletwrong = true,
      },
      ws = { Window = true },
    },
    interval = { map = 3, ws = 6 },
    last = { map = -1000000000, ws = -1000000000 },
    busy = { map = false, ws = false },
    data = {
      Generator = {},
      Gate = {},
      Hook = {},
      Palletwrong = {},
      Window = {},
    },
  }

  function v69.refresh(p50)
    local v174, v175

    if v69.busy[p50] then
      return
    else
      local busy = v69.busy
      busy[p50] = true

      local map3 = p50 == "ws" and workspace or workspace:FindFirstChild("Map")
      v174 = v69.names[p50]
      v175 = {}

      for key8 in pairs(v174) do
        v175[key8] = {}
      end

      if map3 then
        if not pcall(function()
          local getDescendants = map3:GetDescendants()
          local v176 = #getDescendants
          local count2 = 0

          while true do
            count2 = 1 + count2

            if not (count2 <= v176) then
              break
            end

            local v177 = count2

            if not v60 then
              return
            else
              local v178 = getDescendants[v177]

              if v178:IsA("Model") then
                local name4 = v178.Name

                if v174[name4] then
                  local v179 = v175[name4]
                  v179[#v179 + 1] = v178
                end
              end

              if v177 % 1500 == 0 then
                task.wait()
              end
            end
          end
        end) then
          v69.busy[p50] = false
          return
        end

        for key9, value46 in pairs(v175) do
          v69.data[key9] = value46
        end

        v69.busy[p50] = false
        return
      end

      for key10, value47 in pairs(v175) do
        v69.data[key10] = value47
      end

      v69.busy[p50] = false
      return
    end
  end

  function f22()
    if connect then
      connect:Disconnect()
      connect = nil
    end

    f21()
    v69.invalidate()
  end

  function v69.get(p51, p52)
    local v180 = p52 == workspace and "ws" or "map"
    local v181 = os.clock()

    if v181 - v69.last[v180] >= v69.interval[v180] and not v69.busy[v180] then
      v69.last[v180] = v181
      task.spawn(v69.refresh, v180)
    end

    return v69.data[p51] or {}
  end

  function f23(p53)
    for index41, value48 in ipairs(players:GetPlayers()) do
      if value48 ~= localPlayer and value48.Character and value48.Team
        and value48.Team.Name == p53 then
        f19(value48.Character)
        f52(value48.Character)
      end
    end
  end

  function v69.invalidate()
    v69.last.map = -1000000000
    v69.last.ws = -1000000000
  end

  function f54(p54, p55, p56, p57, p58)
    if not p54 then
      return
    end

    f6(function()
      for index42, value49 in ipairs(v69.get(p55, p58)) do
        if value49.Parent then
          f24(value49, p56)
          f20(value49, p57, p56)
        end
      end
    end)
  end

  function f55()
    if not v51.ESP.Hook then
      return
    end

    f6(function()
      local hook = v69.get("Hook")

      local function f65(p59, p60)
        local model = p59:FindFirstChild("Model")

        if model then
          for index43, value50 in ipairs(model:GetDescendants()) do
            if value50:IsA("MeshPart") then
              f24(value50, p60)
            end
          end
        end
      end

      if v51.ESP.ShowOnlyClosestHook then
        local v182 = f14()

        if not v182 then
          return
        end

        local v183 = nil
        local huge3 = math.huge

        for index44, value51 in ipairs(hook) do
          if value51.Parent then
            local basePart5 = value51:FindFirstChildWhichIsA("BasePart")

            if basePart5 then
              local magnitude4 = (basePart5.Position - v182.Position).Magnitude

              if magnitude4 < huge3 then
                v183 = value51
                huge3 = magnitude4
              end
            end

            f19(value51)
            f52(value51)
          end
        end

        if v183 then
          f65(v183, Color3.fromRGB(255, 255, 0))
          f20(v183, "CLOSEST HOOK", Color3.fromRGB(255, 255, 0))
        end

        return
      end

      for index45, value52 in ipairs(hook) do
        if value52.Parent then
          f65(value52, Color3.fromRGB(255, 0, 0))
          f20(value52, "Hook", Color3.fromRGB(255, 0, 0))
        end
      end
    end)
  end

  function f56()
    local v184 = tick()

    if v184 - v54 < v51.Performance.UpdateRate then
      return
    else
      v54 = v184
      local esp = v51.ESP

      if not (esp.Killer or esp.Survivor or esp.Generator or esp.Gate or esp.Hook or esp.Pallet
        or esp.Window) then
        return
      else
        local count3 = 0

        for key11, value53 in pairs(v52) do
          if not f4(key11) or not f4(value53) then
            v52[key11] = nil
          else
            count3 = count3 + 1
          end
        end

        for key12, value54 in pairs(v53) do
          if not f4(key12) or not f4(value54) then
            v53[key12] = nil
          end
        end

        if count3 >= v51.Performance.MaxESPObjects then
          return
        end

        f53()

        f54(v51.ESP.Generator, "Generator", Color3.fromRGB(203, 132, 66), "Generator")
        f54(v51.ESP.Gate, "Gate", Color3.fromRGB(255, 255, 255), "Gate")

        f55()

        f54(v51.ESP.Pallet, "Palletwrong", Color3.fromRGB(255, 255, 0), "Pallet")
        f54(v51.ESP.Window, "Window", Color3.fromRGB(173, 216, 230), "Window", workspace)

        return
      end
    end
  end

  function f57()
    if connect then
      return
    end

    connect = runService.Heartbeat:Connect(f56)
    f47("ESP Started", "ESP activated", 2)
  end

  function f58(p61, p62)
    local map4 = p62 or workspace:FindFirstChild("Map")

    if not map4 then
      return
    end

    for index46, value55 in ipairs(map4:GetDescendants()) do
      if value55:IsA("Model") and value55.Name == p61 then
        f19(value55)
        f52(value55)
      end
    end
  end

  v70 = false

  local v185, v186 = pcall(function()
    return v48:CreateWindow({
      Title = "Agoy Hub",
      Author = "Violence District | " .. (v31 and "Mobile" or "PC"),
      Icon = "shield",
      Theme = "Dark",
      Size = UDim2.fromOffset(580, 460),
      ToggleKey = Enum.KeyCode.K,
      Resizable = true,
      OpenButton = { Title = "Agoy Hub", Enabled = false, Draggable = true },
    })
  end)

  if not v185 or not v186 then
    local v187, v188 = pcall(function()
      return v48:CreateWindow({
        Title = "Agoy Hub",
        Author = "Violence District",
        ToggleKey = Enum.KeyCode.K,
      })
    end)

    v186 = v187 and v188 or nil

    if not v186 then
      warn("[AgoyHub] Gagal membuat window WindUI:", tostring(v185 and "window nil" or v186))
      return
    end
  end

  v59 = v186

  for index47, value56 in ipairs(f3()) do
    local v189 = value56

    pcall(function()
      for index48, value57 in ipairs(v189:GetChildren()) do
        if value57:IsA("ScreenGui") and not v44[value57] then
          local v190 = value57.Name:lower():find("windui", 1, true) ~= nil

          if not v190 then
            for index49, value58 in ipairs(value57:GetDescendants()) do
              if (value58:IsA("TextLabel") or value58:IsA("TextButton"))
                and value58.Text:find("Agoy Hub", 1, true) then
                v190 = true
                break
              end
            end
          end

          if v190 then
            v43[value57] = true
          end
        end
      end
    end)
  end

  pcall(function() v59:SetToggleKey(Enum.KeyCode.K) end)

  if v31 then
    pcall(function() v48:SetNotificationLower(true) end)
  end

  v50 = table.concat({
    "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",
  })

  function f28(p63)
    local base64decode = crypt and crypt.base64decode
      or crypt and crypt.base64 and (crypt.base64.decode or crypt.base64.decode)
      or base64_decode or base64 and (base64.decode or base64.Decode)

    if base64decode then
      local v191, v192 = pcall(base64decode, p63)

      if v191 and type(v192) == "string" and #v192 > 0 then
        return v192
      end
    end

    local v193 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local v194 = #v193
    local v195 = {}

    for k = 1, v194 do
      v195[v193:sub(k, k)] = k - 1
    end

    local v196 = 0
    local v197 = {}
    local v198 = #p63
    local v199 = 0

    for m = 1, v198 do
      local v200 = v195[p63:sub(m, m)]

      if v200 then
        v196 = v196 * 64 + v200
        v199 = v199 + 6

        if v199 >= 8 then
          v199 = v199 - 8
          local v201 = 2 ^ v199
          v197[#v197 + 1] = string.char(math.floor(v196 / v201))
          v196 = v196 % v201
        end
      end
    end

    return table.concat(v197)
  end

  v71 = {
    alwaysVisible = false,
    open = true,
    gui = nil,
    button = nil,
    conns = {},
  }

  function v71.getAsset()
    local v202 = getcustomasset or getsynasset

    if not (writefile and v202) then
      return nil
    else
      local v203, v204 = pcall(function()
        writefile("AgoyHub_logo.jpg", f28(v50))
        return v202("AgoyHub_logo.jpg")
      end)

      if v203 and type(v204) == "string" and v204 ~= "" then
        return v204
      end

      return nil
    end
  end

  function v71.refresh()
    if v71.button then
      local button = v71.button
      button.Visible = v71.alwaysVisible or not v71.open
    end
  end

  function v71.setOpen(p64)
    v71.open = p64 and true or false
    v71.refresh()
  end

  function v71.toggle()
    local v205

    if not v60 then
      return
    else
      local open = v71.open

      if open then
        v205 = pcall(function() v59:Close() end)
      else
        v205 = pcall(function() v59:Open() end)
      end

      if not v205 then
        v205 = pcall(function() v59:Toggle() end)
      end

      if v205 then
        v71.setOpen(not open)
      end

      return
    end
  end

  function v71.build()
    local agoyHubLogo, logo, v206, position3, position4, v207

    if v71.gui then
      return
    else
      agoyHubLogo = Instance.new("ScreenGui")
      agoyHubLogo.Name = "AgoyHubLogo"
      agoyHubLogo.ResetOnSpawn = false
      agoyHubLogo.IgnoreGuiInset = true
      agoyHubLogo.DisplayOrder = 999
      agoyHubLogo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

      if not pcall(function()
        if gethui then
          agoyHubLogo.Parent = gethui()
        else
          agoyHubLogo.Parent = coreGui
        end
      end) or not agoyHubLogo.Parent then
        pcall(function() agoyHubLogo.Parent = localPlayer:WaitForChild("PlayerGui") end)
      end

      local v208 = v31 and 60 or 54

      logo = Instance.new("ImageButton")
      logo.Name = "Logo"
      logo.AnchorPoint = Vector2.new(0.5, 0)
      logo.Position = UDim2.new(0.5, 0, 0, 8)
      logo.Size = UDim2.fromOffset(v208, v208)
      logo.BackgroundColor3 = Color3.fromRGB(14, 15, 20)
      logo.BackgroundTransparency = 0
      logo.AutoButtonColor = false
      logo.BorderSizePixel = 0
      logo.ScaleType = Enum.ScaleType.Fit
      logo.Visible = false
      logo.Parent = agoyHubLogo

      local uiCorner3 = Instance.new("UICorner")
      uiCorner3.CornerRadius = UDim.new(0.22, 0)
      uiCorner3.Parent = logo

      local uiStroke = Instance.new("UIStroke")
      uiStroke.Color = Color3.fromRGB(190, 200, 215)
      uiStroke.Thickness = 1.5
      uiStroke.Transparency = 0.15
      uiStroke.Parent = logo

      local v209 = v71.getAsset()

      if v209 then
        logo.Image = v209
      else
        local textLabel4 = Instance.new("TextLabel")
        textLabel4.Size = UDim2.fromScale(1, 1)
        textLabel4.BackgroundTransparency = 1
        textLabel4.Text = "A"
        textLabel4.TextColor3 = Color3.fromRGB(200, 210, 225)
        textLabel4.Font = Enum.Font.GothamBold
        textLabel4.TextScaled = true
        textLabel4.Parent = logo
      end

      v206 = nil
      position3 = nil
      position4 = nil
      v207 = false
      local inputBegan = logo.InputBegan

      table.insert(v71.conns, inputBegan:Connect(function(p65)
        local userInputType = p65.UserInputType

        if userInputType == Enum.UserInputType.MouseButton1
          or userInputType == Enum.UserInputType.Touch then
          v206 = p65
          position3 = p65.Position
          position4 = logo.Position
          v207 = false

          p65.Changed:Connect(function()
            if p65.UserInputState == Enum.UserInputState.End and v206 == p65 then
              v206 = nil

              if not v207 then
                v71.toggle()
              end
            end
          end)
        end
      end))

      local inputChanged2 = userInputService.InputChanged

      table.insert(v71.conns, inputChanged2:Connect(function(p66)
        if not v206 then
          return
        end

        if p66 == v206 or p66.UserInputType == Enum.UserInputType.MouseMovement then
          local v210 = not v207
          local v211 = p66.Position - position3

          if v210 and v211.Magnitude > 8 then
            v207 = true
          end

          if v207 then
            logo.Position = UDim2.new(
              position4.X.Scale, position4.X.Offset + v211.X, position4.Y.Scale,
              position4.Y.Offset + v211.Y
            )
          end
        end
      end))

      local mouseEnter = logo.MouseEnter
      table.insert(v71.conns, mouseEnter:Connect(function() v32.hoverLogo = true end))
      local mouseLeave = logo.MouseLeave
      table.insert(v71.conns, mouseLeave:Connect(function() v32.hoverLogo = false end))

      v71.gui = agoyHubLogo
      v71.button = logo
      v71.refresh()

      return
    end
  end

  function v71.destroy()
    v32.hoverLogo = false

    for index50, value59 in ipairs(v71.conns) do
      local v212 = value59
      pcall(function() v212:Disconnect() end)
    end

    v71.conns = {}

    if v71.gui then
      v71.gui:Destroy()
      v71.gui = nil
      v71.button = nil
    end
  end

  pcall(v71.build)
  pcall(v32.init)

  function f29(p67)
    if type(p67) == "table" then
      return p67.Title or p67[1]
    end

    return p67
  end

  function f25(p68, name5)
    pcall(function() p68:CreateLabel({ name = name5 }) end)
  end

  pcall(function()
    v59:OnClose(function()
      if v60 then
        pcall(v71.setOpen, false)
        v32.onHide()
      end
    end)
  end)

  pcall(function()
    v59:OnOpen(function()
      if v60 then
        pcall(v71.setOpen, true)
        v32.onShow()
      end
    end)
  end)

  function f30(p69)
    return function(...)
      if not v70 or not p69 then
        return
      end

      return p69(...)
    end
  end

  function f26(p70, name6)
    pcall(function() p70:CreateSection({ name = name6 }) end)
  end

  function f27(title, icon)
    local v213, tab = pcall(function() return v59:Tab({ Title = title, Icon = icon }) end)

    if not v213 or not tab then
      tab = v59:Tab({ Title = title })
    end

    local v214 = {}

    function v214:CreateToggle(p71)
      return tab:Toggle({
        Title = p71.name,
        Desc = p71.description,
        Value = p71.value or false,
        Callback = f30(p71.callback),
      })
    end

    function v214:CreateSlider(p72)
      local name7 = p72.name

      if p72.suffix then
        name7 = name7 .. " (" .. p72.suffix:gsub("^%s+", "") .. ")"
      end

      return tab:Slider({
        Title = name7,
        Step = p72.increment or 1,
        Value = { Min = p72.range[1], Max = p72.range[2], Default = p72.value },
        Callback = f30(p72.callback),
      })
    end

    function v214:CreateDropdown(p73)
      return tab:Dropdown({
        Title = p73.name,
        Desc = p73.description,
        Values = p73.options,
        Value = p73.value,
        Callback = f30(p73.callback),
      })
    end

    function v214:CreateButton(p74)
      return tab:Button({ Title = p74.name, Desc = p74.description, Callback = p74.callback })
    end

    function v214:CreateSection(p75)
      return tab:Section({ Title = p75.name, TextSize = 17 })
    end

    function v214:CreateLabel(p76)
      if not pcall(function() tab:Paragraph({ Title = p76.name }) end) then
        tab:Section({ Title = p76.name, TextSize = 14, FontWeight = Enum.FontWeight.Medium })
      end
    end

    return v214
  end

  local v215 = f27("Info", "info")
  f26(v215, "Agoy Hub")

  f25(v215, "Game: Violence District")
  f25(v215, "Platform: " .. (v31 and "Mobile" or "PC"))
  f25(v215, "Executor: " .. v27)
  f25(v215, "UI: WindUI")
  f25(v215, "Press K To Open/Close Ui On Pc")

  v72 = f27("ESP", "eye")
  f26(v72, "Player ESP")

  v72:CreateToggle({
    name = "Killer ESP (Red)",
    value = false,
    forgetState = true,
    callback = function(p77)
      v51.ESP.Killer = p77

      if p77 then
        v68.start()
        f57()
      else
        v68.stop()
        f23("Killer")
      end
    end,
  })

  v72:CreateToggle({
    name = "Survivor ESP (Green)",
    value = false,
    forgetState = true,
    callback = function(p78)
      v51.ESP.Survivor = p78

      if p78 then
        f57()
      else
        f23("Survivors")
      end
    end,
  })

  f26(v72, "Object ESP")

  function f31(name8, p79, p80, p81)
    v72:CreateToggle({
      name = name8,
      value = false,
      forgetState = true,
      callback = function(p82)
        v51.ESP[p79] = p82

        if p82 then
          f57()
        else
          pcall(f58, p80, p81)
        end
      end,
    })
  end

  f31("Generator ESP (Orange)", "Generator", "Generator")
  f31("Gate ESP (White)", "Gate", "Gate")
  f31("Hook ESP (Red)", "Hook", "Hook")

  v72:CreateToggle({
    name = "Show Only Closest Hook",
    value = false,
    forgetState = true,
    callback = function(p83)
      v51.ESP.ShowOnlyClosestHook = p83
      pcall(f58, "Hook")

      if v51.ESP.Hook then
        f55()
      end

      f47("Hook ESP", p83 and "Showing only closest hook" or "Showing all hooks", 2)
    end,
  })

  f31("Pallet ESP (Yellow)", "Pallet", "Palletwrong")
  f31("Window ESP (Light Blue)", "Window", "Window", workspace)

  f26(v72, "Settings")

  v72:CreateSlider({
    name = "ESP Text Size",
    range = { 8, 24 },
    increment = 1,
    value = 13,
    forgetState = true,
    callback = function(textSize)
      v51.ESP.TextSize = textSize

      for key13, value60 in pairs(v53) do
        local v216 = value60

        pcall(function()
          local textLabel5 = v216:FindFirstChild("TextLabel")

          if textLabel5 then
            textLabel5.TextSize = textSize
          end
        end)
      end
    end,
  })

  v72:CreateSlider({
    name = "Max Distance",
    range = { 100, 1000 },
    increment = 50,
    value = 500,
    suffix = " studs",
    forgetState = true,
    callback = function(maxDistance) v51.ESP.MaxDistance = maxDistance end,
  })

  v72:CreateSlider({
    name = "Update Rate",
    range = { 0.1, 2 },
    increment = 0.1,
    value = 0.5,
    suffix = " s",
    forgetState = true,
    callback = function(updateRate) v51.Performance.UpdateRate = updateRate end,
  })

  v72:CreateSlider({
    name = "Max ESP Objects",
    range = { 25, 500 },
    increment = 25,
    value = v31 and 50 or 100,
    forgetState = true,
    callback = function(maxESPObjects) v51.Performance.MaxESPObjects = maxESPObjects end,
  })

  v73 = {
    PlayerGui = localPlayer:WaitForChild("PlayerGui"),
    TouchID = 8822,
    ActionPath = "Survivor-mob.Controls.action.check",
    on = false,
    isProcessingHit = false,
  }

  function v73.getActionTarget()
    local playerGui4 = v73.PlayerGui

    for match in string.gmatch(v73.ActionPath, "[^%.]+") do
      playerGui4 = playerGui4 and playerGui4:FindFirstChild(match)
    end

    return playerGui4
  end

  function v73.triggerMobileButton()
    local v217, v218

    if not v60 then
      return
    else
      local v219 = v73.getActionTarget()

      if v219 and v219:IsA("GuiObject") then
        local absolutePosition = v219.AbsolutePosition
        local getGuiInset = guiService:GetGuiInset()
        local absoluteSize = v219.AbsoluteSize
        local y = absolutePosition.Y
        local y2 = absoluteSize.Y
        local y3 = getGuiInset.Y
        v217 = absolutePosition.X + absoluteSize.X / 2 + getGuiInset.X
        v218 = y + y2 / 2 + y3

        pcall(function()
          virtualInputManager:SendTouchEvent(v73.TouchID, 0, v217, v218)
          task.wait(0.002)
          virtualInputManager:SendTouchEvent(v73.TouchID, 2, v217, v218)
        end)
      else
        pcall(function()
          virtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
          task.wait(0.002)
          virtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        end)
      end

      return
    end
  end

  function v73.isSurvivorTeam()
    local team2 = localPlayer.Team
    local lower8 = team2 and team2.Name:lower() or ""

    if lower8:find("killer") then
      return false
    end

    if lower8:find("spectator") or lower8:find("lobby") or lower8 == "" then
      return false
    end

    return lower8:find("survivor") ~= nil
  end

  function v73.start()
    if v73.on then
      return
    end

    v73.on = true
    v73.isProcessingHit = false

    if _G.ASC_MainLoop then
      pcall(function() _G.ASC_MainLoop:Disconnect() end)
    end

    _G.ASC_MainLoop = runService.Heartbeat:Connect(function()
      if not v60 then
        return
      elseif not v73.isSurvivorTeam() then
        v73.isProcessingHit = false
        return
      else
        local skillCheckPromptGui = v73.PlayerGui:FindFirstChild("SkillCheckPromptGui")
        local check2 = skillCheckPromptGui and skillCheckPromptGui:FindFirstChild("Check")

        if not check2 or not check2.Visible or not check2.Parent then
          v73.isProcessingHit = false
          return
        else
          local line = check2:FindFirstChild("Line")
          local goal = check2:FindFirstChild("Goal")

          if not (line and goal) then
            return
          else
            local v220 = line.Rotation % 360
            local v221 = goal.Rotation % 360
            local v222 = (v221 + 102) % 360
            local v223 = (v221 + 116) % 360

            local v224 = v222 > v223 and (v220 >= v222 or v220 <= v223)
              or v220 >= v222 and v220 <= v223

            if not v224 and v73.isProcessingHit then
              v73.isProcessingHit = false
            end

            if v224 and not v73.isProcessingHit then
              v73.isProcessingHit = true
              v73.triggerMobileButton()
              task.delay(0.02, function() v73.isProcessingHit = false end)
            end

            return
          end
        end
      end
    end)
  end

  function v73.stop()
    v73.on = false
    v73.isProcessingHit = false

    if _G.ASC_MainLoop then
      pcall(function() _G.ASC_MainLoop:Disconnect() end)
      _G.ASC_MainLoop = nil
    end
  end

  function v65.getRemotes()
    local v225, v226 = pcall(function()
      local generator = replicatedStorage.Remotes.Generator
      return { repair = generator.RepairEvent, skill = generator.SkillCheckResultEvent }
    end)

    if v225 and v226 and v226.repair and v226.skill then
      return v226
    end

    return nil
  end

  function v65.release(p84)
    if not v60 then
      return
    end

    local v227 = v65.getRemotes()

    if not v227 or not p84 then
      return
    end

    for index51, value61 in ipairs(p84:GetChildren()) do
      local v228 = value61

      if v228.Name:find("GeneratorPoint") then
        pcall(function() v227.repair:FireServer(v228, false) end)
      end
    end
  end

  v74 = {
    on = false,
    LEAP_SPEED = 45,
    UPWARD_BOOST = 35,
    TIME_STEP = 0.08,
    MAX_TIME = 3,
    DASH_RANGE = 60,
    MAX_DOTS = 40,
    COLOR = Color3.fromRGB(255, 0, 127),
    dots = {},
    arcFolder = nil,
    dashFolder = nil,
    dashStartPart = nil,
    dashEndPart = nil,
    dashBeam = nil,
    conn = nil,
    rayParams = nil,
  }

  function v74.hideAll()
    if v74.dashBeam then
      v74.dashBeam.Transparency = NumberSequence.new(1)
    end

    for index52, value62 in ipairs(v74.dots) do
      value62.Transparency = 1
    end
  end

  function v74.build()
    v74.arcFolder = Instance.new("Folder")
    v74.arcFolder.Name = "LeapArcPreview"
    v74.arcFolder.Parent = workspace
    v74.dots = {}

    for n = 1, v74.MAX_DOTS do
      local part = Instance.new("Part")
      part.Shape = Enum.PartType.Ball
      part.Size = Vector3.new(0.4, 0.4, 0.4)
      part.Anchored = true
      part.CanCollide = false
      part.CanTouch = false
      part.CanQuery = false
      part.CastShadow = false
      part.Color = v74.COLOR
      part.Material = Enum.Material.Neon
      part.Transparency = 1
      part.Parent = v74.arcFolder

      table.insert(v74.dots, part)
    end

    v74.dashFolder = Instance.new("Folder")
    v74.dashFolder.Name = "DashPreview"
    v74.dashFolder.Parent = workspace

    local part2 = Instance.new("Part")
    part2.Anchored = true
    part2.CanCollide = false
    part2.CanTouch = false
    part2.CanQuery = false
    part2.Transparency = 1
    part2.Size = Vector3.new(0.1, 0.1, 0.1)
    part2.Parent = v74.dashFolder

    local clone = part2:Clone()
    clone.Parent = v74.dashFolder

    local beam = Instance.new("Beam")
    beam.Attachment0 = Instance.new("Attachment", part2)
    beam.Attachment1 = Instance.new("Attachment", clone)
    beam.Width0 = 0.15
    beam.Width1 = 0.15
    beam.Color = ColorSequence.new(v74.COLOR)
    beam.FaceCamera = true
    beam.Transparency = NumberSequence.new(1)
    beam.Parent = part2

    v74.dashStartPart = part2
    v74.dashEndPart = clone
    v74.dashBeam = beam
    v74.rayParams = RaycastParams.new()
    v74.rayParams.FilterType = Enum.RaycastFilterType.Exclude
  end

  function v74.update()
    local currentCamera2 = workspace.CurrentCamera
    local character2 = localPlayer.Character
    local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")

    if not (currentCamera2 and humanoidRootPart2) then
      return
    else
      local lookVector = currentCamera2.CFrame.LookVector
      local position5 = humanoidRootPart2.Position
      v74.rayParams.FilterDescendantsInstances = { character2, v74.arcFolder, v74.dashFolder }

      if lookVector.Y <= 0.1 then
        local raycast = workspace:Raycast(position5, lookVector * v74.DASH_RANGE, v74.rayParams)

        local position6 = raycast and raycast.Position
          or position5 + lookVector * v74.DASH_RANGE

        v74.dashStartPart.Position = position5
        v74.dashEndPart.Position = position6
        v74.dashBeam.Transparency = NumberSequence.new(0.6)
      else
        v74.dashBeam.Transparency = NumberSequence.new(1)
      end

      if lookVector.Y <= 0.1 then
        for index53, value63 in ipairs(v74.dots) do
          value63.Transparency = 1
        end

        return
      else
        local v229 = lookVector * v74.LEAP_SPEED + Vector3.new(0, v74.UPWARD_BOOST, 0)
        local vector2 = Vector3.new(0, -workspace.Gravity, 0)
        local v230 = 1
        local v231 = position5
        local v232 = false
        local maxTIME = v74.MAX_TIME
        local timeSTEP = v74.TIME_STEP
        local v233 = 0 > timeSTEP
        local v234 = 0 - timeSTEP

        while true do
          v234 = timeSTEP + v234

          if not (v233 and v234 >= maxTIME or not v233 and maxTIME >= v234) then
            break
          end

          local v235 = v234

          if v230 > v74.MAX_DOTS then
            break
          else
            local position7 = position5 + v229 * v235 + 0.5 * vector2 * (v235 * v235)

            if v230 > 1 then
              local raycast2 = workspace:Raycast(v231, position7 - v231, v74.rayParams)

              if raycast2 then
                v232 = true
                position7 = raycast2.Position
              end
            end

            local v236 = v74.dots[v230]
            v236.Position = position7
            v236.Transparency = 0.3

            v230 = v230 + 1
            v231 = position7

            if v232 then
              break
            end
          end
        end

        for i6 = v230, v74.MAX_DOTS do
          v74.dots[i6].Transparency = 1
        end

        return
      end
    end
  end

  function v74.start()
    if v74.on then
      return
    end

    v74.on = true
    v74.build()

    v74.conn = runService.RenderStepped:Connect(function()
      if not (v74.on and v60) then
        return
      else
        local v237, v238 = pcall(v74.update)

        if not v237 then
          warn("[AgoyHub] Trajectory error: " .. tostring(v238))
        end

        return
      end
    end)
  end

  function v74.stop()
    v74.on = false

    if v74.conn then
      v74.conn:Disconnect()
      v74.conn = nil
    end

    if v74.arcFolder then
      v74.arcFolder:Destroy()
      v74.arcFolder = nil
    end

    if v74.dashFolder then
      v74.dashFolder:Destroy()
      v74.dashFolder = nil
    end

    v74.dots = {}
    v74.dashStartPart = nil
    v74.dashEndPart = nil
    v74.dashBeam = nil
  end

  v75 = {
    on = false,
    held = false,
    activeInput = nil,
    smooth = 0.35,
    part = "HumanoidRootPart",
    target = nil,
    conns = {},
    bound = false,
  }

  function v75.enemyTeam()
    local team3 = localPlayer.Team

    if team3 and team3.Name == "Survivors" then
      return "Killer"
    end

    return nil
  end

  function v75.getPart(p85)
    if v75.part == "Head" then
      return p85:FindFirstChild("Head") or p85:FindFirstChild("HumanoidRootPart")
    end

    if v75.part == "Torso" then
      return p85:FindFirstChild("UpperTorso") or p85:FindFirstChild("Torso")
        or p85:FindFirstChild("HumanoidRootPart")
    end

    return p85:FindFirstChild("HumanoidRootPart")
  end

  function v75.validHrp(p86)
    if not p86 or p86 == localPlayer or not p86.Parent then
      return nil
    else
      local v239 = v75.enemyTeam()

      if not v239 or not p86.Team or p86.Team.Name ~= v239 then
        return nil
      else
        local character3 = p86.Character
        local v240 = character3 and v75.getPart(character3)
        local humanoid4 = character3 and character3:FindFirstChildOfClass("Humanoid")

        if v240 and humanoid4 and humanoid4.Health > 0 then
          return v240
        end

        return nil
      end
    end
  end

  function v75.pick()
    local currentCamera3 = workspace.CurrentCamera

    if not currentCamera3 then
      return nil
    else
      local v241 = f14()
      local position8 = v241 and v241.Position or currentCamera3.CFrame.Position
      local v242 = nil
      local v243 = nil

      for index54, value64 in ipairs(players:GetPlayers()) do
        local v244 = v75.validHrp(value64)

        if v244 then
          local v245 = { currentCamera3:WorldToViewportPoint(v244.Position) }

          if v245[2] then
            local v246 = not v243
            local magnitude5 = (v244.Position - position8).Magnitude

            if v246 or magnitude5 < v243 then
              v242 = value64
              v243 = magnitude5
            end
          end
        end
      end

      return v242
    end
  end

  function v75.overItemGui(p87)
    local playerGui5 = localPlayer:FindFirstChildOfClass("PlayerGui")

    if not playerGui5 then
      return false
    else
      local v247 = {}

      local survivor = playerGui5:FindFirstChild("Survivor")
        or playerGui5:FindFirstChild("Survivor-con")

      local gen = survivor and survivor:FindFirstChild("Gen")
      local itemFrame = gen and gen:FindFirstChild("ItemFrame")

      if itemFrame then
        table.insert(v247, itemFrame)
      end

      local survivorMob = playerGui5:FindFirstChild("Survivor-mob")

      local controls = survivorMob
      controls = survivorMob and survivorMob:FindFirstChild("Controls")

      if controls then
        for index55, value65 in ipairs(controls:GetChildren()) do
          if value65.Name == "Gui-mob" then
            table.insert(v247, value65)
          end
        end
      end

      if #v247 == 0 then
        return false
      else
        local v248, v249 = pcall(function()
          return playerGui5:GetGuiObjectsAtPosition(p87.X, p87.Y)
        end)

        if not v248 or not v249 then
          return false
        end

        for index56, value66 in ipairs(v249) do
          for index57, value67 in ipairs(v247) do
            if value66 == value67 or value66:IsDescendantOf(value67) then
              return true
            end
          end
        end

        return false
      end
    end
  end

  function v75.release()
    v75.held = false
    v75.activeInput = nil
    v75.target = nil
  end

  function v75.step()
    if not (v75.on and v60 and v75.held) then
      v75.target = nil
      return
    else
      local currentCamera4 = workspace.CurrentCamera

      if not currentCamera4 then
        return
      else
        local v250 = v75.validHrp(v75.target)

        if not v250 then
          v75.target = v75.pick()
          v250 = v75.validHrp(v75.target)
        end

        if not v250 then
          return
        else
          local position9 = currentCamera4.CFrame.Position

          if (v250.Position - position9).Magnitude < 0.001 then
            return
          end

          currentCamera4.CFrame = currentCamera4.CFrame:Lerp(CFrame.lookAt(
            position9, v250.Position
          ), v75.smooth)

          return
        end
      end
    end
  end

  function v75.start()
    if v75.on then
      return
    else
      v75.on = true
      v75.release()

      local inputBegan2 = userInputService.InputBegan

      table.insert(v75.conns, inputBegan2:Connect(function(p88)
        if not (v75.on and v60) then
          return
        else
          local userInputType2 = p88.UserInputType

          if userInputType2 == Enum.UserInputType.MouseButton2 then
            v75.held = true
            v75.activeInput = p88
          elseif userInputType2 == Enum.UserInputType.MouseButton1
            or userInputType2 == Enum.UserInputType.Touch then
            if v75.overItemGui(p88.Position) then
              v75.held = true
              v75.activeInput = p88
            end
          end

          return
        end
      end))

      local inputEnded = userInputService.InputEnded

      table.insert(v75.conns, inputEnded:Connect(function(p89)
        local activeInput = v75.activeInput

        if not activeInput then
          return
        end

        if p89 == activeInput
          or activeInput.UserInputType ~= Enum.UserInputType.Touch
            and p89.UserInputType == activeInput.UserInputType then
          v75.release()
        end
      end))

      if not v75.bound then
        v75.bound = true

        runService:BindToRenderStep(
          "AgoyAimlock", Enum.RenderPriority.Camera.Value + 1, v75.step
        )
      end

      return
    end
  end

  function v75.stop()
    v75.on = false
    v75.release()

    for index58, value68 in ipairs(v75.conns) do
      local v251 = value68
      pcall(function() v251:Disconnect() end)
    end

    v75.conns = {}

    if v75.bound then
      v75.bound = false
      pcall(function() runService:UnbindFromRenderStep("AgoyAimlock") end)
    end
  end

  v76 = {}

  v77 = {
    on = false,
    value = 90,
    MIN = 40,
    MAX = 120,
    orig = nil,
    bound = false,
  }

  function v77.step()
    if not (v77.on and v60) then
      return
    else
      local currentCamera5 = workspace.CurrentCamera

      if currentCamera5 and currentCamera5.FieldOfView ~= v77.value then
        currentCamera5.FieldOfView = v77.value
      end

      return
    end
  end

  function v77.setValue(p90)
    v77.value = math.clamp(p90, v77.MIN, v77.MAX)
  end

  function v77.start()
    if v77.on then
      return
    else
      local currentCamera6 = workspace.CurrentCamera

      v77.orig = currentCamera6 and currentCamera6.FieldOfView or 70
      v77.on = true

      if not v77.bound then
        v77.bound = true
        runService:BindToRenderStep("AgoyFOV", Enum.RenderPriority.Camera.Value + 2, v77.step)
      end

      return
    end
  end

  function v77.stop()
    v77.on = false

    if v77.bound then
      v77.bound = false
      pcall(function() runService:UnbindFromRenderStep("AgoyFOV") end)
    end

    local currentCamera7 = workspace.CurrentCamera

    if currentCamera7 and v77.orig then
      currentCamera7.FieldOfView = v77.orig
    end

    v77.orig = nil
  end

  v78 = {
    fullbright = false,
    nofog = false,
    conn = nil,
    origBright = nil,
    origFog = nil,
    origAtmo = setmetatable({}, { __mode = "k" }),
  }

  color = Color3.fromRGB(178, 178, 178)

  function f33(p91, p92, p93)
    if p91[p92] ~= p93 then
      p91[p92] = p93
    end
  end

  function v78.step()
    if not v60 then
      v78.stopLoop()
      return
    end

    if v78.fullbright then
      pcall(function()
        f33(lighting, "Brightness", 2)
        f33(lighting, "ClockTime", 14)
        f33(lighting, "GlobalShadows", false)
        f33(lighting, "Ambient", color)
        f33(lighting, "OutdoorAmbient", color)
      end)
    end

    if v78.nofog then
      pcall(function()
        f33(lighting, "FogStart", 0)
        f33(lighting, "FogEnd", 1000000000)

        for index59, value69 in ipairs(lighting:GetChildren()) do
          if value69:IsA("Atmosphere") then
            if not v78.origAtmo[value69] then
              v78.origAtmo[value69] = { Density = value69.Density, Haze = value69.Haze }
            end

            f33(value69, "Density", 0)
            f33(value69, "Haze", 0)
          end
        end
      end)
    end
  end

  function v78.startLoop()
    if v78.conn then
      return
    end

    v78.conn = runService.RenderStepped:Connect(v78.step)
  end

  function v78.stopLoop()
    if v78.conn then
      v78.conn:Disconnect()
      v78.conn = nil
    end
  end

  function v78.setFullbright(p94)
    if p94 == v78.fullbright then
      return
    end

    v78.fullbright = p94
    local origBright

    if p94 then
      pcall(function()
        v78.origBright = {
          Brightness = lighting.Brightness,
          ClockTime = lighting.ClockTime,
          GlobalShadows = lighting.GlobalShadows,
          Ambient = lighting.Ambient,
          OutdoorAmbient = lighting.OutdoorAmbient,
        }
      end)

      v78.startLoop()
    else
      origBright = v78.origBright
      v78.origBright = nil

      if origBright then
        pcall(function()
          for key14, value70 in pairs(origBright) do
            lighting[key14] = value70
          end
        end)
      end

      if not v78.nofog then
        v78.stopLoop()
      end
    end
  end

  function v78.setNoFog(p95)
    if p95 == v78.nofog then
      return
    end

    v78.nofog = p95
    local origFog

    if p95 then
      pcall(function()
        v78.origFog = { FogStart = lighting.FogStart, FogEnd = lighting.FogEnd }
      end)

      v78.startLoop()
    else
      origFog = v78.origFog
      v78.origFog = nil

      if origFog then
        pcall(function()
          lighting.FogStart = origFog.FogStart
          lighting.FogEnd = origFog.FogEnd
        end)
      end

      for key15, value71 in pairs(v78.origAtmo) do
        local v252 = key15
        local v253 = value71

        pcall(function()
          if v252.Parent then
            v252.Density = v253.Density
            v252.Haze = v253.Haze
          end
        end)
      end

      v78.origAtmo = setmetatable({}, { __mode = "k" })

      if not v78.fullbright then
        v78.stopLoop()
      end
    end
  end

  function v78.stopAll()
    pcall(v78.setFullbright, false)
    pcall(v78.setNoFog, false)
    v78.stopLoop()
  end

  local v254 = f27("Survivor", "gamepad-2")
  f26(v254, "Auto Parry (Parrying Dagger)")

  v254:CreateToggle({
    name = "Auto Parry",
    value = false,
    forgetState = true,
    callback = function(p96) v76.setEnabled(p96) end,
  })

  v254:CreateSlider({
    name = "Hitbox Trigger",
    range = { 1, 16 },
    increment = 1,
    value = 5,
    suffix = " studs",
    forgetState = true,
    callback = function(p97) v76.setRange(p97) end,
  })

  v254:CreateToggle({
    name = "Show Circle Hitbox Auto Parry",
    description = "Lingkaran merah di kaki karakter, radius = jarak hitbox",
    value = true,
    forgetState = true,
    callback = function(p98) v76.setCircle(p98) end,
  })

  f26(v254, "Generator")

  v254:CreateToggle({
    name = "Auto Perfect Skill Check (Repair Generator)",
    value = false,
    forgetState = true,
    callback = function(p99)
      if p99 then
        v73.start()
      else
        v73.stop()
      end

      f47("Auto Skill Check", p99 and "Enabled" or "Disabled", 2)
    end,
  })

  f26(v254, "Twist Of Fate")

  v254:CreateToggle({
    name = "Aimlock (Pistol)",
    value = false,
    forgetState = true,
    callback = function(p100)
      if p100 then
        v74.start()
        v75.start()
      else
        v74.stop()
        v75.stop()
      end

      f47("Aimlock", p100 and "Enabled" or "Disabled", 2)
    end,
  })

  v254:CreateDropdown({
    name = "Lock Method",
    options = { "HumanoidRootPart", "Badan" },
    value = "HumanoidRootPart",
    forgetState = true,
    callback = function(p101)
      local v255 = f29(p101)

      if v255 == "Badan" then
        v75.part = "Head"
        v75.target = nil
        return
      end

      if v255 == "HumanoidRootPart" then
        v75.part = "HumanoidRootPart"
        v75.target = nil
        return
      end
    end,
  })

  v254:CreateSlider({
    name = "Aimlock Smoothness",
    range = { 0.1, 1 },
    increment = 0.05,
    value = 0.35,
    forgetState = true,
    callback = function(smooth) v75.smooth = smooth end,
  })

  f26(v254, "Visual")

  v254:CreateToggle({
    name = "Full Bright",
    value = false,
    forgetState = true,
    callback = function(p102)
      v78.setFullbright(p102)
      v78.setNoFog(p102)
      f47("Fullbright + No Fog", p102 and "Enabled" or "Disabled", 2)
    end,
  })

  v254:CreateToggle({
    name = "Hide Nickname (Stream Proof)",
    value = false,
    forgetState = true,
    callback = function(p103)
      v67.setEnabled(p103)

      f47("Privacy", p103 and "Semua nama pemain disembunyikan (Private)"
        or "Nama pemain ditampilkan kembali", 3)
    end,
  })

  f26(v254, "Camera")

  v254:CreateToggle({
    name = "FOV Changer",
    description = "Ubah Jarak Kamera agar terlihat luas di mata survivor",
    value = false,
    forgetState = true,
    callback = function(p104)
      if p104 then
        v77.start()
      else
        v77.stop()
      end

      f47("FOV Changer", p104 and "Enabled: " .. v77.value or "Disabled", 2)
    end,
  })

  v254:CreateSlider({
    name = "FOV",
    range = { 40, 120 },
    increment = 1,
    value = 90,
    forgetState = true,
    callback = function(p105) v77.setValue(p105) end,
  })

  v79 = {
    on = false,
    aiming = false,
    shown = false,
    wasDown = false,
    charge = 0,
    chargeStart = 0,
    touch = nil,
    minVelocity = 90,
    maxVelocity = 210,
    maxChargeTime = 1.2,
    timeStep = 0.025,
    maxFlightTime = 3,
    startOffset = Vector3.new(0, -0.2, 1),
    radius = 0.4,
    poolSize = 60,
    container = nil,
    pool = {},
    dot = nil,
    conns = {},
  }

  function v79.clear()
    for index60, value72 in ipairs(v79.pool) do
      value72.Transparency = 1
    end

    if v79.dot then
      v79.dot.Transparency = 1
    end
  end

  function v79.build()
    v79.container = Instance.new("Folder")
    v79.container.Name = "VeilTrajectoryContainer"
    v79.container.Parent = workspace.Terrain
    v79.pool = {}

    for i7 = 1, v79.poolSize do
      local part3 = Instance.new("Part")
      part3.Anchored = true
      part3.CanCollide = false
      part3.CanTouch = false
      part3.CanQuery = false
      part3.CastShadow = false
      part3.Material = Enum.Material.Neon
      part3.Color = Color3.fromRGB(255, 0, 0)
      part3.Transparency = 1
      part3.Parent = v79.container

      table.insert(v79.pool, part3)
    end

    local part4 = Instance.new("Part")
    part4.Shape = Enum.PartType.Ball
    part4.Size = Vector3.new(0.6, 0.6, 0.6)
    part4.Material = Enum.Material.Neon
    part4.Color = Color3.fromRGB(255, 0, 0)
    part4.Anchored = true
    part4.CanCollide = false
    part4.CanTouch = false
    part4.CanQuery = false
    part4.CastShadow = false
    part4.Transparency = 1
    part4.Parent = v79.container

    v79.dot = part4
  end

  function v79.update()
    if not (v79.on and v60) then
      v79.clear()
      return
    else
      local isMouseButtonPressed = false

      if not (userInputService:GetFocusedTextBox() ~= nil) then
        isMouseButtonPressed = userInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
          or userInputService:IsKeyDown(Enum.KeyCode.Q)
      end

      if isMouseButtonPressed and not v79.wasDown then
        v79.shown = not v79.shown

        if v79.shown then
          v79.chargeStart = os.clock()
          v79.charge = 0
        end
      end

      v79.wasDown = isMouseButtonPressed

      if v79.shown and isMouseButtonPressed then
        v79.charge = math.min(os.clock() - v79.chargeStart, v79.maxChargeTime)
      end

      v79.aiming = v79.shown or v79.touch ~= nil

      if not v79.aiming then
        v79.clear()
        return
      else
        local currentCamera8 = workspace.CurrentCamera
        local v256 = not currentCamera8
        local character4 = localPlayer.Character

        if v256 or not character4 or not character4:FindFirstChild("HumanoidRootPart") then
          v79.clear()
          return
        else
          local pointToWorldSpace = currentCamera8.CFrame:PointToWorldSpace(v79.startOffset)

          local v257 = currentCamera8.CFrame.LookVector
            * (v79.minVelocity
              + (v79.maxVelocity - v79.minVelocity) * (v79.charge / v79.maxChargeTime))

          local vector3 = Vector3.new(0, -workspace.Gravity, 0)

          local raycastParams = RaycastParams.new()
          raycastParams.FilterDescendantsInstances = { character4, v79.container }
          raycastParams.FilterType = Enum.RaycastFilterType.Exclude

          local v258 = pointToWorldSpace
          local v259 = 0
          local v260 = 1

          while v259 < v79.maxFlightTime and v260 <= v79.poolSize do
            local v261 = v259 + v79.timeStep
            local v262 = pointToWorldSpace + v257 * v261 + 0.5 * vector3 * v261 ^ 2

            local spherecast = workspace:Spherecast(
              v258, v79.radius, v262 - v258, raycastParams
            )

            local position10 = spherecast and spherecast.Position or v262
            local magnitude6 = (position10 - v258).Magnitude

            local v263 = v79.pool[v260]
            v263.Size = Vector3.new(0.08, 0.08, math.max(magnitude6, 0.01))
            v263.CFrame = CFrame.lookAt(v258, position10) * CFrame.new(0, 0, -magnitude6 / 2)
            v263.Transparency = 0

            if spherecast then
              v79.dot.Position = position10
              v79.dot.Transparency = 0

              v260 = v260 + 1
              break
            end

            v258 = v262
            v259 = v261
            v260 = v260 + 1
          end

          local poolSize = v79.poolSize
          local v264 = v260 - 1

          while true do
            v264 = 1 + v264

            if not (v264 <= poolSize) then
              break
            end

            v79.pool[v264].Transparency = 1
          end

          return
        end
      end
    end
  end

  function v79.start()
    if v79.on then
      return
    else
      v79.on = true
      v79.aiming = false
      v79.shown = false
      v79.wasDown = false
      v79.charge = 0
      v79.touch = nil
      v79.build()

      local inputBegan3 = userInputService.InputBegan

      table.insert(v79.conns, inputBegan3:Connect(function(p106)
        if not (v79.on and v60) then
          return
        end

        if p106.UserInputType == Enum.UserInputType.Touch and not v79.touch then
          v79.touch = p106
        end
      end))

      local inputEnded2 = userInputService.InputEnded

      table.insert(v79.conns, inputEnded2:Connect(function(p107)
        if p107.UserInputType == Enum.UserInputType.Touch and p107 == v79.touch then
          v79.touch = nil
        end
      end))

      local renderStepped = runService.RenderStepped

      table.insert(v79.conns, renderStepped:Connect(function()
        local v265, v266 = pcall(v79.update)

        if not v265 then
          warn("[AgoyHub] Veil error: " .. tostring(v266))
        end
      end))

      return
    end
  end

  function v79.stop()
    v79.on = false
    v79.aiming = false
    v79.shown = false
    v79.wasDown = false
    v79.touch = nil

    for index61, value73 in ipairs(v79.conns) do
      local v267 = value73
      pcall(function() v267:Disconnect() end)
    end

    v79.conns = {}

    if v79.container then
      v79.container:Destroy()
      v79.container = nil
    end

    v79.pool = {}
    v79.dot = nil
  end

  v80 = {
    on = false,
    LEAP_SPEED = 45,
    UPWARD_BOOST = 35,
    TIME_STEP = 0.08,
    MAX_TIME = 3,
    DASH_RANGE = 60,
    MAX_DOTS = 40,
    COLOR = Color3.fromRGB(255, 0, 127),
    dots = {},
    arcFolder = nil,
    dashFolder = nil,
    startPart = nil,
    endPart = nil,
    beam = nil,
    conn = nil,
    rayParams = nil,
  }

  function v80.hideAll()
    if v80.beam then
      v80.beam.Transparency = NumberSequence.new(1)
    end

    for index62, value74 in ipairs(v80.dots) do
      value74.Transparency = 1
    end
  end

  function v80.build()
    v80.arcFolder = Instance.new("Folder")
    v80.arcFolder.Name = "HiddenLeapArcPreview"
    v80.arcFolder.Parent = workspace
    v80.dots = {}

    local maxDOTS = v80.MAX_DOTS
    local count4 = 0

    while true do
      count4 = 1 + count4

      if not (count4 <= maxDOTS) then
        break
      end

      local part5 = Instance.new("Part")
      part5.Shape = Enum.PartType.Ball
      part5.Size = Vector3.new(0.4, 0.4, 0.4)
      part5.Anchored = true
      part5.CanCollide = false
      part5.CanTouch = false
      part5.CanQuery = false
      part5.CastShadow = false
      part5.Color = v80.COLOR
      part5.Material = Enum.Material.Neon
      part5.Transparency = 1
      part5.Parent = v80.arcFolder

      table.insert(v80.dots, part5)
    end

    v80.dashFolder = Instance.new("Folder")
    v80.dashFolder.Name = "HiddenDashPreview"
    v80.dashFolder.Parent = workspace

    local part6 = Instance.new("Part")
    part6.Anchored = true
    part6.CanCollide = false
    part6.CanTouch = false
    part6.CanQuery = false
    part6.Transparency = 1
    part6.Size = Vector3.new(0.1, 0.1, 0.1)
    part6.Parent = v80.dashFolder

    local clone2 = part6:Clone()
    clone2.Parent = v80.dashFolder

    local beam2 = Instance.new("Beam")
    beam2.Attachment0 = Instance.new("Attachment", part6)
    beam2.Attachment1 = Instance.new("Attachment", clone2)
    beam2.Width0 = 0.15
    beam2.Width1 = 0.15
    beam2.Color = ColorSequence.new(v80.COLOR)
    beam2.FaceCamera = true
    beam2.Transparency = NumberSequence.new(1)
    beam2.Parent = part6

    v80.startPart = part6
    v80.endPart = clone2
    v80.beam = beam2
    v80.rayParams = RaycastParams.new()
    v80.rayParams.FilterType = Enum.RaycastFilterType.Exclude
  end

  function v80.update()
    local currentCamera9 = workspace.CurrentCamera
    local character5 = localPlayer.Character
    local humanoidRootPart3 = character5 and character5:FindFirstChild("HumanoidRootPart")

    if not (currentCamera9 and humanoidRootPart3) or not f5() then
      v80.hideAll()
      return
    else
      local lookVector2 = currentCamera9.CFrame.LookVector
      local position11 = humanoidRootPart3.Position
      v80.rayParams.FilterDescendantsInstances = { character5, v80.arcFolder, v80.dashFolder }

      if lookVector2.Y <= 0.1 then
        local raycast3 = workspace:Raycast(
          position11, lookVector2 * v80.DASH_RANGE, v80.rayParams
        )

        local position12 = raycast3 and raycast3.Position
          or position11 + lookVector2 * v80.DASH_RANGE

        v80.startPart.Position = position11
        v80.endPart.Position = position12
        v80.beam.Transparency = NumberSequence.new(0.6)

        for index63, value75 in ipairs(v80.dots) do
          value75.Transparency = 1
        end

        return
      else
        v80.beam.Transparency = NumberSequence.new(1)
        local v268 = lookVector2 * v80.LEAP_SPEED + Vector3.new(0, v80.UPWARD_BOOST, 0)
        local vector4 = Vector3.new(0, -workspace.Gravity, 0)
        local v269 = position11
        local v270 = 1
        local v271 = false
        local maxTIME2 = v80.MAX_TIME
        local timeSTEP2 = v80.TIME_STEP
        local v272 = timeSTEP2 < 0
        local v273 = 0 - timeSTEP2

        while true do
          v273 = timeSTEP2 + v273

          if not (v272 and maxTIME2 <= v273 or not v272 and maxTIME2 >= v273) then
            break
          end

          local v274 = v273

          if v270 > v80.MAX_DOTS then
            break
          else
            local position13 = position11 + v268 * v274 + 0.5 * vector4 * (v274 * v274)

            if v270 > 1 then
              local raycast4 = workspace:Raycast(v269, position13 - v269, v80.rayParams)

              if raycast4 then
                position13 = raycast4.Position
                v271 = true
              end
            end

            local v275 = v80.dots[v270]
            v275.Position = position13
            v275.Transparency = 0.3

            v269 = position13
            v270 = v270 + 1

            if v271 then
              break
            end
          end
        end

        for i8 = v270, v80.MAX_DOTS do
          v80.dots[i8].Transparency = 1
        end

        return
      end
    end
  end

  function v80.start()
    if v80.on then
      return
    end

    v80.on = true
    v80.build()

    v80.conn = runService.RenderStepped:Connect(function()
      if not (v80.on and v60) then
        return
      else
        local v276, v277 = pcall(v80.update)

        if not v276 then
          warn("[AgoyHub] Dash Line error: " .. tostring(v277))
        end

        return
      end
    end)
  end

  function v80.stop()
    v80.on = false

    if v80.conn then
      v80.conn:Disconnect()
      v80.conn = nil
    end

    if v80.arcFolder then
      v80.arcFolder:Destroy()
      v80.arcFolder = nil
    end

    if v80.dashFolder then
      v80.dashFolder:Destroy()
      v80.dashFolder = nil
    end

    v80.dots = {}
    v80.startPart = nil
    v80.endPart = nil
    v80.beam = nil
  end

  local v278 = f27("Killer", "swords")
  f26(v278, "Killer Powers")

  v278:CreateToggle({
    name = "Aim Line(Veil)",
    description = "Klik kanan (atau Q) di PC, kalau hilang tekan Q dan klik lagi untuk menyembunyikan. Mobile: tampil selama layar disentuh",
    value = false,
    forgetState = true,
    callback = function(p108)
      if p108 then
        v79.start()
      else
        v79.stop()
      end

      f47("Auto Aim (Veil)", p108 and "Enabled" or "Disabled", 2)
    end,
  })

  v278:CreateToggle({
    name = "Dash Line (Hidden)",
    value = false,
    forgetState = true,
    callback = function(p109)
      if p109 then
        v80.start()
      else
        v80.stop()
      end

      f47("Dash Line (Hidden)", p109 and "Enabled" or "Disabled", 2)
    end,
  })

  v278:CreateToggle({
    name = "Auto Attack Nearby Survivors",
    value = false,
    forgetState = true,
    callback = function(p110)
      v51.AutoFeatures.AutoAttack = p110

      if p110 then
        f18()
      else
        f9()
      end
    end,
  })

  v278:CreateSlider({
    name = "Auto Attack Range",
    range = { 5, 20 },
    increment = 1,
    value = 10,
    suffix = " studs",
    forgetState = true,
    callback = function(attackRange) v51.AutoFeatures.AttackRange = attackRange end,
  })

  v278:CreateButton({
    name = "Activate Killer Power",
    callback = function()
      f6(function()
        local remotes2 = replicatedStorage:FindFirstChild("Remotes")
        local killers = remotes2 and remotes2:FindFirstChild("Killers")
        local killer = killers and killers:FindFirstChild("Killer")
        local activatePower = killer and killer:FindFirstChild("ActivatePower")

        if activatePower then
          activatePower:FireServer()
          f47("Power", "Killer power triggered", 2)
        end
      end)
    end,
  })

  v278:CreateButton({
    name = "Basic Attack (Killer)",
    callback = function()
      f6(function()
        if f17() then
          f47("Attack", "Basic attack executed", 2)
        end
      end)
    end,
  })

  local v279 = f27("Teleport", "map-pin")
  f26(v279, "Generator Teleportation")

  v279:CreateButton({
    name = "Teleport to Closest Generator",
    callback = function()
      local v280 = v62()

      if #v280 == 0 then
        f47("Not Found", "No generators found on the map", 3)
        return
      else
        local v281 = v280[1]

        if v63(v281.part.CFrame) then
          f47("Teleported!", string.format("Closest generator (%.0fm)", v281.distance), 3)
        end

        return
      end
    end,
  })

  v279:CreateButton({
    name = "Teleport to Farthest Generator",
    callback = function()
      local v282 = v62()

      if #v282 == 0 then
        f47("Not Found", "No generators found on the map", 3)
        return
      else
        local v283 = v282[#v282]

        if v63(v283.part.CFrame) then
          f47("Teleported!", string.format("Farthest generator (%.0fm)", v283.distance), 3)
        end

        return
      end
    end,
  })

  v279:CreateButton({
    name = "Teleport Through All Generators",
    callback = function()
      local v284 = v62()

      if #v284 == 0 then
        f47("Not Found", "No generators found on the map", 3)
        return
      end

      f47("Starting", "Teleporting through " .. #v284 .. " generators...", 3)

      task.spawn(function()
        for index64, value76 in ipairs(v284) do
          if not f14() then
            break
          end

          v63(value76.part.CFrame)

          f47(
            "Generator " .. index64,
            string.format("At %d/%d (%.0fm)", index64, #v284, value76.distance), 2
          )

          task.wait(v51.Teleportation.TeleportDelay)
        end

        f47("Complete!", "Visited all generators", 3)
      end)
    end,
  })

  v279:CreateButton({
    name = "Show Generator List (Console)",
    callback = function()
      local v285 = v62()

      if #v285 == 0 then
        f47("Not Found", "No generators found", 3)
        return
      end

      print("\n=== GENERATOR LIST ===")

      for index65, value77 in ipairs(v285) do
        print(string.format(
          "%d. Generator at %.0fm - %s", index65, value77.distance, tostring(value77.position)
        ))
      end

      print([[
======================
]])

      f47("List Printed", "Found " .. #v285 .. " generators - check console (F9)", 3)
    end,
  })

  f26(v279, "Other Teleports")

  v279:CreateButton({
    name = "Teleport to Nearest Gate",
    callback = function()
      local v286 = f14()

      if not v286 then
        f47("Error", "Character not found", 3)
        return
      else
        local map5 = workspace:FindFirstChild("Map")

        if not map5 then
          f47("Error", "Map not found", 3)
          return
        else
          local v287 = nil
          local huge4 = math.huge

          for index66, value78 in ipairs(map5:GetDescendants()) do
            if value78:IsA("Model") and value78.Name == "Gate" then
              local basePart6 = value78:FindFirstChildWhichIsA("BasePart")

              if basePart6 then
                local magnitude7 = (basePart6.Position - v286.Position).Magnitude

                if magnitude7 < huge4 then
                  v287 = basePart6
                  huge4 = magnitude7
                end
              end
            end
          end

          if v287 then
            v63(v287.CFrame)
            f47("Teleported", string.format("Gate (%.0fm)", huge4), 3)
          else
            f47("Not Found", "No gates found", 3)
          end

          return
        end
      end
    end,
  })

  v279:CreateButton({
    name = "Escape Game (Survivor Only)",
    callback = function()
      if not f7() then
        f47("Error", "You must be a Survivor to use this!", 3)
        return
      elseif not f14() then
        f47("Error", "Character not found", 3)
        return
      else
        local map6 = workspace:FindFirstChild("Map")

        if not map6 then
          f47("Error", "Map not found", 3)
          return
        else
          local v288 = nil

          for index67, value79 in ipairs(map6:GetDescendants()) do
            if value79:IsA("Model") and value79.Name == "Gate" then
              v288 = value79
              break
            end
          end

          if not v288 then
            f47("Error", "No gates found on map", 3)
            return
          else
            local escape = v288:FindFirstChild("Escape")

            local basePart7 = escape
            basePart7 = escape or v288:FindFirstChildWhichIsA("BasePart")

            if not basePart7 then
              f47("Error", "Could not find escape zone", 3)
              return
            end

            v63(basePart7.CFrame, Vector3.new(0, 5, 0))
            task.wait(0.5)

            f6(function()
              local remotes3 = replicatedStorage:FindFirstChild("Remotes")
              local gate = remotes3 and remotes3:FindFirstChild("Gate")
              local escape2 = gate and gate:FindFirstChild("Escape")

              if escape2 then
                escape2:FireServer()
              end
            end)

            f47("Escape!", "Teleported to exit gate - walk through to escape!", 4)
            return
          end
        end
      end
    end,
  })

  f26(v279, "Teleport Settings")

  v279:CreateSlider({
    name = "Teleport Height Offset",
    range = { 0, 10 },
    increment = 1,
    value = 3,
    suffix = " studs",
    forgetState = true,
    callback = function(teleportOffset) v51.Teleportation.TeleportOffset = teleportOffset end,
  })

  v279:CreateSlider({
    name = "Multi-Teleport Delay",
    range = { 0.1, 5 },
    increment = 0.1,
    value = 0.1,
    suffix = " s",
    forgetState = true,
    callback = function(teleportDelay) v51.Teleportation.TeleportDelay = teleportDelay end,
  })

  v279:CreateToggle({
    name = "Safe Teleport (Disable Collision)",
    value = true,
    forgetState = true,
    callback = function(safeTeleport) v51.Teleportation.SafeTeleport = safeTeleport end,
  })

  v81 = f27("Settings", "settings")
  f26(v81, "Performance")

  function f32(name9, p111, p112, p113, p114)
    v81:CreateToggle({
      name = name9,
      value = p114 or false,
      forgetState = true,
      callback = function(p115)
        v51.Performance[p111] = p115
        f13()
        f47("Performance", p115 and p112 or p113, 2)
      end,
    })
  end

  f32(
    "Disable Particles & Effects", "DisableParticles", "Particles disabled", "Particles enabled"
  )

  f32("Lower Graphics Quality", "LowerGraphics", "Graphics lowered", "Graphics reset")
  f32("Disable Shadows", "DisableShadows", "Shadows disabled", "Shadows enabled")

  f32(
    "Reduce Render Distance", "ReduceRenderDistance", "Render distance reduced",
    "Render distance normal"
  )

  v81:CreateToggle({
    name = "Use Distance Culling (ESP)",
    value = true,
    forgetState = true,
    callback = function(useDistanceCulling)
      v51.Performance.UseDistanceCulling = useDistanceCulling
    end,
  })

  v81:CreateButton({
    name = "Apply All Performance Boosts",
    callback = function()
      v51.Performance.DisableParticles = true
      v51.Performance.LowerGraphics = true
      v51.Performance.DisableShadows = true
      v51.Performance.ReduceRenderDistance = true
      v51.Performance.UseDistanceCulling = true

      f13()
      f47("Performance", "All performance boosts applied!", 3)
    end,
  })

  v81:CreateButton({
    name = "Reset Performance Settings",
    callback = function()
      v51.Performance.DisableParticles = false
      v51.Performance.LowerGraphics = false
      v51.Performance.DisableShadows = false
      v51.Performance.ReduceRenderDistance = false

      f15()
      f47("Performance", "Settings reset to default", 2)
    end,
  })

  if v31 then
    f26(v81, "Mobile Controls")

    v81:CreateToggle({
      name = "Enable Touch Controls",
      value = true,
      forgetState = true,
      callback = function(p116)
        if p116 and not v55 then
          f12()
        elseif not p116 and v55 then
          v55:Destroy()
          v55 = nil
        end
      end,
    })

    v81:CreateSlider({
      name = "Button Size",
      range = { 60, 120 },
      increment = 10,
      value = 80,
      forgetState = true,
      callback = function(buttonSize)
        v51.Mobile.ButtonSize = buttonSize

        if v55 then
          v55:Destroy()
          v55 = nil
          f12()
        end
      end,
    })

    v81:CreateSlider({
      name = "Button Transparency",
      range = { 0, 0.8 },
      increment = 0.1,
      value = 0.3,
      forgetState = true,
      callback = function(p117)
        v51.Mobile.ButtonTransparency = p117

        if v55 then
          for index68, value80 in ipairs(v55:GetChildren()) do
            if value80:IsA("TextButton") then
              value80.BackgroundTransparency = p117
            end
          end
        end
      end,
    })

    f26(v81, "Mobile Performance Boost")

    v81:CreateToggle({
      name = "Auto Mobile Optimization",
      value = true,
      forgetState = true,
      callback = function(p118)
        v51.Mobile.AutoOptimize = p118

        if p118 then
          f48()
          f47("Mobile Optimization", "Basic optimizations applied", 3)
        else
          f15()
          f47("Mobile Optimization", "Optimizations reset", 2)
        end
      end,
    })

    v81:CreateToggle({
      name = "ULTRA Performance Mode (Aggressive)",
      value = false,
      forgetState = true,
      callback = function(p119)
        v51.Mobile.AggressiveOptimization = p119

        if p119 then
          f16()
          f47("ULTRA MODE", "Maximum FPS boost (lower graphics)", 4)
        else
          f15()

          if v51.Mobile.AutoOptimize then
            f48()
          end

          f47("ULTRA MODE", "Disabled - graphics restored", 2)
        end
      end,
    })

    v81:CreateButton({
      name = "Apply All Mobile Optimizations NOW",
      callback = function()
        v51.Performance.DisableParticles = true
        v51.Performance.LowerGraphics = true
        v51.Performance.DisableShadows = true
        v51.Performance.ReduceRenderDistance = true
        v51.Performance.UseDistanceCulling = true
        v51.Performance.UpdateRate = 1
        v51.Performance.MaxESPObjects = 25

        f16()
        f47("Optimizations", "Maximum mobile performance applied", 5)
      end,
    })

    v81:CreateButton({
      name = "Reset All Optimizations",
      callback = function()
        v51.Performance.DisableParticles = false
        v51.Performance.LowerGraphics = false
        v51.Performance.DisableShadows = false
        v51.Performance.ReduceRenderDistance = false
        v51.Performance.UpdateRate = 0.5
        v51.Performance.MaxESPObjects = 50
        v51.Mobile.AutoOptimize = false
        v51.Mobile.AggressiveOptimization = false

        f15()
        f47("Reset Complete", "All settings restored to default", 3)
      end,
    })
  end

  f26(v81, "Display")

  v81:CreateToggle({
    name = "Show FPS Counter",
    value = false,
    forgetState = true,
    callback = function(p120)
      if p120 then
        f8()
      else
        f10()
      end
    end,
  })

  f26(v81, "Script Controls")

  v81:CreateButton({
    name = "Clear All ESP",
    callback = function()
      f21()
      f47("Cleared", "All ESP cleared", 2)
    end,
  })

  v81:CreateButton({
    name = "Refresh ESP",
    callback = function()
      f21()
      v54 = 0
      f56()
      f47("Refreshed", "ESP refreshed", 2)
    end,
  })

  v82 = false

  function f59()
    if v82 then
      return
    end

    v82 = true
    v60 = false

    v51.AutoFeatures.AutoAttack = false
    v51.AutoFeatures.AutoGenerator = false

    pcall(function()
      if connect2 then
        connect2:Disconnect()
        connect2 = nil
      end
    end)

    pcall(v73.stop)
    pcall(v64)
    pcall(v67.setEnabled, false)
    pcall(v68.stop)

    pcall(function()
      if v32.track then
        v32.track:Disconnect()
        v32.track = nil
      end
    end)

    pcall(v32.unbindAll)
    pcall(function() userInputService.MouseIconEnabled = v32.initialIcon end)
    pcall(v74.stop)
    pcall(v75.stop)
    pcall(v80.stop)
    pcall(v79.stop)
    pcall(v71.destroy)
    pcall(f22)
    pcall(f15)
    pcall(v78.stopAll)
    pcall(f10)

    pcall(function()
      if v55 then
        v55:Destroy()
        v55 = nil
      end
    end)

    pcall(function() v59:Destroy() end)

    if v26.AgoyHub_Unload == f59 then
      v26.AgoyHub_Unload = nil
    end
  end

  v26.AgoyHub_Unload = f59

  v83 = {
    ["111920872708571"] = "attack",
    ["106871536134254"] = "attackalex",
    ["130593238885843"] = "attackcobra",
    ["138720291317243"] = "attacktony / lungeholdtony",
    ["105374834496520"] = "lungehold",
    ["117070354890871"] = "lungeholdalex",
    ["115244153053858"] = "lungeholdcobra",
    ["139369275981139"] = "attack (M1)",
    ["110355011987939"] = "lungehold (hold M1)",
    ["121216847022485"] = "attack (M1)",
    ["135002183282873"] = "lungehold (hold M1)",
    ["78432063483146"] = "attack (M1)",
    ["77081789642514"] = "attack2 (M1 carry)",
    ["118907603246885"] = "lungehold (hold M1)",
    ["80411309607666"] = "slash (Abyss)",
    ["74968262036854"] = "attack (M1)",
    ["82666958311998"] = "attackfr",
    ["113255068724446"] = "lungehold (hold M1)",
    ["132817836308238"] = "attack (M1)",
    ["129784271201071"] = "lungehold (hold M1)",
    ["133963973694098"] = "attack (M1)",
    ["117042998468241"] = "lungehold (hold M1)",
  }

  v84 = {}
  v85 = false
  v86 = 5
  v87 = true
  v88 = 0
  v89 = {}
  v90 = {}
  connect3 = nil
  connect4 = nil
  agoyParryRing = nil
  connect5 = nil
  v91 = nil

  function f60()
    if v91 and v91.Parent then
      return v91
    else
      local v289, v290 = pcall(function()
        return replicatedStorage.Remotes.Items["Parrying Dagger"].parry
      end)

      if v289 and v290 then
        v91 = v290
      end

      return v91
    end
  end

  v92 = {}
  v93 = {}
  v94 = {}

  for index69, value81 in ipairs(({
    {
      label = "Animasi 1 (Action + Action2)",
      parts = { { "127096285501517", "Action" }, { "104952902180174", "Action2" } },
    },
    {
      label = "Animasi 2 (Action + Action3)",
      parts = { { "81793464499285", "Action" }, { "72219761917132", "Action3" } },
    },
    { label = "Animasi 3 (Action)", parts = { { "109133187196613", "Action" } } },
    {
      label = "Animasi 4 (Action + Action2)",
      parts = { { "123307242865945", "Action" }, { "110658358342373", "Action2" } },
    },
    {
      label = "Animasi 5 (Action + Action2)",
      parts = { { "75939529748815", "Action" }, { "87949804702801", "Action2" } },
    },
  })[1].parts) do
    v94[value81[1]] = true
    v92[value81[1]] = Enum.AnimationPriority[value81[2]]
    v93[value81[1]] = index69 == 1 and 1 or 2
  end

  v95 = 0
  v96 = nil
  v97 = {}

  v98 = {
    ["85030641905220"] = true,
    ["73923929500477"] = true,
    ["72742711718023"] = true,
    ["102055678391920"] = true,
    ["75857500533792"] = true,
    ["123047897844134"] = true,
  }

  v99 = {}
  v100 = nil

  function f34(p121, p122)
    if not p121 then
      return false
    elseif p122 and (v98[p122] or v97[p122]) then
      return true
    else
      local lower9 = p121.Name:lower()

      if lower9:find("wallhit") or lower9:find("vault") then
        return false
      end

      return lower9:find("parried") ~= nil or lower9:find("stun") ~= nil
    end
  end

  v101 = { on = true, token = 0 }
  color3 = Color3.fromRGB(77, 77, 77)
  color2 = Color3.fromRGB(255, 255, 255)

  function v101.gradients()
    local v291 = {}
    local playerGui6 = localPlayer:FindFirstChildOfClass("PlayerGui")

    if not playerGui6 then
      return v291
    else
      local survivor2 = playerGui6:FindFirstChild("Survivor")
        or playerGui6:FindFirstChild("Survivor-con")

      local gen2 = survivor2 and survivor2:FindFirstChild("Gen")
      local itemFrame2 = gen2 and gen2:FindFirstChild("ItemFrame")
      local gui = itemFrame2 and itemFrame2:FindFirstChild("Gui")
      local bar = gui and gui:FindFirstChild("Bar")
      local uiGradient = bar and bar:FindFirstChild("UIGradient")

      if uiGradient then
        table.insert(v291, uiGradient)
      end

      local survivorMob2 = playerGui6:FindFirstChild("Survivor-mob")

      local controls2 = survivorMob2
      controls2 = survivorMob2 and survivorMob2:FindFirstChild("Controls")

      if controls2 then
        for index70, value82 in ipairs(controls2:GetChildren()) do
          if value82.Name == "Gui-mob" then
            local bar2 = value82:FindFirstChild("Bar")
            local uiGradient2 = bar2 and bar2:FindFirstChild("UIGradient")

            if uiGradient2 then
              table.insert(v291, uiGradient2)
            end
          end
        end
      end

      return v291
    end
  end

  function v101.setColor(imageColor3)
    for index71, value83 in ipairs(v101.gradients()) do
      local parent = value83.Parent and value83.Parent.Parent

      if parent then
        local icon2 = parent:FindFirstChild("icon")

        if icon2 then
          icon2.ImageColor3 = imageColor3
        end

        local parent2 = parent.Parent

        local gui2 = parent2
        gui2 = parent2 and parent2:FindFirstChild("Gui")

        if gui2 then
          gui2.ImageColor3 = imageColor3
        end
      end
    end
  end

  function v101.ready()
    v101.token = v101.token + 1

    for index72, value84 in ipairs(v101.gradients()) do
      value84.Offset = Vector2.new(0, 0.25)
    end

    v101.setColor(color2)
  end

  function v101.pressed()
    if not v101.on then
      return
    end

    v101.token = v101.token + 1
    local token2 = v101.token
    v101.setColor(color3)

    task.delay(3, function()
      if v101.token == token2 then
        v101.setColor(color2)
      end
    end)
  end

  function v101.cooldown(p123)
    if not v101.on then
      return
    end

    v101.token = v101.token + 1
    local token3 = v101.token
    v101.setColor(color3)

    for index73, value85 in ipairs(v101.gradients()) do
      value85.Offset = Vector2.new(0, 0.75)

      tweenService:Create(value85, TweenInfo.new(p123, Enum.EasingStyle.Linear), {
        Offset = Vector2.new(0, 0.25),
      }):Play()
    end

    task.delay(p123, function()
      if v101.token == token3 then
        v101.setColor(color2)
      end
    end)
  end

  function f43()
    local character6 = localPlayer.Character
    local humanoid5 = character6 and character6:FindFirstChildOfClass("Humanoid")

    if not humanoid5 then
      return nil
    else
      local animator2 = humanoid5:FindFirstChildOfClass("Animator")

      if not animator2 then
        animator2 = Instance.new("Animator")
        animator2.Parent = humanoid5
      end

      return animator2
    end
  end

  function f35(p124)
    if next(v94) == nil then
      return
    end

    local v292 = v102()

    if not v292 then
      return
    end

    if v292 ~= v100 then
      v100 = v292
      v99 = {}
    end

    for key16 in pairs(v94) do
      local v293 = key16

      if (v93[v293] or 1) ~= (p124 or 1) then
      else
        local v294 = v99[v293]

        if not v294 then
          local animation2 = Instance.new("Animation")
          animation2.AnimationId = "rbxassetid://" .. v293

          local v295, v296 = pcall(function() return v292:LoadAnimation(animation2) end)

          if v295 and v296 then
            pcall(function() v296.Priority = v92[v293] or Enum.AnimationPriority.Action4 end)
            v99[v293] = v296
            v294 = v296
          end
        end

        if v294 then
          pcall(function() v294:Play(0.05) end)
        end
      end
    end

    task.delay(0.3, function() end)
  end

  v102 = f43

  function f36(p125)
    if not v96 then
      return
    else
      v96 = nil
      local v297 = os.clock()

      if p125 then
        pcall(f35, 2)
        v95 = v297 + 90
        pcall(v101.cooldown, 90)
        f47("Parry Berhasil", "Cooldown 90 detik", 3)
      else
        v95 = v297 + 60
        pcall(v101.cooldown, 60)
        f47("Parry Gagal", "Cooldown 60 detik", 3)
      end

      return
    end
  end

  v103 = {
    enabled = false,
    debug = true,
    repairing = false,
    repairPoint = nil,
    hookInstalled = false,
    repairEvent = nil,
    remoteUntil = 0,
    remoteReason = nil,
    cached = false,
    reason = nil,
    lastCheck = 0,
    lastReason = nil,
    lastDump = 0,
    seenAnims = {},
    seenRemotes = {},
    diag = { speed = 0, gen = math.huge, hook = math.huge },
    monitor = nil,
    animConn = nil,
    charConn = nil,
    objTime = 0,
    gens = {},
    hooks = {},
    repairDistance = 25,
    nearGen = 6,
    nearHook = 6,
    stillSpeed = 1.5,
    animKeywords = {
      { "repair", "repair generator" }, { "generator", "repair generator" },
      { "unhook", "unhook" }, { "hook", "kena hook" }, { "rescue", "unhook" },
      { "sacrifice", "kena hook" }, { "carried", "dibawa killer" },
    },
    attrNames = {
      { "Repairing", "repair generator" }, { "IsRepairing", "repair generator" },
      { "Hooked", "kena hook" }, { "IsHooked", "kena hook" }, { "Unhooking", "unhook" },
      { "IsUnhooking", "unhook" },
    },
    remoteKeywords = { { "unhook", "unhook" }, { "rescue", "unhook" }, { "hook", "hook" } },
  }

  function v103.installHook()
    if v103.hookInstalled then
      return true
    end

    if not (hookmetamethod and getnamecallmethod and newcclosure) then
      return false
    else
      local v298 = v65.getRemotes()
      v103.repairEvent = v298 and v298.repair or nil

      local v299 = pcall(function()
        local v300

        v300 = hookmetamethod(game, "__namecall", newcclosure(function(p126, ...)
          local v301 = { ... }
          local v302 = getnamecallmethod()

          if v60 and v103.enabled and v302 == "FireServer" then
            if p126 == v103.repairEvent then
              local v303 = v301[2]
              local repairPoint = v301[1]

              if v303 == true then
                v103.repairPoint = repairPoint
                v103.repairing = true
              elseif v303 == false then
                v103.repairing = false
                v103.repairPoint = nil
              end
            else
              pcall(function()
                local lower10 = p126.Name:lower()

                if v103.debug and not v103.seenRemotes[lower10] then
                  v103.seenRemotes[lower10] = true
                  print("[AgoyHub] Parry-state: remote keluar -> " .. p126:GetFullName())
                end

                for index74, value86 in ipairs(v103.remoteKeywords) do
                  if lower10:find(value86[1], 1, true) then
                    v103.remoteUntil = os.clock() + 4
                    v103.remoteReason = value86[2] .. " (remote " .. p126.Name .. ")"
                    break
                  end
                end
              end)
            end
          end

          if setnamecallmethod then
            setnamecallmethod(v302)
          end

          return v300(p126, unpack(v301))
        end))
      end)

      v103.hookInstalled = v299
      return v299
    end
  end

  function v103.reset()
    v103.repairing = false
    v103.repairPoint = nil
    v103.remoteUntil = 0
    v103.cached = false
    v103.reason = nil
    v103.lastReason = nil
  end

  function v103.pointPosition(p127)
    if not p127 then
      return nil
    end

    local position14 = nil

    pcall(function()
      if p127:IsA("BasePart") then
        position14 = p127.Position
      elseif p127:IsA("Attachment") then
        position14 = p127.WorldPosition
      elseif p127:IsA("Model") then
        position14 = p127:GetPivot().Position
      elseif p127.Parent and p127.Parent:IsA("Model") then
        position14 = p127.Parent:GetPivot().Position
      end
    end)

    return position14
  end

  function v103.refreshObjects()
    local v304 = os.clock()

    if v304 - v103.objTime < 3 then
      return
    else
      v103.objTime = v304
      local v305 = {}
      local v306 = {}
      local map7 = workspace:FindFirstChild("Map")

      if map7 then
        for index75, value87 in ipairs(map7:GetDescendants()) do
          local v307 = value87

          if v307:IsA("Model") and (v307.Name == "Generator" or v307.Name == "Hook") then
            local v308, v309, v310 = pcall(function() return v307:GetBoundingBox() end)

            if v308 and v309 and v310 then
              local v311 = { model = v307, cf = v309, size = v310 }

              if v307.Name == "Generator" then
                v305[#v305 + 1] = v311
              else
                v306[#v306 + 1] = v311
              end
            end
          end
        end
      end

      v103.gens = v305
      v103.hooks = v306

      return
    end
  end

  function v103.nearest(p128, p129)
    local huge5 = math.huge

    for index76, value88 in ipairs(p128) do
      if value88.model.Parent then
        local pointToObjectSpace = value88.cf:PointToObjectSpace(p129)
        local v312 = math.max(math.abs(pointToObjectSpace.X) - value88.size.X / 2, 0)
        local v313 = math.max(math.abs(pointToObjectSpace.Y) - value88.size.Y / 2, 0)
        local v314 = math.max(math.abs(pointToObjectSpace.Z) - value88.size.Z / 2, 0)
        local v315 = math.sqrt(v312 * v312 + v313 * v313 + v314 * v314)

        if v315 < huge5 then
          huge5 = v315
        end
      end
    end

    return huge5
  end

  function detect()
    local character7 = localPlayer.Character
    local v316 = not character7
    local v317 = f14()
    local v318 = v316 or not v317
    local animator3

    if v318 then
      v103.repairing = false
      return nil
    else
      local playerGui7 = localPlayer:FindFirstChildOfClass("PlayerGui")

      local skillCheckPromptGui2 = playerGui7
        and playerGui7:FindFirstChild("SkillCheckPromptGui")

      local check3 = skillCheckPromptGui2 and skillCheckPromptGui2:FindFirstChild("Check")

      if check3 and check3.Visible then
        return "repair generator (skill check)"
      end

      if v103.repairing then
        local v319 = v103.pointPosition(v103.repairPoint)

        if v319 and (v319 - v317.Position).Magnitude > v103.repairDistance then
          v103.repairing = false
          v103.repairPoint = nil
        else
          return "repair generator (event)"
        end
      end

      for index77, value89 in ipairs({ character7, localPlayer }) do
        for index78, value90 in ipairs(v103.attrNames) do
          if value89:GetAttribute(value90[1]) == true then
            return value90[2] .. " (attribute " .. value90[1] .. ")"
          else
            local findFirstChild = value89:FindFirstChild(value90[1])

            if findFirstChild and findFirstChild:IsA("BoolValue") and findFirstChild.Value then
              return value90[2] .. " (value " .. value90[1] .. ")"
            end
          end
        end
      end

      local humanoid6 = character7:FindFirstChildOfClass("Humanoid")
      animator3 = humanoid6 and humanoid6:FindFirstChildOfClass("Animator")

      if animator3 then
        local v320, v321 = pcall(function() return animator3:GetPlayingAnimationTracks() end)

        if v320 and v321 then
          for index79, value91 in ipairs(v321) do
            local lower11 = ((value91.Name or "") .. " "
              .. (value91.Animation and value91.Animation.Name or "")):lower()

            for index80, value92 in ipairs(v103.animKeywords) do
              if lower11:find(value92[1], 1, true) then
                return value92[2] .. " (anim " .. lower11 .. ")"
              end
            end
          end
        end
      end

      if os.clock() < v103.remoteUntil then
        return v103.remoteReason
      else
        v103.refreshObjects()
        local assemblyLinearVelocity = v317.AssemblyLinearVelocity
        local magnitude8 = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z).Magnitude
        local v322 = v103.nearest(v103.gens, v317.Position)
        local v323 = v103.nearest(v103.hooks, v317.Position)
        local diag = v103.diag
        local diag2 = v103.diag
        v103.diag.speed = magnitude8
        diag.gen = v322
        diag2.hook = v323

        if magnitude8 < v103.stillSpeed then
          if v322 <= v103.nearGen then
            return string.format("repair generator (diam di dekat generator %.1f)", v322)
          end

          if v323 <= v103.nearHook then
            return string.format("kena hook / unhook (diam di dekat hook %.1f)", v323)
          end

          return nil
        end

        return nil
      end
    end
  end

  function f37(p130, p131)
    local v324 = p130 and (v83[p130] or v84[p130])

    if v324 then
      if type(v324) ~= "string" then
        return true
      else
        local lower12 = v324:lower()

        if lower12:find("lunge", 1, true) and not lower12:find("^attack") then
          return false
        end

        return true
      end
    elseif p131 then
      local lower13 = p131.Name:lower()

      if (lower13:find("attack", 1, true) or lower13:find("slash", 1, true))
        and not (lower13:find("lunge", 1, true) or lower13:find("stun", 1, true)
          or lower13:find("parried", 1, true) or lower13:find("wallhit", 1, true)
          or lower13:find("vault", 1, true)) then
        return true
      end

      return false
    else
      return false
    end
  end

  v103.detect = detect

  function check()
    if not v103.enabled then
      return false, nil
    else
      local v325 = os.clock()

      if v325 - v103.lastCheck < 0.1 then
        return v103.cached, v103.reason
      else
        v103.lastCheck = v325
        local v326, v327 = pcall(v103.detect)
        local v328 = v327

        if not v326 then
          warn("[AgoyHub] Parry-state error: " .. tostring(v328))
          v328 = nil
        end

        v103.cached = v328 ~= nil
        v103.reason = v328

        if v103.debug and v328 ~= v103.lastReason then
          if v328 then
            print("[AgoyHub] Auto Parry DITAHAN: " .. v328)
          else
            print("[AgoyHub] Auto Parry aktif lagi")
          end
        end

        v103.lastReason = v328
        return v103.cached, v103.reason
      end
    end
  end

  function f38()
    if connect5 then
      connect5:Disconnect()
      connect5 = nil
    end

    if agoyParryRing then
      agoyParryRing:Destroy()
      agoyParryRing = nil
    end
  end

  v103.check = check

  function v103.hookAnimator()
    if v103.animConn then
      v103.animConn:Disconnect()
      v103.animConn = nil
    end

    local character8 = localPlayer.Character
    local humanoid7 = character8 and character8:FindFirstChildOfClass("Humanoid")
    local animator4 = humanoid7 and humanoid7:FindFirstChildOfClass("Animator")

    if not animator4 then
      return
    end

    v103.animConn = animator4.AnimationPlayed:Connect(function(p132)
      local name10

      if not v103.debug then
        return
      else
        local v329 = string.match(
          tostring(p132.Animation and p132.Animation.AnimationId or ""), "(%d+)"
        ) or "?"

        name10 = "?"
        pcall(function() name10 = p132.Priority.Name end)
        local v330 = v329 .. "|" .. tostring(p132.Name)

        if not v103.seenAnims[v330] then
          v103.seenAnims[v330] = true

          print(string.format(
            "[AgoyHub] Parry-state: animasi main nama='%s' anim='%s' id=%s prioritas=%s loop=%s",
            tostring(p132.Name), tostring(p132.Animation and p132.Animation.Name), v329, name10,
            tostring(p132.Looped)
          ))
        end

        return
      end
    end)
  end

  function v103.startMonitor()
    if v103.monitor then
      return
    end

    v103.hookAnimator()

    v103.charConn = localPlayer.CharacterAdded:Connect(function()
      v103.repairing = false
      v103.repairPoint = nil

      task.wait(1)
      v103.hookAnimator()
    end)

    local v331 = 0

    v103.monitor = runService.Heartbeat:Connect(function(delta2)
      if not v60 then
        return
      end

      v331 = v331 + delta2

      if v331 < 0.1 then
        return
      end

      v331 = 0

      v103.lastCheck = 0
      v103.check()

      if v103.debug then
        local v332 = os.clock()

        if v332 - v103.lastDump >= 1 then
          v103.lastDump = v332

          print(string.format(
            "[AgoyHub] Parry-state | ditahan=%s | speed=%.1f | jarak gen=%.1f | jarak hook=%.1f | hook remote=%s",
            tostring(v103.cached), v103.diag.speed, v103.diag.gen, v103.diag.hook,
            tostring(v103.hookInstalled)
          ))
        end
      end
    end)
  end

  function v103.stopMonitor()
    if v103.monitor then
      v103.monitor:Disconnect()
      v103.monitor = nil
    end

    if v103.charConn then
      v103.charConn:Disconnect()
      v103.charConn = nil
    end

    if v103.animConn then
      v103.animConn:Disconnect()
      v103.animConn = nil
    end
  end

  function v103.updateMonitor()
    if v85 then
      v103.startMonitor()
    else
      v103.stopMonitor()
    end
  end

  function f44()
    local v333

    if not v60 then
      return
    else
      local v334 = os.clock()

      if v334 - v88 < 0.15 then
        return
      end

      if v334 < v95 then
        return
      elseif v96 then
        return
      elseif v103.check() then
        return
      else
        local v335 = f60()

        if not v335 then
          warn("[AgoyHub] Remote parry (Parrying Dagger) tidak ditemukan")
          return
        end

        v88 = v334
        v335:FireServer()

        pcall(v101.pressed)
        pcall(f35, 1)

        v333 = { t = v334 }
        v96 = v333

        task.delay(0.8, function()
          if v96 == v333 then
            f36(false)
          end
        end)

        return
      end
    end
  end

  function f39()
    if agoyParryRing then
      agoyParryRing.Size = Vector3.new(0.15, v86 * 2, v86 * 2)
    end
  end

  function f45()
    if agoyParryRing then
      return
    end

    agoyParryRing = Instance.new("Part")
    agoyParryRing.Name = "AgoyParryRing"
    agoyParryRing.Shape = Enum.PartType.Cylinder
    agoyParryRing.Anchored = true
    agoyParryRing.CanCollide = false
    agoyParryRing.CanTouch = false
    agoyParryRing.CanQuery = false
    agoyParryRing.CastShadow = false
    agoyParryRing.Material = Enum.Material.Neon
    agoyParryRing.Color = Color3.fromRGB(255, 60, 60)
    agoyParryRing.Transparency = 0.55

    f39()
    agoyParryRing.Parent = workspace

    connect5 = runService.RenderStepped:Connect(function()
      if not v60 or not agoyParryRing then
        return
      else
        local character9 = localPlayer.Character
        local humanoidRootPart4 = character9 and character9:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart4 then
          agoyParryRing.Transparency = 1
          return
        else
          local humanoid8 = character9:FindFirstChildOfClass("Humanoid")
          local hipHeight = humanoid8 and humanoid8.HipHeight > 0 and humanoid8.HipHeight or 2
          local y4 = humanoidRootPart4.Size.Y

          agoyParryRing.Transparency = 0.55

          agoyParryRing.CFrame = CFrame.new(humanoidRootPart4.Position
              - Vector3.new(0, y4 / 2 + hipHeight - 0.05, 0))
            * CFrame.Angles(0, 0, math.rad(90))

          return
        end
      end
    end)
  end

  function f40(p133, p134)
    if not v106 then
      return true
    else
      local humanoidRootPart5 = p133:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart5 then
        return true
      else
        local v336 = p134.Position - humanoidRootPart5.Position
        local vector5 = Vector3.new(v336.X, 0, v336.Z)
        local lookVector3 = humanoidRootPart5.CFrame.LookVector
        local vector6 = Vector3.new(lookVector3.X, 0, lookVector3.Z)

        if vector5.Magnitude < 0.01 or vector6.Magnitude < 0.01 then
          return true
        end

        return vector6.Unit:Dot(vector5.Unit) >= v107
      end
    end
  end

  function f61()
    if v85 and v87 then
      f45()
    else
      f38()
    end
  end

  function f46(p135, p136, p137)
    if not v60 or not v85 then
      return
    end

    if not (p135.Team and p135.Team.Name == "Killer") then
      return
    else
      local animation3 = p137.Animation
      local v337 = string.match(tostring(animation3 and animation3.AnimationId or ""), "(%d+)")

      if v96 and f34(animation3, v337) then
        local humanoidRootPart6 = p136:FindFirstChild("HumanoidRootPart")
        local v338 = f14()

        if humanoidRootPart6 and v338
          and (humanoidRootPart6.Position - v338.Position).Magnitude <= 30 then
          f36(true)
        end

        return
      end

      if f37(v337, animation3) then
        local v339 = v89

        v339[p137] = {
          plr = p135,
          char = p136,
          id = v337 or "?",
          fired = false,
        }
      end

      return
    end
  end

  function f41(p138, p139)
    local v340 = v90[p138]

    if not v340 then
      return
    else
      if v340.anim then
        v340.anim:Disconnect()
        v340.anim = nil
      end

      local humanoid9 = p139:FindFirstChildOfClass("Humanoid")
        or p139:WaitForChild("Humanoid", 10)

      if not humanoid9 or v90[p138] ~= v340 then
        return
      end

      v340.anim = (humanoid9:FindFirstChildOfClass("Animator")
        or humanoid9:WaitForChild("Animator", 5) or humanoid9).AnimationPlayed:Connect(function(p140)
        v104(p138, p139, p140)
      end)

      return
    end
  end

  v104 = f46

  function f42(p141)
    if p141 == localPlayer or v90[p141] then
      return
    else
      local v341 = {}
      v90[p141] = v341

      if p141.Character then
        task.spawn(v105, p141, p141.Character)
      end

      v341.added = p141.CharacterAdded:Connect(function(character10)
        task.spawn(v105, p141, character10)
      end)

      return
    end
  end

  v105 = f41
  v106 = true
  v107 = 0.5

  function f62()
    for index81, value93 in ipairs(players:GetPlayers()) do
      f42(value93)
    end

    if not connect3 then
      connect3 = players.PlayerAdded:Connect(f42)
    end

    if not connect4 then
      connect4 = runService.Heartbeat:Connect(function()
        if not v60 or not v85 then
          return
        else
          local v342 = f14()

          if not v342 then
            return
          end

          for key17, value94 in pairs(v89) do
            if not key17.IsPlaying or not value94.char.Parent then
              v89[key17] = nil
            elseif not value94.fired then
              local humanoidRootPart7 = value94.char:FindFirstChild("HumanoidRootPart")

              if humanoidRootPart7 then
                if (humanoidRootPart7.Position - v342.Position).Magnitude <= v86
                  and f40(value94.char, v342) and not v103.check() then
                  value94.fired = true
                  f44()
                end
              end
            end
          end

          return
        end
      end)
    end
  end

  function v64()
    v85 = false

    if connect4 then
      connect4:Disconnect()
      connect4 = nil
    end

    if connect3 then
      connect3:Disconnect()
      connect3 = nil
    end

    for key18, value95 in pairs(v90) do
      if value95.added then
        value95.added:Disconnect()
      end

      if value95.anim then
        value95.anim:Disconnect()
      end

      v90[key18] = nil
    end

    v89 = {}

    pcall(v103.reset)
    pcall(v103.stopMonitor)
    pcall(v101.ready)

    f38()
  end

  function v76.setEnabled(p142)
    v85 = p142
    v103.enabled = p142

    if not p142 then
      pcall(v103.reset)
    end

    if p142 then
      pcall(v103.installHook)

      print("[AgoyHub] Parry-state aktif | hookmetamethod=" .. tostring(hookmetamethod ~= nil)
        .. " | hook terpasang=" .. tostring(v103.hookInstalled) .. " | RepairEvent="
        .. tostring(v103.repairEvent ~= nil))

      if not f60() then
        f47("Auto Parry", "Remote Parrying Dagger belum ditemukan", 3)
      end

      f62()
    else
      v89 = {}
    end

    f61()
    pcall(v103.updateMonitor)
  end

  function v76.setRange(p143)
    v86 = math.clamp(math.floor(p143 + 0.5), 1, 16)
    f39()
  end

  function v76.setCircle(p144)
    v87 = p144
    f61()
  end

  if v31 then
    task.spawn(function()
      task.wait(1)
      f12()

      if v51.Mobile.AutoOptimize then
        task.wait(0.5)
        f48()
        f47("Mobile Mode", "Auto-optimizations applied", 4)
      end
    end)
  end

  task.delay(1, function() v70 = true end)

  task.spawn(function()
    task.wait(1.5)

    if not v60 then
      return
    end

    f47("Discord", "Executor tidak mendukung clipboard. Join: https://discord.gg/VG3f2ssEuA", 8)
    print("[AgoyHub] Join Discord: https://discord.gg/VG3f2ssEuA")
  end)

  f47("Agoy Hub", "Script loaded", 4)
  print("=== Agoy Hub loaded ===")
  return
end
