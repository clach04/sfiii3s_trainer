--fba-rr専用のトライアルlua(20190101) by crystal_cube99
timeInGame = 0
timeInLua = -2
mode = 0	
timeInMode = 0
timeInMode2 = 0
comboNum = 0
comboNumBefore = 0
totalHitNum1to2=0
totalHitNum1to2Before=0
lifeZeroTimer = 0
lifeRecoverySpeed = 2
stunMinimum = 0x0000
trialFlg = 0
trialTimer = 0
tobiIDInGame = 0
tobiHitFlgInGame = 0
tobiHitLogFlg = 0
comboLog = {}
comboList = {}
comboLogIndex = 0
Action1Ptxt = "0"
dashiteruWaza = ""
Action2Ptxt = "0"
hitboxNage2P = "0"
parryNum1P = 0
mantanFlg = 1
language = 0 
languageMax = 1
assistHaba = 2
assist = 0 
assistMax = 1
keyDisp = 0
keyDispMax = 3
GAME_PHASE_PLAYING    = 2
wazaTotalNum = 0
wazaTotalNumBefore = 0
comboTest={}
kadai={}
difficulty={}
comment={}
gaugeMaxflg={}
for i=1 ,19 , 1 do
	comboTest[i] = {}
	kadai[i] = {}
	difficulty[i]={}
	comment[i]={}
	gaugeMaxflg[i]={}
	for k=1,10,1 do
		comboTest[i][k] = {}
		kadai[i][k] = {}
		difficulty[i][k]={}
		comment[i][k]={}
		gaugeMaxflg[i][k]={}
	end
end
cursor={}
for i=1,19,1 do
	cursor[i]={}
	for k=1,10,1 do
		cursor[i][k]=0
	end
end
saveDataAddr = 0x02011200
keyDataAddr  = 0x02011400
keyDataAddr2  = 0x02011600
saveData={}
oldKey = {}
oldKey2 = {}
newKey = {}
newKey2 = {}
for i=1,20,1 do
	saveData[i]={}
	oldKey[i]={}
	oldKey2[i]={}
	newKey[i]={}
	newKey2[i]={}
	for k=1,10,1 do
		saveData[i][k]=0
		oldKey[i][k]=0
		oldKey2[i][k]=0
		newKey[i][k]=0
		newKey2[i][k]=0
	end
end
cursor[1][1] = 1
trialChara = 1
trialNum = 1
trialCharaTemp = 1
trialNumTemp = 1
trialNumTempBase = 1
kadaiNum = 3
inputTub = joypad.get()
inputList2P = {}
for i=1 ,60 , 1 do
	inputList2P[i] = {}
end
comboTest[1][1]={
				 {"SCLP"						,"H","A00000000"},
				 {"CLP"							,"HR","A00120012"},
				 {"EX_Air Knee Smash"			,"T","T00160015"}
				}
kadai[1][1]={
				 {"_NM_SCLP"},
				 {"_NM_CLP"},
				 {"_COMMON_EX","_SP_ALEX2"}
				}
difficulty[1][1] = 1
comboTest[1][2]={
				 {"M_Slash Elbow (From the back)"				,"H","S00400040"},
				 {"Boomerang Raid"								,"H","S00280028","S00290029","S002a002a"}
				}
kadai[1][2]={
				 {"_TR_ALEX1"},
				 {"_SA_ALEX2"}
				}
difficulty[1][2] = 2
comboTest[1][3]={
				 {"L_SlashElbow"				,"H","S003f003f"},
				 {"SHK"							,"H","A000f000f","A00100010"},
				 {"SMP"							,"H","A00030003"},
				 {"EX_Air Knee Smash"			,"T","T00160015"}
				}
kadai[1][3]={
				 {"_COMMON_L","_SP_ALEX4"},
				 {"_NM_SHK"},
				 {"_NM_SMP"},
				 {"_COMMON_EX","_SP_ALEX2"}
				}
difficulty[1][3] = 4
comboTest[1][4]={
				 {"M_Flash Chop (Avoid throwing with HJC)"					,"H","S001d001d"},
				 {"Hyper Bomb"												,"T","T00200020"}
				}
kadai[1][4]={
				 {"_TR_ALEX2"},
				 {"_SA_ALEX1"}
				}
difficulty[1][4] = 3
comboTest[2][3]={
				 {"JHP"								,"H","A00340034","A00280028","A00400034"},
				 {"SCMK"							,"H","A000c000c"},
				 {"EX_Joudan Sokutou Geri"			,"H","S003f003f"},
				 {"EX_Tatsumaki Senpuu Kyaku"		,"H","S00230023"},
				 {"EX_Shouryuu Ken"					,"H","S001f001f"}
				}
kadai[2][3]={
				 {"_NM_JHP"},
				 {"_NM_SCMK"},
				 {"_COMMON_EX","_SP_RYU5"},
				 {"_COMMON_EX","_SP_RYU3"},
				 {"_COMMON_EX","_SP_RYU2"}
				}
difficulty[2][3] = 3
comboTest[2][4]={
				 {"JHP"								,"H","A00340034","A00280028","A00400034"},
				 {"SHP"								,"H","A00060006"},
				 {"L_Hadou Ken"						,"F","F0000"},
				 {"LV3_Denjin Hadou Ken"			,"F","F000a"},
				 {"JHK"								,"H","A003a003a","A002e002e","A0046003a"},
				 {"CHP"								,"H","A00180018"},
				 {"H_Tatsumaki Senpuu Kyaku"		,"H","S00220022"}
				}
kadai[2][4]={
				 {"_NM_JHP"},
				 {"_NM_SHP"},
				 {"_COMMON_L","_SP_RYU1"},
				 {"_SA_RYU3_3"},
				 {"_NM_JHK"},
				 {"_NM_CHP"},
				 {"_COMMON_H","_SP_RYU3"}
				}
difficulty[2][4] = 3
comboTest[2][5]={
				 {"L_Shouryuu Ken"			,"H","S001c001c"},
				 {"LV1_Denjin Hadou Ken"	,"F","F0008"}
				}
kadai[2][5]={
				 {"_COMMON_L","_SP_RYU2"},
				 {"_SA_RYU3_1"}
				}
difficulty[2][5] = 3
comboTest[2][6]={
				 {"JHK"								,"H","A0046003a","A002e002e","A003a003a"},
				 {"CMP"								,"H","A00150015"},
				 {"EX_Tatsumaki Senpuu Kyaku"		,"H","S00230023"},
				 {"Shinkuu Hadou Ken"				,"F","F0007"},
				 {"EX_Joudan Sokutou Geri"			,"H","S003f003f"},
				 {"H_Tatsumaki Senpuu Kyaku"		,"H","S00220022"}
				}
kadai[2][6]={
				 {"_NM_JHK"},
				 {"_NM_CMP"},
				 {"_COMMON_EX","_SP_RYU3"},
				 {"_SA_RYU1"},
				 {"_COMMON_EX","_SP_RYU5"},
				 {"_COMMON_H","_SP_RYU3"}
				}
difficulty[2][6] = 4
comboTest[2][7]={
				 {"L_Shouryuu Ken"					,"H","S001c001c"},
				 {"Shinkuu Hadou Ken"				,"F","F0007"},
				 {"H_Hadou Ken"						,"F","F0002"},
				 {"Shinkuu Hadou Ken"				,"F","F0007"},
				 {"H_Hadou Ken"						,"F","F0002"}
				}
kadai[2][7]={
				 {"_COMMON_L","_SP_RYU2"},
				 {"_SA_RYU1"},
				 {"_COMMON_H","_SP_RYU1"},
				 {"_SA_RYU1"},
				 {"_COMMON_H","_SP_RYU1"}
				}
difficulty[2][7] = 4
comboTest[2][8]={
				 {"JHK"						,"H","A0046003a","A002e002e","A003a003a"},
				 {"SHP"						,"H","A00060006"},
				 {"H_Shouryuu Ken"			,"H","S001e001e"},
				 {"Shin Shouryuu Ken"		,"H","S00430044","S00430043"},
				 {"JHP"						,"H","A00340034","A00280028","A00400034"},
				 {"Universal Overhead"		,"H","S00380038"},
				 {"JHK"						,"H","A0046003a","A002e002e","A003a003a"},
				 {"JMK"						,"H","A00440038","A002c002c","A00380038"},
				 {"SCMK"					,"H","A000c000c"},
				 {"M_Joudan Sokutou Geri"	,"H","S003d003d"},
				}
kadai[2][8]={
				 {"_NM_JHK"},
				 {"_NM_SHP"},
				 {"_COMMON_H","_SP_RYU2"},
				 {"_SA_RYU2"},
				 {"_NM_JHP"},
				 {"_LEAP"},
				 {"_NM_JHK"},
				 {"_NM_JMK"},
				 {"_NM_SCMK"},
				 {"_COMMON_M","_SP_RYU5"}
				}
difficulty[2][8] = 5
comboTest[2][9]={
				 {"EX_Air Tatsumaki Senpuu Kyaku"		,"H","S00370037"},
				 {"Shinkuu Hadou Ken"					,"F","F0007"},
				 {"EX_Hadou Ken"						,"F","F0003"},
				 {"H_Tatsumaki Senpuu Kyaku"			,"H","S00220022"}
				}
kadai[2][9]={
				 {"_COMMON_EX","_SP_RYU4"},
				 {"_SA_RYU1"},
				 {"_COMMON_EX","_SP_RYU1"},
				 {"_COMMON_H","_SP_RYU3"}
				}
difficulty[2][9] = 5
chuashiCount = 50000
comboTest[3][1]={
				 {"CMK (Whiff punish)"				,"H","A001e001e"},
				 {"Shippuu Jinrai Kyaku"			,"H","S002c002c","S002d002d","S002e002e"}
				}
kadai[3][1]={
				 {"_TR_KEN1"},
				 {"_SA_KEN3"}
				}
difficulty[3][1] = 2
comboTest[3][2]={
				 {"CLK"					,"H","A001b001b"},
				 {"CLP"					,"HR","A00120012"},
				 {"EX_Shouryuu Ken"		,"H","S001f001f"},
				 {"Shippuu Jinrai Kyaku","H","S002c002c","S002d002d","S002e002e"}
				}
kadai[3][2]={
				 {"_NM_CLK"},
				 {"_NM_CLP"},
				 {"_COMMON_EX","_SP_RYU2"},
				 {"_SA_KEN3"}
				}
difficulty[3][2] = 2
comboTest[3][7]={
				 {"EX_Air Tatsumaki Senpuu Kyaku(Cross-up)"	,"H","S00330033"},
				 {"L_Shouryuu Ken"							,"H","S001c001c"},
				 {"L_Shouryuu Ken"							,"H","S001c001c"}
				}
kadai[3][7]={
				 {"_COMMON_ME","_COMMON_EX","_SP_RYU4"},
				 {"_COMMON_L","_SP_RYU2"},
				 {"_COMMON_L","_SP_RYU2"}
				}
difficulty[3][7] = 6
comboTest[3][8]={
				 {"parry Chun-Li's SA (Finally in the air)"	,"J","N001b001b",35},
				 {"JHK"										,"H","A0046003a","A002e002e","A003a003a"},
				 {"CMK"										,"H","A001e001e"},
				 {"M_Shouryuu Ken"							,"H","S001d001d"},
				 {"Shippuu Jinrai Kyaku"					,"H","S002c002c","S002d002d","S002e002e"}
				}
kadai[3][8]={
				 {"_TR_KEN2"},
				 {"_NM_JHK"},
				 {"_NM_CMK"},
				 {"_COMMON_M","_SP_RYU2"},
				 {"_SA_KEN3"}
				}
difficulty[3][8] = 6
comboTest[4][2]={
				 {"H_hakunetsu Hadouken"			,"F","F0870"},
				 {"M_hakunetsu Hadouken"			,"F","F086f"}
				}
kadai[4][2]={
				 {"_COMMON_H","_SP_GOU3"},
				 {"_COMMON_M","_SP_GOU3"}
				}
difficulty[4][2] = 3
comboTest[4][3]={
				 {"NJHP"			,"H","A00280028"},
				 {"SHK"				,"H","A000f000f","A00100010"},
				 {"Shun Goku Satsu"	,"T","T00120012"}
				}
kadai[4][3]={
				 {"_COMMON_JS","_NM_JHP"},
				 {"_NM_SHK"},
				 {"_SA_GOU4"}
				}
difficulty[4][3] = 3
comboTest[4][9]={
				 {"Air Tatsumaki Zankuu Kyaku"	,"H","S00340034","S00350035","S00360036"},
				 {"H_Tatsumaki Zankuu Kyaku"	,"H","S00220022",},
				 {"Air Tatsumaki Zankuu Kyaku"	,"H","S00340034","S00350035","S00360036"},
				 {"Messatsu Gou Senpuu"			,"H","S004c004c","S004d004d","S004e004e"}
				}
kadai[4][9]={
				 {"_SP_GOU6"},
				 {"_COMMON_H","_SP_GOU5"},
				 {"_SP_GOU6"},
				 {"_SA_GOU3_2"}
				}
difficulty[4][9] = 6
comboTest[5][1]={
				 {"JHK"				,"H","A0046003a","A002e002e","A003a003a"},
				 {"CMK"				,"H","A001e001e"},
				 {"Hadou Burst"		,"F","F0938"}
				}
kadai[5][1]={
				 {"_NM_JHK"},
				 {"_NM_CMK"},
				 {"_SA_SEA1"}
				}
difficulty[5][1] = 3
comboTest[5][3]={
				 {"CLK"				,"H","A001b001b"},
				 {"CLP"				,"H","A00120012"},
				 {"SLP"				,"H","A00000000","A00010001"},
				 {"SLP"				,"HR","A00000000","A00010001"},
				 {"CLK"				,"H","A001b001b"},
				 {"Hadou Burst"		,"F","F0938"}
				}
kadai[5][3]={
				 {"_NM_CLK"},
				 {"_NM_CLP"},
				 {"_NM_SLP"},
				 {"_NM_SLP"},
				 {"_NM_CLK"},
				 {"_SA_SEA1"}
				}
difficulty[5][3] = 4
comboTest[6][1]={
				 {"SFHK"			,"H","A00100010"},
				 {"Yami Shigure"	,"H","F0ed5","F0ed6","F0ed7","F0ed8","F0ed9","F0eda","F0edb","F0edc","F0edd"}
				}
kadai[6][1]={
				 {"_NM_SDHK"},
				 {"_SA_IBU3"}
				}
difficulty[6][1] = 2
comboTest[6][2]={
				 {"CLK"				,"H","A001b001b"},
				 {"SFLP"			,"H","A00010001"},
				 {"SFMP"			,"HR","A00010004"},
				 {"Yami Shigure"	,"H","F0ed5","F0ed6","F0ed7","F0ed8","F0ed9","F0eda","F0edb","F0edc","F0edd"}
				}
kadai[6][2]={
				 {"_NM_CLK"},
				 {"_NM_SDLP"},
				 {"_NM_SDMP"},
				 {"_SA_IBU3"}
				}
difficulty[6][2] = 3
comboTest[6][4]={
				 {"JLP"				,"H","A003c0030","A00240024","A00300030"},
				 {"J6HP"			,"HR","A003c009f","A0030009f"},
				 {"SCHK"			,"H","A000f000f"},
				 {"JHP"				,"H","A00400028","A00280028","A00340028"},
				 {"J6MK"			,"HR","A0040009e","A0028009e","A0034009e"}
				}
kadai[6][4]={
				 {"_NM_JLP"},
				 {"_NM_J6HP"},
				 {"_NM_SCHK"},
				 {"_NM_JHP"},
				 {"_NM_J6MK"}
				}
difficulty[6][4] = 4
comboTest[6][9]={
				 {"JHP"				,"H","A00400028","A00280028","A00340028"},
				 {"J6MK"			,"HR","A0040009e","A0028009e","A0034009e"},
				 {"SLK"				,"H","A00090009"},
				 {"SMK"				,"HR","A000900a0"},
				 {"EX_Kazekiri"		,"HR","S001b001b"},
				 {"JLP"				,"H","A003c0030","A00240024","A00300030"},
				 {"J6HP"			,"HR","A003c009f","A0030009f"},
				 {"EX_Kazekiri"		,"H","S001b001b"},
				 {"Kasumi Suzaku"	,"F","F0339","F033f","F0345","F033a","F0340","F0346","F033b","F0341","F0347","F033c","F0342","F0348","F033d","F0343","F0349","F033e","F0344","F034a","F033d","F0343","F0349","F033e","F0344","F034a","F033d","F0343","F0349","F033e","F0344","F034a"}
				}
kadai[6][9]={
				 {"_NM_JHP"},
				 {"_NM_J6MK"},
				 {"_NM_SLK"},
				 {"_NM_SMK"},
				 {"_COMMON_EX","_SP_IBU3"},
				 {"_NM_JLP"},
				 {"_NM_J6HP"},
				 {"_COMMON_EX","_SP_IBU3"},
				 {"_SA_IBU1"}
				}
difficulty[6][9] = 7
comboTest[7][3]={
				 {"J2MK"			,"H","A00390039"},
				 {"J2HP"			,"H","A00350035"},
				 {"CLP"				,"H","A00120012"},
				 {"Kikosho"			,"H","S002c002c","S002d002d","S002e002e"}
				}
kadai[7][3]={
				 {"_NM_J2MK"},
				 {"_NM_J2HP"},
				 {"_NM_CLP"},
				 {"_SA_CHU1"}
				}
difficulty[7][3] = 4
comboTest[7][5]={
				 {"J2HP"						,"H","A00350035"},
				 {"4MP"							,"H","A00050005"},
				 {"EX_Spinning Bird Kick"		,"H","S001b001b"},
				 {"Houyoku Sen"					,"H","S00300030","S00310031","S00320032"}
				}
kadai[7][5]={
				 {"_NM_J2HP"},
				 {"_NM_4MP"},
				 {"_COMMON_EX","_SP_CHU3"},
				 {"_SA_CHU2"}
				}
difficulty[7][5] = 4
comboTest[8][3]={
				 {"CMP"				,"H","A00150015"},
				 {"EX_Spin Scythe"	,"H","S003c003c"},
				 {"Dash Forward"	,"D","N00040004"},
				 {"H_Scratch Wheel"	,"H","S001a001a"}
				}
kadai[8][3]={
				 {"_NM_CMP"},
				 {"_COMMON_EX","_SP_ELE4"},
				 {"_NM_FDASH"},
				 {"_COMMON_H","_SP_ELE1"}
				}
difficulty[8][3] = 4
comboTest[8][4]={
				 {"JHP"				,"H","A00400034","A00280028","A00340034"},
				 {"CMP"				,"H","A00150015"},
				 {"EX_Spin Scythe"	,"H","S003c003c"},
				 {"Dash Forward"	,"H","S00240024","S00250025","S00260026"},
				 {"Dash Forward"	,"H","S00240024","S00250025","S00260026"}
				}
kadai[8][4]={
				 {"_NM_JHP"},
				 {"_NM_CMP"},
				 {"_COMMON_EX","_SP_ELE4"},
				 {"_SA_ELE1"},
				 {"_SA_ELE1"}
				}
difficulty[8][4] = 4
comboTest[9][5]={
				 {"NJHP"						,"H","A00280028"},
				 {"SHP"							,"H","A00060006","A00070007"},
				 {"Tanden Renki-Seme no Kata"	,"D","S00360036","S00370036","S00380036","S00390036"},
				 {"SLP"							,"H","A00000000","A00010001"},
				 {"SLP"							,"HR","A00000000","A00010001"},
				 {"SLK"							,"HR","A00090009","A000a000a"},
				 {"L_Hayate"					,"H","S001c003e"},
				 {"Taunt"						,"D","S001c0046"}
				}
kadai[9][5]={
				 {"_COMMON_JS","_NM_JHP"},
				 {"_NM_SHP"},
				 {"_SA_MAK3"},
				 {"_NM_SLP"},
				 {"_NM_SLP"},
				 {"_NM_SLK"},
				 {"_COMMON_L","_SP_MAK1"},
				 {"_PA"}
				}
difficulty[9][5] = 4
comboTest[9][6]={
				 {"Karakusa"				,"T","T00030003"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"Abare ToSanami Kudaki"	,"H","S002b002b","S002c002c","S002d002d"},
				 {"M_Fukiage"				,"H","S00250025"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"Taunt"					,"D","S00280028"},
				 {"JHP"						,"H","A00400040","A00280028","A00340034"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"EX_Hayate"				,"H","S001f0044"},
				 {"SMK"						,"H","A000c000c","A000d000d"}
				}
kadai[9][6]={
				 {"_SP_MAK4"},
				 {"_NM_SHP"},
				 {"_SA_MAK2"},
				 {"_COMMON_M","_SP_MAK2"},
				 {"_NM_SHP"},
				 {"_PA"},
				 {"_NM_JHP"},
				 {"_NM_SHP"},
				 {"_COMMON_EX","_SP_MAK1"},
				 {"_NM_SMK"}
				}
difficulty[9][6] = 5
comboTest[9][7]={
				 {"JHK"						,"H","A00460046","A002e002e","A003a003a"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"Abare ToSanami Kudaki"	,"H","S002b002b","S002c002c","S002d002d"},
				 {"M_Tsurugi"				,"H","S004b004b"},
				 {"M_Fukiage"				,"H","S00250025"},
				 {"JHP"						,"H","A00400040","A00280028","A00340034"}
				}
kadai[9][7]={
				 {"_NM_JHK"},
				 {"_NM_SHP"},
				 {"_SA_MAK2"},
				 {"_COMMON_M","_SP_MAK5"},
				 {"_COMMON_M","_SP_MAK2"},
				 {"_NM_JHP"}
				}
difficulty[9][7] = 5
comboTest[9][8]={
				 {"JHP"						,"H","A00400040","A00280028","A00340034"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"EX_Oroshi"				,"H","S00230023"},
				 {"Abare ToSanami Kudaki"	,"H","S002b002b","S002c002c","S002d002d"},
				 {"M_Fukiage"				,"H","S00250025"},
				 {"L_Fukiage"				,"H","S00240024"},
				 {"JHK"						,"H","A00460046","A002e002e","A003a003a"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"EX_Hayate"				,"H","S001f0044"},
				 {"SHP"						,"H","A00060006","A00070007"}
				}
kadai[9][8]={
				 {"_NM_JHP"},
				 {"_NM_SHP"},
				 {"_COMMON_EX","_SP_MAK3"},
				 {"_SA_MAK2"},
				 {"_COMMON_M","_SP_MAK2"},
				 {"_COMMON_L","_SP_MAK2"},
				 {"_NM_JHK"},
				 {"_NM_SHP"},
				 {"_COMMON_EX","_SP_MAK1"},
				 {"_NM_SHP"}
				}
difficulty[9][8] = 6
comboTest[9][9]={
				 {"Karakusa"				,"T","T00030003"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"Abare ToSanami Kudaki"	,"H","S002b002b","S002c002c","S002d002d"},
				 {"SHK (Kara Cancel)"		,"D","A000f000f","A00100010"},
				 {"M_Fukiage"				,"H","S00250025"},
				 {"L_Fukiage"				,"H","S00240024"}
				}
kadai[9][9]={
				 {"_SP_MAK4"},
				 {"_NM_SHP"},
				 {"_SA_MAK2"},
				 {"_COMMON_KARACAN","_NM_SHK"},
				 {"_COMMON_M","_SP_MAK2"},
				 {"_COMMON_L","_SP_MAK2"}
				}
difficulty[9][9] = 6
comboTest[9][10]={
				 {"Karakusa"				,"T","T00030003"},
				 {"SHP"						,"H","A00060006","A00070007"},
				 {"Abare ToSanami Kudaki"	,"H","S002b002b","S002c002c","S002d002d"},
				 {"LorM_Fukiage"			,"H","S00240024","S00250025"},
				 {"SLK (Kara Cancel)"		,"D","A00090009","A000a000a"},
				 {"L_Fukiage"				,"H","S00240024"}
				}
kadai[9][10]={
				 {"_SP_MAK4"},
				 {"_NM_SHP"},
				 {"_SA_MAK2"},
				 {"_COMMON_L","_COMMON_OR","_COMMON_M","_SP_MAK2"},
				 {"_COMMON_KARACAN","_NM_SLK"},
				 {"_COMMON_L","_SP_MAK2"}
				}
difficulty[9][10] = 7
comboTest[10][4]={
				 {"kobokushi"					,"H","S001c001c","S001d001d","S001e001e"},
				 {"L_Tetsuzankou"				,"H","S00570057"},
				 {"EX_Tetsuzankou"				,"H","S005a005a"},
				 {"Sourai rengeki"				,"H","S00300030","S00310031","S00320032"}
				}
kadai[10][4]={
				 {"_SP_YUN4"},
				 {"_COMMON_L","_SP_YUN2"},
				 {"_COMMON_EX","_SP_YUN2"},
				 {"_SA_YUN2"}
				}
difficulty[10][4] = 4
comboTest[10][5]={
				 {"JLP"					,"H","A003c0030","A00240024","A00300030"},
				 {"J6HP"				,"HR","A003c009c","A003c0030","A0030009c"},
				 {"CHP"					,"H","A00180018"},
				 {"You Hou"				,"H","S002c002c","S002c002c","S002d0060","S002d0060","S002e002e","S002e0060"},
				 {"M_Nishou Kyaku"		,"H","S00210021"},
				 {"CMK"					,"H","A001e001e"},
				 {"L_Nishou Kyaku"		,"H","S00200020"}
				}
kadai[10][5]={
				 {"_NM_JLP"},
				 {"_NM_J6HP"},
				 {"_NM_CHP"},
				 {"_SA_YUN1"},
				 {"_COMMON_M","_SP_YUN3"},
				 {"_NM_CMK"},
				 {"_COMMON_L","_SP_YUN3"}
				}
difficulty[10][5] = 4
comboTest[11][4]={
				 {"JMK"					,"H","A003e0032","A00380038"},
				 {"J3MK"				,"HR","A0038009c","A0044009c"},
				 {"SCMK"				,"H","A000c000c"},
				 {"SCMK"				,"H","A000c000c"},
				 {"SJHP"				,"H","A00280028"}
				}
kadai[11][4]={
				 {"_NM_JMK"},
				 {"_NM_J3MK"},
				 {"_NM_SCMK"},
				 {"_NM_SCMK"},
				 {"_NM_NJHP"}
				}
difficulty[11][4] = 3
comboTest[11][3]={
				 {"CLK"					,"H","A001b001b"},
				 {"CLK"					,"HR","A001b001b"},
				 {"CLK"					,"HR","A001b001b"},
				 {"Raishin Mahhaken"	,"H","S00300030","S00310031","S00320032"}
				}
kadai[11][3]={
				 {"_NM_CLK"},
				 {"_NM_CLK"},
				 {"_NM_CLK"},
				 {"_SA_YANG1"}
				}
difficulty[11][3] = 3
comboTest[11][6]={
				 {"CMK"						,"H","A001e001e"},
				 {"EX_Tourou Zan"			,"H","S00270027"},
				 {"EX_Tourou Zan"			,"HR","S00270027"},
				 {"EX_Tourou Zan"			,"HR","S00270027"},
				 {"EX_Tourou Zan"			,"HR","S00270027"},
				 {"EX_Tourou Zan"			,"HR","S0027005b","S00270027"},
				 {"EX_Tourou Zan"			,"H","S00270027"},
				 {"H_Tourou Zan"			,"H","S00260026"},
				 {"L_Tourou Zan"			,"HR","S00240024","S00250024","S00260024"},
				 {"L_Tourou Zan"			,"HR","S00240024"},
				 {"SHP"						,"H","A00070007"},
				}
kadai[11][6]={
				 {"_NM_CMK"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_EX","_SP_YANG1"},
				 {"_COMMON_H","_SP_YANG1"},
				 {"_COMMON_L","_SP_YANG1"},
				 {"_COMMON_L","_SP_YANG1"},
				 {"_NM_SHP"}
				}
difficulty[11][6] = 5
comboTest[13][5]={
				 {"CHK"					,"H","A00210021"},
				 {"L_Machinegun Blow"	,"H","S00280028"},
				 {"L_Machinegun Blow"	,"H","S00280028"},
				 {"L_Machinegun Blow"	,"H","S00280028"},
				 {"6MK"				,"H","A000e000e"},
				 {"H_Jet Upper"			,"H","S001a001a"},
				 {"Corkscrew Blow"		,"H","S001c001c","S001d001d","S001e001e"}
				}
kadai[13][5]={
				 {"_NM_CHK"},
				 {"_COMMON_L","_SP_DUD3"},
				 {"_COMMON_L","_SP_DUD3"},
				 {"_COMMON_L","_SP_DUD3"},
				 {"_NM_6MK"},
				 {"_COMMON_H","_SP_DUD1"},
				 {"_SA_DUD3"}
				}
difficulty[13][5] = 5
comboTest[13][8]={
				 {"SHK"					,"H","A000f000f"},
				 {"(Swing away)L_Punch and Cross"	,"D","S004b004b","S004b0041"},
				 {"SHK"					,"H","A000f000f"},
				 {"EX_Machinegun Blow"	,"H","S002b002b"},
				 {"H_Punch and Cross"	,"H","S004d004d","S004d0043"}
				}
kadai[13][8]={
				 {"_NM_SHK"},
				 {"_COMMON_L","_COMMON_KARABURI","_SP_DUD5"},
				 {"_NM_SHK"},
				 {"_COMMON_EX","_SP_DUD3"},
				 {"_COMMON_H","_SP_DUD5"}
				}
difficulty[13][8] = 6
comboTest[14][3]={
				 {"CHP"					,"H","A00180018"},
				 {"L_Chariot Tackle"	,"H","S003a003a"},
				 {"CHP"					,"H","A00180018"},
				 {"L_Chariot Tackle"	,"H","S003a003a"}
				}
kadai[14][3]={
				 {"_NM_CHP"},
				 {"_COMMON_L","_SP_URIEN2"},
				 {"_NM_CHP"},
				 {"_COMMON_L","_SP_URIEN2"}
				}
difficulty[14][3] = 3
comboTest[14][10]={
				 {"H_Chariot Tackle"		,"H","S003c003c"},
				 {"L_Aegis Reflector"		,"F","F077b"},
				 {"H_Chariot Tackle"		,"H","S003c003c"},
				 {"SLP"						,"H","A00000000","A00010001"},
				 {"SMP"						,"HR","A0000009e","A0001009e"},
				 {"M_Dangerous Headbutt"	,"H","S002a002a"},
				 {"L_Chariot Tackle"		,"H","S003a003a"},
				 {"SMP"						,"H","A00030003"},
				 {"M_Aegis Reflector"		,"F","F077c"},
				 {"H_Violence Knee Drop"	,"H","S001b001b"}
				}
kadai[14][10]={
				 {"_COMMON_H","_SP_URIEN2"},
				 {"_COMMON_L","_SA_URIEN3"},
				 {"_COMMON_H","_SP_URIEN2"},
				 {"_NM_SLP"},
				 {"_NM_SMP"},
				 {"_COMMON_M","_SP_URIEN4"},
				 {"_COMMON_L","_SP_URIEN2"},
				 {"_NM_SMP"},
				 {"_COMMON_M","_SA_URIEN3"},
				 {"_COMMON_H","_SP_URIEN3"}
				}
difficulty[14][10] = 7
comboTest[15][1]={
				 {"SCHK (Anti air)"				,"H","A000f000f"},
				 {"Rising Rage Flash"			,"H","S001c001c","S001d001d","S001e001e","S001f001f"}
				}
kadai[15][1]={
				 {"_COMMON_ANTI_AIR","_NM_SCHK"},
				 {"_SP_REM3"}
				}
difficulty[15][1] = 1
comboTest[15][2]={
				 {"N_Throw	"				,"H","A0001009c"},
				 {"SMP(Kara Cancel)"		,"D","A00030003","A00040004"},
				 {"Rising Rage Flash"		,"H","S001c001c","S001d001d","S001e001e","S001f001f"}
				}
kadai[15][2]={
				 {"_N_THROW"},
				 {"_COMMON_KARACAN","_NM_SMP"},
				 {"_SP_REM3"}
				}
difficulty[15][2] = 2
comboTest[15][3]={
				 {"JHK"					,"H","A0046003a","A002e003a","A003a003a"},
				 {"CHP"					,"H","A00180018"},
				 {"L_Cold Blue Kick"	,"H","S002e002e"},
				 {"Rising Rage Flash"	,"H","S001c001c","S001d001d","S001e001e","S001f001f"}
				}
kadai[15][3]={
				 {"_NM_JHK"},
				 {"_NM_CHP"},
				 {"_COMMON_L","_SP_REM4"},
				 {"_SP_REM3"}
				}
difficulty[15][3] = 3
comboTest[15][4]={
				 {"JHK"					,"H","A0046003a","A002e003a","A003a003a"},
				 {"SCMP"				,"H","A00030003"},
				 {"CLK"					,"H","A001b001b"},
				 {"Rising Rage Flash"	,"H","S001c001c","S001d001d","S001e001e","S001f001f"}
				}
kadai[15][4]={
				 {"_NM_JHK"},
				 {"_NM_SCMP"},
				 {"_COMMON_L","_NM_CLK"},
				 {"_SP_REM3"}
				}
difficulty[15][4] = 3
comboTest[15][6]={
				 {"JHP"					,"H","A00400034","A00280034","A00340034"},
				 {"SCMK"				,"H","A000c000c"},
				 {"Light of Virtue(UP)"	,"F","F00c6"},
				 {"SLK"					,"H","A000a000a"},
				 {"Supreme Rising Rage Flash"	,"H","S003a003a","S003b003b","S001e001e","S003c003c"}
				}
kadai[15][6]={
				 {"_NM_JHP"},
				 {"_NM_SCMK"},
				 {"_COMMON_L","_SP_REM1"},
				 {"_NM_SLK"},
				 {"_SA_REM2"}
				}
difficulty[15][6] = 4
comboTest[15][7]={
				 {"SCLP"					,"H","A00000000"},
				 {"SCLP"					,"H","A00000000"},
				 {"SCLK"					,"H","A00090009"},
				 {"Rising Rage Flash"	,"H","S001c001c","S001d001d","S001e001e","S001f001f"}
				}
kadai[15][7]={
				 {"_NM_SCLP"},
				 {"_NM_SCLP"},
				 {"_NM_SCLK"},
				 {"_SP_REM3"}
				}
difficulty[15][7] = 4
comboTest[16][5]={
				 {"Body Press(Cross-up)"	,"H","A00350029"},
				 {"CLP"						,"H","A00120012"},
				 {"CLP"						,"HR","A00120012"},
				 {"EX_Monster Lariat"		,"H","S001f001f"}
				}
kadai[16][5]={
				 {"_COMMON_ME","_TK_HUGO1"},
				 {"_NM_CLP"},
				 {"_NM_CLP"},
				 {"_COMMON_EX","_SP_HUGO6"}
				}
difficulty[16][5] = 4
comboTest[16][6]={
				 {"Gigas Breaker (Standing)"	,"H","T00180018"}
				}
kadai[16][6]={
				 {"_TR_HUGO1"}
				}
difficulty[16][6] = 5
comboTest[16][9]={
				 {"H_Giant Palm Bomber"		,"H","S001a001a"},
				 {"H_Giant Palm Bomber"		,"H","S001a001a"},
				 {"H_Giant Palm Bomber"		,"HR","S001a001a"},
				 {"EX_Giant Palm Bomber"	,"H","S001b001b"},
				 {"EX_Giant Palm Bomber"	,"H","S001b001b"},
				 {"EX_Giant Palm Bomber"	,"H","S001b001b"},
				 {"EX_Giant Palm Bomber"	,"H","S001b001b"},
				 {"EX_Giant Palm Bomber"	,"H","S001b001b"},
				 {"H_Giant Palm Bomber"		,"HR","S001a001a"}
				}
kadai[16][9]={
				 {"_COMMON_H","_SP_HUGO5"},
				 {"_COMMON_H","_SP_HUGO5"},
				 {"_COMMON_H","_SP_HUGO5"},
				 {"_COMMON_EX","_SP_HUGO5"},
				 {"_COMMON_EX","_SP_HUGO5"},
				 {"_COMMON_EX","_SP_HUGO5"},
				 {"_COMMON_EX","_SP_HUGO5"},
				 {"_COMMON_EX","_SP_HUGO5"},
				 {"_COMMON_H","_SP_HUGO5"}
				}
difficulty[16][9] = 5
comboTest[17][3]={
				 {"4LK"		,"H","A000b000b"},
				 {"4LK"		,"HR","A000b000b"},
				 {"SMP"		,"HR","A000b009c"},
				 {"Magnetic Storm"	,"H","S00240024","S00250025","S00260026"}
				}
kadai[17][3]={
				 {"_NM_4LK"},
				 {"_NM_4LK"},
				 {"_NM_SMP"},
				 {"_SA_NEC1"}
				}
difficulty[17][3] = 3
comboTest[17][9]={
				 {"1HP"		,"H","A001a001a"},
				 {"1HP"		,"H","A001a001a"},
				 {"1HP"		,"H","A001a001a"},
				 {"1HP"		,"H","A001a001a"},
				 {"1HP"		,"H","A001a001a"},
				 {"1HP"		,"H","A001a001a"},
				 {"Magnetic Storm"	,"H","S00240024","S00250025","S00260026"}
				}
kadai[17][9]={
				 {"_NM_1HP"},
				 {"_NM_1HP"},
				 {"_NM_1HP"},
				 {"_NM_1HP"},
				 {"_NM_1HP"},
				 {"_NM_1HP"},
				 {"_SA_NEC1"}
				}
difficulty[17][9] = 6
comboTest[19][4]={
				 {"H_Capture and Deadly Blow"			,"T","T000e000e"},
				 {"H_Dashing Head Attack (Cross-up)"	,"HR","S001a001a"},
				 {"H_Dashing Head Attack"				,"HR","S001a001a"},
				 {"Deadly Double Combination"			,"H","S00300030","S00310031","S00320032"}
				}
kadai[19][4]={
				 {"_COMMON_H","_SP_Q5"},
				 {"_COMMON_URA","_COMMON_H","_SP_Q1"},
				 {"_COMMON_H","_SP_Q1"},
				 {"_SA_Q2"}
				}
difficulty[19][4] = 4
comboTest[19][5]={
				 {"L_Capture and Deadly Blow"	,"T","T000c000c"},
				 {"SCLP"						,"H","A00000000"},
				 {"Deadly Double Combination"	,"H","S00300030","S00310031","S00320032"},
				 {"JHK"							,"H","A0046002e","A002e002e","A003a002e"}
				}
kadai[19][5]={
				 {"_COMMON_L","_SP_Q5"},
				 {"_NM_SCLP"},
				 {"_SA_Q2"},
				 {"_NM_JHK"}
				}
difficulty[19][5] = 4
comboTest[19][6]={
				 {"4MP (Kara Cancel)"			,"K","A00050005",0x6ADE,0x662E,60},
				 {"H_Capture and Deadly Blow"	,"T","T000e000e"}
				}
kadai[19][6]={
				 {"_COMMON_KARACAN","_NM_4MP"},
				 {"_COMMON_H","_SP_Q5"}
				}
difficulty[19][6] = 5
gaugeMaxflg = {
			{1, 1, 1, 1, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 1, 1, 0, 0, 1, 0, 0},
			{1, 1, 0, 0, 0, 0, 1, 0, 0, 0},
			{0, 0, 1, 0, 0, 0, 0, 0, 1, 0},
			{0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
			{0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{1, 0, 0, 1, 0, 1, 0, 0, 0, 0},
			{0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
			{0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 1, 1, 1, 1, 0, 0, 0}
}
gaugeMaxSeigenVal = {
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
			{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
}
comboIndex = 1
comboCleared = 0
input_upCount = 0
input_downCount = 0
input_leftCount = 0
input_rightCount = 0
input_startCount = 0
input_start = 0
input_startBefore = 0
input_buttonCount = 0
input_lpCount = 0
input_mpCount = 0
input_hpCount = 0
input_lkCount = 0
input_mkCount = 0
input_hkCount = 0
require "gd"
blank2 = gd.createFromPng("resources/trial/blank2.png"):gdStr()
new_combo_flg = 0 
saveTimer = -1
gui.register(function()
	game_phase = memory.readword(0x020154A6)
	if game_phase ~= GAME_PHASE_PLAYING 
		and game_phase ~= 6
		and game_phase ~= 3
		and game_phase ~= 7
		and game_phase ~= 8 then
		if new_combo_flg == 0 then
			savestate.load(savestate.create(trialChara*1000+trialNum+1))
			timeInMode2 = 0
		end
	end
	if timeInLua == -2 then
		imageLoad()
		mode = 1
		timeInMode = 1
		savestate.load(savestate.create(9999999))
		f = io.open("3rdtrial_savedata.txt", "r")
		for i=1 ,20 , 1 do
			for k=1,10,1 do
				oldKey[i][k] = readReverse(keyDataAddr+(0x10*i)+k,0x01)
				oldKey2[i][k] = readReverse(keyDataAddr2+(0x10*i)+k,0x01)
			end
		end
		lineNum = 0
		for line in f:lines() do
			subKeta = line % 10
			for i=0,10,1 do
				if i == subKeta+1 then
					break
				end
				line = math.floor (line / 10)
			end
			index = math.floor (lineNum / 10)
			num = math.floor (lineNum % 10)
			saveData[index+1][num+1] = line / (oldKey[index+1][num+1] * oldKey2[index+1][num+1])
				score = saveData[index+1][num+1] - oldKey[index+1][num+1]
			saveData[index+1][num+1] = score
			kaizanFlg = 0
			if saveData[index+1][num+1] % 1 ~= 0 or saveData[index+1][num+1] < 0 then
				print("データが壊れています。セーブデータ("..(index+1)..","..(num+1)..")のデータを破棄します")
				kaizanFlg = 1
				saveData[index+1][num+1] = 0
				score = 0
			end
			if lineNum == 190 then
				language = score
			end
			if lineNum == 191 then
				keyDisp = score
			end
			if lineNum == 192 then
				assist = score
			end
			if kaizanFlg == 1 then
				saveData[index+1][num+1] = 0
			end
			lineNum = lineNum + 1
		end
		f:close()
		for i=1 ,20 , 1 do
			for k=1,10,1 do
				newKey[i][k] = math.random(0xFF)
				newKey2[i][k] = math.random(0xFF)
			end
		end
		saveDataSaveFile()
		saveDataSaveMemory()
		keySaveMemory()
		savestate.save(savestate.create(9999999))
	end
	if mode == 0 then
		if keyDisp == 1 then
			keyDisplay4(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 1)
		elseif keyDisp == 2 then
			keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 0x206AA8D, 0x206AA8C)
		elseif keyDisp == 3 then
			keyDisplay4(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 1)
			keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 0x206AA8D, 0x206AA8C)
		end
		if assist == 1 then
			assistMode()
		end
	end
	if mantanFlg == 1 then
		memory.writebyte(0x02068D0B,0xA0)
		memory.writebyte(0x20695FD,0x00)
	end
	if timeInGame ~= memory.readbyte(0x02007F03) then
		if timeInLua == 0 then
			if new_combo_flg == 0 then
			end
		end
		if game_phase == 7 then
			timeInLua = -1
		end
		gaugeJudge()
		input_start = bitReturn(memory.readbyte(0x206AA8C),4)
		if input_start == 1 then
			if timeInLua > 0 then
				input_startCount = input_startCount + 1
			end
			if input_startCount == 60 then
				if new_combo_flg == 1 then
					saveTimer = 30
				end
			end
			timeInMode2 = 0
		else
			if mode == 0 and input_startCount > 0 and input_startCount < 20 then
				savestate.load(savestate.create(trialChara*1000+trialNum+1))
				saveDataSaveMemory()
				timeInLua = -1
				timeInMode2 = 0
				comboIndex = 1
				comboCleared = 0
			end
			input_startCount = 0
		end
		if saveTimer == 0 then
			savenum = trialChara*1000+trialNum+1
			savestate.save(savestate.create(savenum))
		end
		if mode == 0 and new_combo_flg == 0 then
			if input_startCount == 30 then
				if new_combo_flg == 0 then
					mode = 1
					timeInMode = -1
				end
			end
		elseif mode == 1 then
			if input_startCount == 1 then
				mode = 0
				timeInLua = -1
				timeInMode = -1
				comboIndex = 1
				input_startCount = 31
				trialFlg = 0
			end
		end
		if mode == 1 then
			writeReverse(0x0206A0FD,0x200,0x02)
			writeReverse(0x0206A121,0x200,0x02)
			if timeInMode == 0 then
				savestate.load(savestate.create(9999999))
				saveDataSaveMemory()
			end
			memory.writebyte(0x02068CB1,0x10)
			memory.writebyte(0x02069149,0x10)
		end
		if mode == 0 then
			if timeInMode == 0 then
				savestate.load(savestate.create(trialChara*1000+trialNum+1))
				timeInMode2 = 0
				saveDataSaveMemory()
				comboIndex = 1
				comboCleared = 0
			end
		end
		input_up = bitReturn(memory.readbyte(0x206AA8D),0)
		input_down = bitReturn(memory.readbyte(0x206AA8D),1)
		input_left = bitReturn(memory.readbyte(0x206AA8D),2)
		input_right = bitReturn(memory.readbyte(0x206AA8D),3)
		input_lp = bitReturn(memory.readbyte(0x206AA8D),4)
		input_mp = bitReturn(memory.readbyte(0x206AA8D),5)
		input_hp = bitReturn(memory.readbyte(0x206AA8D),6)
		input_lk = bitReturn(memory.readbyte(0x206AA8D),7)
		input_mk = bitReturn(memory.readbyte(0x206AA8D-1),0)
		input_hk = bitReturn(memory.readbyte(0x206AA8D-1),1)
		if input_up == 1 then
			input_upCount = input_upCount + 1
		else
			input_upCount = 0
		end	
		if input_down == 1 then
			input_downCount = input_downCount + 1
		else
			input_downCount = 0
		end	
		if input_left == 1 then
			input_leftCount = input_leftCount + 1
		else
			input_leftCount = 0
		end	
		if input_right == 1 then
			input_rightCount = input_rightCount + 1
		else
			input_rightCount = 0
		end
		if input_lp == 1 then
			input_lpCount = input_lpCount + 1
		else
			input_lpCount = 0
		end
		if input_mp == 1 then
			input_mpCount = input_mpCount + 1
		else
			input_mpCount = 0
		end
		if input_hp == 1 then
			input_hpCount = input_hpCount + 1
		else
			input_hpCount = 0
		end
		if input_lk == 1 then
			input_lkCount = input_lkCount + 1
		else
			input_lkCount = 0
		end
		if input_mk == 1 then
			input_mkCount = input_mkCount + 1
		else
			input_mkCount = 0
		end
		if input_hk == 1 then
			input_hkCount = input_hkCount + 1
		else
			input_hkCount = 0
		end
		if input_lp == 1 or input_mp == 1 or input_hp == 1 or input_lk == 1 or input_mk == 1 or input_hk == 1 then
			input_buttonCount = input_buttonCount + 1
		else
			input_buttonCount = 0
		end
		if mode == 1 then
			if (input_lpCount > 0 and input_lpCount < 4) 
				and  (input_lkCount > 0 and input_lkCount < 4) then
				language = language + 1
				if language > languageMax then
					language = 0
				end
				saveData[20][1] = language
				saveDataSaveFile()
				input_lpCount = 4
				input_lkCount = 4
			end
			if (input_mpCount > 0 and input_mpCount < 4) 
				and  (input_mkCount > 0 and input_mkCount < 4) then
				keyDisp = keyDisp + 1
				if keyDisp > keyDispMax then
					keyDisp = 0
				end
				saveData[20][2] = keyDisp
				saveDataSaveFile()
				input_mpCount = 4
				input_mkCount = 4
			end
			if (input_hpCount > 0 and input_hpCount < 4) 
				and  (input_hkCount > 0 and input_hkCount < 4) then
				assist = assist + 1
				if assist > assistMax then
					assist = 0
				end
				saveData[20][3] = assist
				saveDataSaveFile()
				input_hpCount = 4
				input_hkCount = 4
			end
			if input_rightCount == 1 then
				cursor[trialCharaTemp][trialNumTemp] = 0
				while true do
					trialNumTemp = trialNumTemp + 1
					if trialNumTemp == 11 then
						trialNumTemp = 1
					end
					if #comboTest[trialCharaTemp][trialNumTemp] ~= 0 then
						break
					end
				end
				cursor[trialCharaTemp][trialNumTemp] = 1
			end
			if input_leftCount == 1 then
				cursor[trialCharaTemp][trialNumTemp] = 0
				while true do
					trialNumTemp = trialNumTemp - 1
					if trialNumTemp == 0 then
						trialNumTemp = 10
					end
					if #comboTest[trialCharaTemp][trialNumTemp] ~= 0 then
						break
					end
				end
				cursor[trialCharaTemp][trialNumTemp] = 1
			end
			if input_upCount == 1 then
				cursor[trialCharaTemp][trialNumTemp] = 0
				while true do
					trialCharaTemp = trialCharaTemp - 1
					if trialCharaTemp == 0 then
						trialCharaTemp = 19
					end
					if #comboTest[trialCharaTemp][trialNumTemp] ~= 0 then
						break
					end
					breakFlg = 0
					for i=0, 10, 1 do
						search = trialNumTemp - i
						if search < 1 then
							search = 1
						end
						if #comboTest[trialCharaTemp][search] ~= 0 then
							trialNumTemp = search
							breakFlg = 1
							break
						end
						search = trialNumTemp + i
						if search > 10 then
							search = 10
						end
						if #comboTest[trialCharaTemp][search] ~= 0 then
							trialNumTemp = search
							breakFlg = 1
							break
						end
					end
					if breakFlg == 1 then
						break
					end
				end
				cursor[trialCharaTemp][trialNumTemp] = 1
			end
			if input_downCount == 1 then
				cursor[trialCharaTemp][trialNumTemp] = 0
				while true do
					trialCharaTemp = trialCharaTemp + 1
					if trialCharaTemp == 20 then
						trialCharaTemp = 1
					end
					if #comboTest[trialCharaTemp][trialNumTemp] ~= 0 then
						break
					end
					breakFlg = 0
					for i=0, 10, 1 do
						search = trialNumTemp - i
						if search < 1 then
							search = 1
						end
						if #comboTest[trialCharaTemp][search] ~= 0 then
							trialNumTemp = search
							breakFlg = 1
							break
						end
						search = trialNumTemp + i
						if search > 10 then
							search = 10
						end
						if #comboTest[trialCharaTemp][search] ~= 0 then
							trialNumTemp = search
							breakFlg = 1
							break
						end
					end
					if breakFlg == 1 then
						break
					end
				end
				cursor[trialCharaTemp][trialNumTemp] = 1
			end
				comboIndex = 1
				trialChara = trialCharaTemp
				trialNum = trialNumTemp
		end
		tobiIDInGame = 0
		tobiHitFlgInGame = 0
		tobiHitLogFlg = 0
		hitWaza = ""
		dashiteruWaza = ""
		if mantanFlg == 1 then
			memory.writebyte(0x02011377,0x64)
		end
		wazaTotalNum = 0
		for i=0, 0x200, 1 do
			wazaTotalNum = wazaTotalNum + memory.readbyte(0x02011000+i)
		end
		totalHitNum1to2 = memory.readbyte(0x02010CA5)
		comboAddFlg = false
		if (comboNum ~= memory.readbyte(0x020696C5) and memory.readbyte(0x020696C5) > 0) or (comboNum == 1 and memory.readbyte(0x020696C5) == 1 and totalHitNum1to2 ~= totalHitNum1to2Before) then
			comboAddFlg = true
			comboNum = memory.readbyte(0x020696C5)
		end
		if memory.readbyte(0x020696C5) == 0 then
			comboNum = 0
		end
		ActionType1P = readReverse(0x02068E73,0x01)
		ActionSub1P = readReverse(0x02068D1B,0x02)
		Action1P = readReverse(0x02068E75,0x02)
		anime1P = readReverse(0x02068EA1,0x02)
		direction1P = memory.readbyte(0x02068C76)
		commandDir1P = readReverse(0x02068C77,0x01)
		x1P = readReverse(0x02068CD1,2)
		y1P = readReverse(0x02068CD5,2)
		ActionType2P = readReverse(0x0206930B,0x01)
		ActionSub2P = readReverse(0x020691B3,0x02)
		Action2P = readReverse(0x0206930D,0x02)
		anime2P = readReverse(0x0206931F,0x02)
		hitboxNage2P = readReverse(0x20693BF,0x04)
		direction2P = memory.readbyte(0x0206910E)
		commandDir2P = readReverse(0x0206910F,0x01)
		x2P = readReverse(0x02069169,2)
		y2P = readReverse(0x0206916D,2)
		parryNum1P = readReverse(0x02010CAD,0x01) + readReverse(0x02010CAF,0x01)
		x1P2PdiffAbs = math.abs(x2P - x1P)
		x1P2Pdiff = x2P - x1P
		if ActionType1P == 1 then
			ActionType1PJapanese ="G"
		elseif ActionType1P == 2 then
			ActionType1PJapanese = "T"
		elseif ActionType1P == 4 then
			ActionType1PJapanese = "A"
		elseif ActionType1P == 5 then
			ActionType1PJapanese = "S"
		else
			ActionType1PJapanese = "N"
		end
		if ActionType2P == 1 then
			ActionType2PJapanese ="G"
		elseif ActionType2P == 2 then
			ActionType2PJapanese = "T"
		elseif ActionType2P == 4 then
			ActionType2PJapanese = "A"
		elseif ActionType2P == 5 then
			ActionType2PJapanese = "S"
		else
			ActionType2PJapanese = "N"
		end
		Action1Ptxt = ActionType1PJapanese.." "..string.format("%04x",ActionSub1P).." "..string.format("%04x",Action1P)
		Action2Ptxt = ActionType2PJapanese.." "..string.format("%04x",ActionSub2P).." "..string.format("%04x",Action2P)
		ActionDetail1P = ActionType1PJapanese..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P)
		ActionDetail2P = ActionType2PJapanese..string.format("%04x",ActionSub2P)..string.format("%04x",Action2P)
		if new_combo_flg == 0 then
			move2P()
		end
		jotai()
		dashiteruWaza = ActionType1PJapanese..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P)
		read_misc_objects(comboTest[trialChara][trialNum][comboIndex])
		sonota()
		if comboAddFlg == true then
			if tobiHitFlgInGame == 1 then
				if tobiHitLogFlg == 1 then
					comboLogIndex = comboLogIndex + 1
					comboLog[comboLogIndex] = string.format("%02d",comboLogIndex).." fireball ID:"..string.format("%04x",tobiIDInGame).."  is hit."
					hitWaza = "F"..string.format("%04x",tobiIDInGame)
				end
			else
				if ActionType1P == 2 then
					comboLogIndex = comboLogIndex + 1
					comboLog[comboLogIndex] = string.format("%02d",comboLogIndex).." throw    ID:"..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P).."  is hit."
					hitWaza = ActionType1PJapanese..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P)
				elseif ActionType1P == 4 then
					comboLogIndex = comboLogIndex + 1
					comboLog[comboLogIndex] = string.format("%02d",comboLogIndex).." attack   ID:"..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P).."  is hit."
					hitWaza = ActionType1PJapanese..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P)
				elseif ActionType1P == 5 then
					comboLogIndex = comboLogIndex + 1
					comboLog[comboLogIndex] = string.format("%02d",comboLogIndex).." special  ID:"..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P).."  is hit."
					hitWaza = ActionType1PJapanese..string.format("%04x",ActionSub1P)..string.format("%04x",Action1P)
				end
			end
			if comboIndex ~= #comboTest[trialChara][trialNum]+1 then
				kadaiType  = comboTest[trialChara][trialNum][comboIndex][kadaiNum-1]
			end
			if kadaiType ~= "T" and comboNum <= comboNumBefore then
				comboEnd()
			end
			if comboIndex ~= #comboTest[trialChara][trialNum]+1 then
				for i=kadaiNum,#comboTest[trialChara][trialNum][comboIndex],1 do
					if kadaiType == "H" or kadaiType == "T" or kadaiType == "HR" then
						if hitWaza == comboTest[trialChara][trialNum][comboIndex][i] then
							if ((kadaiType == "H" or kadaiType == "T")and wazaTotalNum ~= wazaTotalNumBefore) or kadaiType == "HR"  then
								if kadaiTokubetsuJudge() then
									comboIndex = comboIndex + 1
									wazaTotalNumBefore = wazaTotalNum
									break
								end
							end
						end
					end
					if comboTest[trialChara][trialNum][comboIndex][kadaiNum-1] == "F" then
						if hitWaza == comboTest[trialChara][trialNum][comboIndex][i] then
							if kadaiTokubetsuJudge() then
								comboIndex = comboIndex + 1
								break
							end
						end
					end
				end
			end
		else
			if comboIndex ~= #comboTest[trialChara][trialNum]+1 then
				if comboTest[trialChara][trialNum][comboIndex][kadaiNum-1] == "D" then
					for i=kadaiNum,#comboTest[trialChara][trialNum][comboIndex],1 do
						if dashiteruWaza == comboTest[trialChara][trialNum][comboIndex][i] then
							if kadaiTokubetsuJudge() then
								comboIndex = comboIndex + 1
								break
							end
						end
					end
				elseif comboTest[trialChara][trialNum][comboIndex][kadaiNum-1] == "J" then
					for i=kadaiNum,#comboTest[trialChara][trialNum][comboIndex],1 do
						if dashiteruWaza == comboTest[trialChara][trialNum][comboIndex][i] then
							if kadaiTokubetsuJudge() then
								trialTimer = comboTest[trialChara][trialNum][comboIndex][kadaiNum+1]
								comboIndex = comboIndex + 1
								break
							end
						end
					end
				elseif comboTest[trialChara][trialNum][comboIndex][kadaiNum-1] == "K" then
					if dashiteruWaza == comboTest[trialChara][trialNum][comboIndex][kadaiNum] then
						if kadaiTokubetsuJudge() then
							if anime1P == comboTest[trialChara][trialNum][comboIndex][kadaiNum+1] then
								trialTimer = comboTest[trialChara][trialNum][comboIndex][kadaiNum+3]
								comboIndex = comboIndex + 1
							end
						end
					end
				end
			end
			if comboIndex == #comboTest[trialChara][trialNum]+1 then
				if comboCleared == 0 then
					if saveData[trialChara][trialNum] < 99 then
						saveData[trialChara][trialNum] = saveData[trialChara][trialNum] + 1
					end
					saveDataSaveFile()
					saveDataSaveMemory()
				end
				comboCleared = 1
			end
		end
		for i=1,#comboLog,1 do
		end
		if comboIndex > 1 then
			if comboTest[trialChara][trialNum][comboIndex-1][kadaiNum-1] == "K" and (trialTimer == 0 or anime1P == comboTest[trialChara][trialNum][comboIndex-1][kadaiNum+2]) then
				comboEnd()
			end
		end
		if comboIndex > 1 then
			if comboTest[trialChara][trialNum][comboIndex-1][kadaiNum-1] == "J" and trialTimer == 0 then
				comboEnd()
			end
		end
		if comboNum == 0 and comboNumBefore > 0 then
			comboEnd()
		end
		totalHitNum1to2Before = totalHitNum1to2
		comboNumBefore = comboNum
		timeInGame = memory.readbyte(0x02007F03)
		timeInLua = timeInLua + 1
		lifeZeroTimer = lifeZeroTimer - 1
		saveTimer = saveTimer - 1
		input_startBefore = input_start
		timeInMode = timeInMode + 1
		timeInMode2 = timeInMode2 + 1
		trialTimer = trialTimer - 1
		if lifeZeroTimer < 0 and comboNum == 0 then
			if mantanFlg == 1 then
				life2P = memory.readbyte(0x020691A3)
				if life2P >= 0xA0 then
					life2P = 0xA0
				else
					life2P = life2P + lifeRecoverySpeed
				end
				memory.writebyte(0x020691A3,life2P)
			end
		end
	end
	kadaiOffset = 12
	if mode == 0 then
		gui.text(44,35,"trial "..trialChara.."-"..trialNum.."  cleared:"..saveData[trialChara][trialNum])
		gui.text(10,4,"press start button: restart. hold:go to menu.")
		for i=1,#comboTest[trialChara][trialNum],1 do
			offsetX = kadaiOffset
			WorR = "W"
			color = "white"
			if i < comboIndex then
				WorR = "R"
				color = "red"
			end
			for k=1,#kadai[trialChara][trialNum][i],1 do
				if language == 0 then
					kadaiImageDraw(10+offsetX,40+(i*12),WorR,kadai[trialChara][trialNum][i][k])
					if kadai[trialChara][trialNum][i][k] == "_COMMON_ME" then
						offsetX = offsetX + 36
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_KARABURI" then
						offsetX = offsetX + 42
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_URA" then
						offsetX = offsetX + 56
					elseif kadai[trialChara][trialNum][i][k] == "_COMMON_ANTI_AIR" then
						offsetX = offsetX + 80
					elseif kadai[trialChara][trialNum][i][k] == "_COMMON_KARACAN" then
						offsetX = offsetX + 64
					elseif kadai[trialChara][trialNum][i][k] == "_COMMON_JS" or kadai[trialChara][trialNum][i][k] == "_COMMON_JN" then
						offsetX = offsetX + 24
					else
						offsetX = offsetX + 16
					end
				elseif language == 1 then
					gui.text(offsetX+10,40+(i*10),""..comboTest[trialChara][trialNum][i][1], color)
				end
			end
			 if gaugeMaxSeigenVal[trialChara][trialNum] ~= 0xFFFF then
			 	if language == 0 then
				 	gui.image(158,206,GAUGE_SEIGEN_J)
				 elseif language == 1 then
				 	gui.image(156,208,GAUGE_SEIGEN_E)
				 end
			 end
			 if gaugeMaxflg[trialChara][trialNum] == 1 then
			 	if language == 0 then
				 	gui.image(164,206,GAUGE_INF_J)
				 elseif language == 1 then
				 	gui.image(154,208,GAUGE_INF_E)
				 end
			 end
		end
	elseif mode == 1 then
		gui.text(44,35,"trial "..trialCharaTemp.."-"..trialNumTemp.."  cleared:"..saveData[trialCharaTemp][trialNumTemp])
		for i=1,#comboTest[trialCharaTemp][trialNumTemp],1 do
			offsetX = kadaiOffset
			WorR = "W"
			color = "white"
			for k=1,#kadai[trialCharaTemp][trialNumTemp][i],1 do
				if language == 0 then
					kadaiImageDraw(10+offsetX,40+(i*12),WorR,kadai[trialCharaTemp][trialNumTemp][i][k])
					if kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_ME" then
						offsetX = offsetX + 36
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_KARABURI" then
						offsetX = offsetX + 42
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_URA" then
						offsetX = offsetX + 56
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_ANTI_AIR" then
						offsetX = offsetX + 80
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_KARACAN" then
						offsetX = offsetX + 64
					elseif kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_JS" or kadai[trialCharaTemp][trialNumTemp][i][k] == "_COMMON_JN" then
						offsetX = offsetX + 24
					else
						offsetX = offsetX + 16
					end
				elseif language == 1 then
					gui.text(offsetX+10,40+(i*10),""..comboTest[trialCharaTemp][trialNumTemp][i][1], color)
				end
			end
		end
	end
	if mode == 1 then
		offsetX = 3
		offsetY = 5
		gui.image(offsetX+29,offsetY-3,MENU_TITLE)
		gui.image(offsetX+0,offsetY+0,MENU)
		gui.image(offsetX+234+trialNum*12,offsetY+7+trialChara*10,MENU_SHIKAKU_RED)
		gui.image(offsetX+5,offsetY+163,MENU_DIFFICULTY)
		gui.image(offsetX+7,offsetY+181,comment[trialCharaTemp][trialNumTemp])
		buttonOffsetX = 77
		buttonOffsetY = 100
		gui.image(buttonOffsetX-4,buttonOffsetY+1,MENU_BUTTON_BOX)
		gui.text(buttonOffsetX,buttonOffsetY+4,"button")
		gui.text(buttonOffsetX+36,buttonOffsetY+4,"name")
		gui.text(buttonOffsetX+68,buttonOffsetY+4,"current")
		buttonOffsetY = buttonOffsetY + 15
		gui.image(buttonOffsetX,buttonOffsetY,MENU_CHANGE_LANGUAGE_BUTTON)
		gui.text(buttonOffsetX+27,buttonOffsetY+4,"language")
		if language == 0 then
			gui.text(buttonOffsetX+66,buttonOffsetY+4,"Japanese")
		elseif language == 1 then
			gui.text(buttonOffsetX+68,buttonOffsetY+4,"English")
		end
		buttonOffsetY = buttonOffsetY + 15
		gui.image(buttonOffsetX,buttonOffsetY,MENU_KEY_DISP_BUTTON)
		gui.text(buttonOffsetX+30,buttonOffsetY+4,"keydisp")
		gui.text(buttonOffsetX+68,buttonOffsetY+4,"A")
		gui.text(buttonOffsetX+84,buttonOffsetY+4,"B")
		if keyDisp == 0 then
			gui.image(buttonOffsetX+68,buttonOffsetY-1,MENU_SWITCH_OFF)
			gui.image(buttonOffsetX+84,buttonOffsetY-1,MENU_SWITCH_OFF)
		elseif keyDisp == 1 then
			gui.image(buttonOffsetX+68,buttonOffsetY-1,MENU_SWITCH_ON)
			gui.image(buttonOffsetX+84,buttonOffsetY-1,MENU_SWITCH_OFF)
		elseif keyDisp == 2 then
			gui.image(buttonOffsetX+68,buttonOffsetY-1,MENU_SWITCH_OFF)
			gui.image(buttonOffsetX+84,buttonOffsetY-1,MENU_SWITCH_ON)
		elseif keyDisp == 3 then
			gui.image(buttonOffsetX+68,buttonOffsetY-1,MENU_SWITCH_ON)
			gui.image(buttonOffsetX+84,buttonOffsetY-1,MENU_SWITCH_ON)
		end
		buttonOffsetY = buttonOffsetY + 15
		gui.image(buttonOffsetX,buttonOffsetY,MENU_ASSIST_BUTTON)
		gui.text(buttonOffsetX+32,buttonOffsetY+4,"assist")
		if assist == 0 then
			gui.image(buttonOffsetX+73,buttonOffsetY-1,MENU_SWITCH_OFF)
		elseif assist == 1 then
			gui.image(buttonOffsetX+73,buttonOffsetY-1,MENU_SWITCH_ON)
		end
		for i=0, difficulty[trialCharaTemp][trialNumTemp]-1, 1 do
			gui.image(offsetX+75+(14*i),offsetY+166,MENU_STAR)
		end
		for i=1, 19,1 do
			for k=1,#comboTest[i],1 do
				if cursor[i][k] == 1 then
					gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU_CURCOR)
				end
				if #comboTest[i][k] ~= 0 then
					if saveData[i][k]+0 == 0 then
						gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU)
					elseif saveData[i][k]+0 < 5 then
						gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU_CHECKED1_GREEN)
					elseif saveData[i][k]+0 < 25 then
						gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU_CHECKED3_BLUE)
					elseif saveData[i][k]+0 < 99 then
						gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU_CHECKED2_YELLOW)
					else
						gui.image(offsetX+234+k*12,offsetY+7+i*10,MENU_SHIKAKU_CHECKED4_PINK)
					end
				end
			end
		end
	end
end)
function comboEnd()
	comboLog = {}
	comboLogIndex = 0
	if comboIndex ~= #comboTest[trialChara][trialNum]+1 then
		comboIndex = 1
	end
	lifeZeroTimer = 24
	writeReverse(0x02069612,stunMinimum,0x02)
	for i=0, 0x200, 1 do
		memory.writebyte(0x02011000+i,0)
	end
	wazaTotalNumBefore = 0
	totalHitNum1to2 = 0
	totalHitNum1to2Before = 0
	memory.writebyte(0x02010CA5,0x00)
end
MAX_GAME_OBJECTS = 30
function read_misc_objects(comboTestTemp)
	local obj_index
	local obj_addr
	local list = 3
	num_misc_objs = 1
	obj_index = memory.readwordsigned(0x02068A96 + (list * 2))
	while num_misc_objs <= MAX_GAME_OBJECTS and obj_index ~= -1 do
		obj_addr = 0x02028990 + (obj_index * 0x800)
		tobiID = read(obj_addr+0x04,0x02)
		p_hb_addr = memory.readdword(obj_addr + 0x2A0)
		tobiHitFlg = 0
		tobiHitFlgHantei = 0
		if p_hb_addr ~= 0 then
			tobiHitFlg = memory.readbyte(obj_addr+0x189)
			if tobiHitFlg ~= memory.readbyte(obj_addr+0x189+0x04) then
				tobiIDInGame = tobiID
				tobiHitFlgInGame = 1
				if memory.readbyte(obj_addr+0x189+0x06) == 0 then
					tobiHitLogFlg = 1
				end
				if comboTestTemp ~= nil then
					for k=kadaiNum,#comboTestTemp,1 do
						if "F"..string.format("%04x",tobiIDInGame) == comboTestTemp[k] then
							memory.writebyte(obj_addr+0x189+0x06,1)
						end
					end
				end
			end
			memory.writebyte(obj_addr+0x189+0x04,memory.readbyte(obj_addr+0x189))
		else
		end
		obj_index = memory.readwordsigned(obj_addr + 0x1C)
		if obj_index == -1 then
		end
	end
end
function writeReverse(addr,value,byte)
	for i=1,byte,1 do
			memory.writebyte(addr,(value % 0x100))
		addr = addr - 1
		value = ((value-(value%0x100)) / 0x100)
	end
end
function gaugeMax()
	gauge = memory.readbyte(0x020286AD)
	memory.writebyte(0x02028695,0xFF)
	memory.writebyte(0x020695B5,0xFF)
	memory.writebyte(0x020286AB,gauge)
	memory.writebyte(0x020695BF,gauge)
	memory.writebyte(0x020695BD,gauge)
end
function viewMemory(addr)
	for i=0,20,1 do
		gui.text(10,14+i*8,num2hex(addr+(i*0x10)))
		for j=0,15,1 do
			gui.text(48+j*16,4,num2hex(j))
			gui.text(48+j*16,14+i*8,num2hex(memory.readbyte((addr)+j+(i*0x10))))
		end	
	end
end
function num2hex(num)    
	local hexstr = '0123456789ABCDEF'    
	local s = ''    
	while num > 0 do        
		local mod = math.fmod(num, 16)        
		s = string.sub(hexstr, mod+1, mod+1) .. s        
		num = math.floor(num / 16)    
	end  
	  
	if s == '' then
		s = '0'
	end    
	return s
end
function read(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = value + (memory.readbyte(addr+i-1) * 0x100^(i-1))
	end
	return value
end
function readReverse(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = value + (memory.readbyte(addr-(i-1)) * (0x100^(i-1)))
	end
	return value
end
function bitReturn(value,bitnum)
	re = value
	re = SHIFT(re,bitnum-31)
	re = SHIFT(re,31)
	return re
end
function noInput()
	inputTub["Diagnostic"]=false
	inputTub["P1 Coin"]=false
	inputTub["P1 Down"]=false
	inputTub["P1 Left"]=false
	inputTub["P1 Medium Kick"]=false
	inputTub["P1 Medium Punch"]=false
	inputTub["P1 Right"]=false
	inputTub["P1 Start"]=true
	inputTub["P1 Strong Kick"]=false
	inputTub["P1 Strong Punch"]=false
	inputTub["P1 Up"]=false
	inputTub["P1 Weak Kick"]=false
	inputTub["P1 Weak Punch"]=false
	inputTub["P2 Coin"]=false
	inputTub["P2 Down"]=false
	inputTub["P2 Left"]=false
	inputTub["P2 Medium Kick"]=false
	inputTub["P2 Medium Punch"]=false
	inputTub["P2 Right"]=false
	inputTub["P2 Start"]=false
	inputTub["P2 Strong Kick"]=false
	inputTub["P2 Strong Punch"]=false
	inputTub["P2 Up"]=false
	inputTub["P2 Weak Kick"]=false
	inputTub["P2 Weak Punch"]=false
	inputTub["Region"]=1
	inputTub["Reset"]=false
	inputTub["Service"]=false
end
function kadaiTokubetsuJudge()
	if trialChara == 1 and trialNum == 2 and comboIndex == 1 then
		if direction1P == direction2P then
			return true
		end
	elseif trialChara == 1 and trialNum == 4 and comboIndex == 1 then
		if trialTimer > 0 then
			return true
		end
	elseif trialChara == 3 and trialNum == 1 and comboIndex == 1 then
		if chuashiCount >= 12 and chuashiCount <= 28 then
			return true
		end
	elseif trialChara == 3 and trialNum == 7 and comboIndex == 1 then
		if direction1P == commandDir2P then
			return true
		end
	elseif trialChara == 3 and trialNum == 8 and comboIndex == 1 then
		if parryNum1P == 15 then
			return true
		end
	elseif trialChara == 15 and trialNum == 1 and comboIndex == 1 then
		if y2P > 0 then
			return true
		end
	elseif trialChara == 16 and trialNum == 5 and comboIndex == 1 then
		if direction1P == commandDir2P then
			return true
		end
	elseif trialChara == 16 and trialNum == 6 and comboIndex == 1 then
		if trialFlg == 0 then
			return true
		end
	elseif trialChara == 19 and trialNum == 4 and comboIndex == 2 then
		if direction1P == commandDir2P then
			return true
		end
	else
		return true
	end
	return false
end
function countInput(table)
	count = 0
	for i=1,#table,1 do
		if #table[i] ~= 0 then
			count = count + 1
		end
	end
	return count
end
function move2P()
	inputCount = countInput(inputList2P)
	romdom1 = math.random(100)-1
	romdom2 = math.random(100)-1
	startTimer = 10
	if ActionDetail2P ~= "G00460046" then
		if trialChara == 1 and trialNum == 2 then
			if timeInLua >= startTimer then
				chuashiDiff = 0x80
				if x1P2PdiffAbs > chuashiDiff then
					if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
						inputAdd(inputList2P,{6, 0,0,0, 0,0,0, 0,0,1,1})
					end
				end
				if x1P2PdiffAbs <= chuashiDiff then
					if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
						inputAdd(inputList2P,{2, 0,0,0, 0,1,0, 0,0,1,1})
						inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,1,1})
					end
				end
				if ActionDetail1P == "G00020002" and ActionDetail2P == "A001e001e" then
					if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
						inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,3,1})
						inputAdd(inputList2P,{1, 0,0,0, 0,0,0, 0,0,1,1})
						inputAdd(inputList2P,{4, 0,0,0, 0,0,1, 0,0,1,1})
						inputAdd(inputList2P,{4, 0,0,0, 0,0,0, 0,0,75,1})
						inputAdd(inputList2P,{5, 0,0,0, 0,0,0, 0,0,30,1})
					end
				end
			end
		elseif trialChara == 1 and trialNum == 4 then
			if x1P2PdiffAbs < 76 and y1P == 0 then
				inputAdd(inputList2P,{5, 0,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{6, 1,0,0, 1,0,0, 0,0,1,1})
			else
				inputClear(inputList2P,1)
			end
		elseif trialChara == 3 and trialNum == 1 then
			chuashiDiff = 0x90
			chuashiKakuritu = 10
			moveApproaches = x1P2PdiffAbs - (chuashiDiff - 50)
			if romdom1 > moveApproaches then
				if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
					if inputCount == 1 and inputList2P[1][10] == 1 then
					end
					inputAdd(inputList2P,{4, 0,0,0, 0,0,0, 0,0,8,1})
				end
			else
				if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
					if inputCount == 1 and inputList2P[1][10] == 1 then
					end
					inputAdd(inputList2P,{6, 0,0,0, 0,0,0, 0,0,8,1})
				end
			end
			if x1P2PdiffAbs >= (chuashiDiff+0x08) and x1P2PdiffAbs <= (chuashiDiff+0x10) then
					if romdom2 >= (100-chuashiKakuritu) then
						if ActionDetail2P ~= "A001e001e" then
						inputClear(inputList2P,1)
						chuashiCount = 0
							inputAdd(inputList2P,{2, 0,0,0, 0,1,0, 0,0,1,1})
						end
					end
			end
			chuashiCount = chuashiCount + 1
		elseif trialChara == 1 and trialNum == 3 then
			inputAdd(inputList2P,{7, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 4 and trialNum == 9 then
			inputAdd(inputList2P,{7, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 5 and trialNum == 3 then
			inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 7 and trialNum == 3 then
			inputAdd(inputList2P,{7, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 13 and trialNum == 8 then
			inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 15 and trialNum == 1 then
			inputAdd(inputList2P,{8, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 16 and trialNum == 9 then
			inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,1,1})
		elseif trialChara == 3 and trialNum == 8 then
			if timeInMode2 == 40 then
				inputAdd(inputList2P,{5, 1,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{4, 0,0,0, 0,0,0, 0,0,24,1})
				inputAdd(inputList2P,{5, 1,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{1, 0,0,0, 0,0,0, 0,0,24,1})
				inputAdd(inputList2P,{6, 0,0,0, 0,0,1, 0,0,1,1})
				inputAdd(inputList2P,{4, 0,0,0, 0,0,0, 0,0,40,1})
				inputAdd(inputList2P,{5, 1,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{3, 0,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{6, 0,0,0, 0,0,0, 0,0,1,1})
				inputAdd(inputList2P,{5, 0,0,0, 0,0,0, 0,0,8,1})
				inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,4,1})
				inputAdd(inputList2P,{3, 0,0,0, 1,0,0, 0,0,1,1})
			end
		elseif (trialChara == 9 and trialNum == 6)
			or (trialChara == 9 and trialNum == 7)
			or (trialChara == 9 and trialNum == 9)
			or (trialChara == 9 and trialNum == 10) then
			sekkin(0x60,0x44,0)
		elseif trialChara == 9 and trialNum == 8 then
			sekkin(0x60,0x37,1)
		elseif trialChara == 11 and trialNum == 3 then
			sekkin(0x60,0x2E,0)
		elseif trialChara == 16 and trialNum == 6 then
			sekkin(0xB0,0x68,0)
		end
	end
	if timeInLua < startTimer then
		inputClear(inputList2P,9)
	end
	input_up = bitReturn(memory.readbyte(0x0202568F),0)
	input_down = bitReturn(memory.readbyte(0x0202568F),1)
	input_left = bitReturn(memory.readbyte(0x0202568F),2)
	input_right = bitReturn(memory.readbyte(0x0202568F),3)
	input_lp = bitReturn(memory.readbyte(0x0202568F),4)
	input_mp = bitReturn(memory.readbyte(0x0202568F),5)
	input_hp = bitReturn(memory.readbyte(0x0202568F),6)
	input_lk = bitReturn(memory.readbyte(0x0202568F-1),0)
	input_mk = bitReturn(memory.readbyte(0x0202568F-1),1)
	input_hk = bitReturn(memory.readbyte(0x0202568F-1),2)
	if inputCount ~= 0 then
		keytable = {}
		if inputList2P[1][1] == 1 then
			keytable["P2 Down"] = true
			if commandDir2P == 1 then
				keytable["P2 Left"] = true
			else
				keytable["P2 Right"] = true
			end
		elseif inputList2P[1][1] == 2 then
			keytable["P2 Down"] = true
		elseif inputList2P[1][1] == 3 then
			keytable["P2 Down"] = true
			if commandDir2P == 1 then
				keytable["P2 Right"] = true
			else
				keytable["P2 Left"] = true
			end
		elseif inputList2P[1][1] == 4 then
			if commandDir2P == 1 then
				keytable["P2 Left"] = true
			else
				keytable["P2 Right"] = true
			end
		elseif inputList2P[1][1] == 5 then
		elseif inputList2P[1][1] == 6 then
			if commandDir2P == 1 then
				keytable["P2 Right"] = true
			else
				keytable["P2 Left"] = true
			end
		elseif inputList2P[1][1] == 7 then
			keytable["P2 Up"] = true
			if commandDir2P == 1 then
				keytable["P2 Left"] = true
			else
				keytable["P2 Right"] = true
			end
		elseif inputList2P[1][1] == 8 then
			keytable["P2 Up"] = true
		elseif inputList2P[1][1] == 9 then
			keytable["P2 Up"] = true
			if commandDir2P == 1 then
				keytable["P2 Right"] = true
			else
				keytable["P2 Left"] = true
			end
		end
		if inputList2P[1][2] == 1 then
			keytable["P2 Weak Punch"] = true
		end
		if inputList2P[1][3] == 1 then
			keytable["P2 Medium Punch"] = true
		end
		if inputList2P[1][4] == 1 then
			keytable["P2 Strong Punch"] = true
		end
		if inputList2P[1][5] == 1 then
			keytable["P2 Weak Kick"] = true
		end
		if inputList2P[1][6] == 1 then
			keytable["P2 Medium Kick"] = true
		end
		if inputList2P[1][7] == 1 then
			keytable["P2 Strong Kick"] = true
		end
		if inputList2P[1][8] == 1 then
			keytable["P2 Start"] = true
		end
		if inputList2P[1][9] == 1 then
			keytable["P2 Coin"] = true
		end
		inputCount = countInput(inputList2P)
		for i=1, #inputList2P, 1 do
			if #inputList2P[i] ~= 0 then
			else
				break
			end
		end
		joypad.set(keytable)
		if inputCount > 0 then
			inputList2P[1][10] = inputList2P[1][10] - 1
			if inputList2P[1][10] == 0 then
				for i=2, #inputList2P, 1 do
					inputList2P[i-1] = inputList2P[i]
				end
				inputList2P[#inputList2P]={}
			end
			for i=2, #inputList2P, 1 do
				if inputList2P[i-1] == {} then
					for k=i, #inputList2P, 1 do
						inputList2P[k-1] = inputList2P[k]
					end
				end
			end
		end
	end	
end
function sekkin(dash,distance,syagamu)
	if x1P2PdiffAbs > dash then
		inputClear(inputList2P,1)
		inputCount = countInput(inputList2P)
		if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
			inputAdd(inputList2P,{6, 0,0,0, 0,0,0, 0,0,1,2})
			inputAdd(inputList2P,{0, 0,0,0, 0,0,0, 0,0,1,2})
		end
	elseif x1P2PdiffAbs > distance then
		if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
			inputAdd(inputList2P,{6, 0,0,0, 0,0,0, 0,0,12,1})
		end
	else
		inputClear(inputList2P,1)
		inputCount = countInput(inputList2P)
		if inputCount == 0 or (inputCount == 1 and inputList2P[1][10] == 1) then
			if syagamu == 1 then
				inputAdd(inputList2P,{2, 0,0,0, 0,0,0, 0,0,16,2})
			else
				inputAdd(inputList2P,{5, 0,0,0, 0,0,0, 0,0,16,2})
			end
		end
	end
end
function inputAdd(table,input)
	for i=1, #table, 1 do
		if #table[i] == 0 then
			table[i] = input
			break
		end
	end
end
function inputClear(table,level)
	for i=1, #table, 1 do
		if #table[i] ~= 0 then
			if table[i][11] <= level then
				table[i] = {}
			end
		end
	end
end
function gaugeJudge()
	if gaugeMaxflg[trialChara][trialNum] == 1 then
		gaugeMax()
	end
	if gaugeMaxSeigenVal[trialChara][trialNum] ~= 0xFFFF then
		barNum = memory.readbyte(0x020286AB)
		val = memory.readbyte(0x020695B5)
		barNumMax = math.floor(gaugeMaxSeigenVal[trialChara][trialNum] / 0x100)
		valMax = gaugeMaxSeigenVal[trialChara][trialNum] % 0x100
		if barNum == barNumMax and val > valMax then
			memory.writebyte(0x020695B5,valMax)
		end
	end
end
function jotai()
	x1P = readReverse(0x02068CD1,2)
	if trialChara == 3 and trialNum == 8 then
		if x1P < 0x01F0 then
			writeReverse(0x02068CD1,0x01F0,2)
		end
	end
	if trialChara == 3 and trialNum == 8 then
		mantanFlg = 0
	else
		mantanFlg = 1
	end
	if trialChara == 16 and trialNum == 9 then
		stunMinimum = 0x3600
	else
		stunMinimum = 0x0000
	end
	if comboNum == 0 then
		if readReverse(0x02069612,0x02) <= stunMinimum then
			writeReverse(0x02069612,stunMinimum,0x02)
		end
	end
end
function sonota()
	if trialChara == 1 and trialNum == 4 then
		if (ActionDetail1P == "N000d000d" or ActionDetail1P == "N000c000c") and hitboxNage2P == 0x0644B9E8 and x1P2PdiffAbs < 76 then
			trialTimer = 22
		end
	elseif trialChara == 16 and trialNum == 6 then
		if trialFlg == 0 and read(0x0202590F,0x01) ~= 0 then
			if dashiteruWaza ~= "N00000000"
			 and dashiteruWaza ~= "N00020002"
			 and dashiteruWaza ~= "N00030003"
			 and dashiteruWaza ~= "N00060006"
			 and dashiteruWaza ~= "N00070007"
			 and dashiteruWaza ~= "N00170017"
			 and dashiteruWaza ~= "N000b000b"
			 and dashiteruWaza ~= "N000c000c"
			 and dashiteruWaza ~= "N000d000d"
			 and dashiteruWaza ~= "S002c002c"
			 and dashiteruWaza ~= "S002c0018"
			 and dashiteruWaza ~= "S002d002d"
			 and dashiteruWaza ~= "S002d0018"
			 and dashiteruWaza ~= "S002e002e"
			 and dashiteruWaza ~= "S002e0018"
			 and dashiteruWaza ~= "T00180018" then
				trialFlg = 1
			end
		end
		if trialFlg == 1 then
			if read(0x0202590F,0x01) == 0 and read(0x02026357,0x01) == 0
			 and dashiteruWaza ~= "S002c002c" and dashiteruWaza ~= "S002c0018"
			 and dashiteruWaza ~= "S002d002d" and dashiteruWaza ~= "S002d0018"
			 and dashiteruWaza ~= "S002e002e" and dashiteruWaza ~= "S002e0018" and dashiteruWaza ~= "T00180018" then
				trialFlg = 0
			end
		end
	end
end
function imageLoad()
	R_COMMON_OR = gd.createFromPng("resources/trial/R_COMMON_OR.png"):gdStr()
	R_COMMON_EX = gd.createFromPng("resources/trial/R_COMMON_EX.png"):gdStr()
	R_COMMON_H = gd.createFromPng("resources/trial/R_COMMON_H.png"):gdStr()
	R_COMMON_L = gd.createFromPng("resources/trial/R_COMMON_L.png"):gdStr()
	R_COMMON_M = gd.createFromPng("resources/trial/R_COMMON_M.png"):gdStr()
	R_COMMON_ME = gd.createFromPng("resources/trial/R_COMMON_ME.png"):gdStr()
	R_COMMON_URA = gd.createFromPng("resources/trial/R_COMMON_URA.png"):gdStr()
	R_COMMON_KARACAN = gd.createFromPng("resources/trial/R_COMMON_KARACAN.png"):gdStr()
	R_COMMON_JS = gd.createFromPng("resources/trial/R_COMMON_JS.png"):gdStr()
	R_COMMON_JN = gd.createFromPng("resources/trial/R_COMMON_JN.png"):gdStr()
	R_COMMON_ANTI_AIR = gd.createFromPng("resources/trial/R_COMMON_ANTI_AIR.png"):gdStr()
	R_COMMON_KARABURI = gd.createFromPng("resources/trial/R_COMMON_KARABURI.png"):gdStr()
	R_LEAP = gd.createFromPng("resources/trial/R_LEAP.png"):gdStr()
	R_NM_1HK = gd.createFromPng("resources/trial/R_NM_1HK.png"):gdStr()
	R_NM_1HP = gd.createFromPng("resources/trial/R_NM_1HP.png"):gdStr()
	R_NM_1LK = gd.createFromPng("resources/trial/R_NM_1LK.png"):gdStr()
	R_NM_1LP = gd.createFromPng("resources/trial/R_NM_1LP.png"):gdStr()
	R_NM_1MK = gd.createFromPng("resources/trial/R_NM_1MK.png"):gdStr()
	R_NM_1MP = gd.createFromPng("resources/trial/R_NM_1MP.png"):gdStr()
	R_NM_3HK = gd.createFromPng("resources/trial/R_NM_3HK.png"):gdStr()
	R_NM_3HP = gd.createFromPng("resources/trial/R_NM_3HP.png"):gdStr()
	R_NM_3LK = gd.createFromPng("resources/trial/R_NM_3LK.png"):gdStr()
	R_NM_3LP = gd.createFromPng("resources/trial/R_NM_3LP.png"):gdStr()
	R_NM_3MK = gd.createFromPng("resources/trial/R_NM_3MK.png"):gdStr()
	R_NM_3MP = gd.createFromPng("resources/trial/R_NM_3MP.png"):gdStr()
	R_NM_4HK = gd.createFromPng("resources/trial/R_NM_4HK.png"):gdStr()
	R_NM_4HP = gd.createFromPng("resources/trial/R_NM_4HP.png"):gdStr()
	R_NM_4LK = gd.createFromPng("resources/trial/R_NM_4LK.png"):gdStr()
	R_NM_4LP = gd.createFromPng("resources/trial/R_NM_4LP.png"):gdStr()
	R_NM_4MK = gd.createFromPng("resources/trial/R_NM_4MK.png"):gdStr()
	R_NM_4MP = gd.createFromPng("resources/trial/R_NM_4MP.png"):gdStr()
	R_NM_6HK = gd.createFromPng("resources/trial/R_NM_6HK.png"):gdStr()
	R_NM_6HP = gd.createFromPng("resources/trial/R_NM_6HP.png"):gdStr()
	R_NM_6LK = gd.createFromPng("resources/trial/R_NM_6LK.png"):gdStr()
	R_NM_6LP = gd.createFromPng("resources/trial/R_NM_6LP.png"):gdStr()
	R_NM_6MK = gd.createFromPng("resources/trial/R_NM_6MK.png"):gdStr()
	R_NM_6MP = gd.createFromPng("resources/trial/R_NM_6MP.png"):gdStr()
	R_NM_CHK = gd.createFromPng("resources/trial/R_NM_CHK.png"):gdStr()
	R_NM_CHP = gd.createFromPng("resources/trial/R_NM_CHP.png"):gdStr()
	R_NM_CLK = gd.createFromPng("resources/trial/R_NM_CLK.png"):gdStr()
	R_NM_CLP = gd.createFromPng("resources/trial/R_NM_CLP.png"):gdStr()
	R_NM_CMK = gd.createFromPng("resources/trial/R_NM_CMK.png"):gdStr()
	R_NM_CMP = gd.createFromPng("resources/trial/R_NM_CMP.png"):gdStr()
	R_NM_JHK = gd.createFromPng("resources/trial/R_NM_JHK.png"):gdStr()
	R_NM_JHP = gd.createFromPng("resources/trial/R_NM_JHP.png"):gdStr()
	R_NM_JLK = gd.createFromPng("resources/trial/R_NM_JLK.png"):gdStr()
	R_NM_JLP = gd.createFromPng("resources/trial/R_NM_JLP.png"):gdStr()
	R_NM_JMK = gd.createFromPng("resources/trial/R_NM_JMK.png"):gdStr()
	R_NM_JMP = gd.createFromPng("resources/trial/R_NM_JMP.png"):gdStr()
	R_NM_J2MK = gd.createFromPng("resources/trial/R_NM_J2MK.png"):gdStr()
	R_NM_J3MK = gd.createFromPng("resources/trial/R_NM_J3MK.png"):gdStr()
	R_NM_J6HP = gd.createFromPng("resources/trial/R_NM_J6HP.png"):gdStr()
	R_NM_J2HP = gd.createFromPng("resources/trial/R_NM_J2HP.png"):gdStr()
	R_NM_J6MK = gd.createFromPng("resources/trial/R_NM_J6MK.png"):gdStr()
	R_NM_NJHK = gd.createFromPng("resources/trial/R_NM_NJHK.png"):gdStr()
	R_NM_NJHP = gd.createFromPng("resources/trial/R_NM_NJHP.png"):gdStr()
	R_NM_NJLK = gd.createFromPng("resources/trial/R_NM_NJLK.png"):gdStr()
	R_NM_NJLP = gd.createFromPng("resources/trial/R_NM_NJLP.png"):gdStr()
	R_NM_NJMK = gd.createFromPng("resources/trial/R_NM_NJMK.png"):gdStr()
	R_NM_NJMP = gd.createFromPng("resources/trial/R_NM_NJMP.png"):gdStr()
	R_NM_SCHK = gd.createFromPng("resources/trial/R_NM_SCHK.png"):gdStr()
	R_NM_SCHP = gd.createFromPng("resources/trial/R_NM_SCHP.png"):gdStr()
	R_NM_SCLK = gd.createFromPng("resources/trial/R_NM_SCLK.png"):gdStr()
	R_NM_SCLP = gd.createFromPng("resources/trial/R_NM_SCLP.png"):gdStr()
	R_NM_SCMK = gd.createFromPng("resources/trial/R_NM_SCMK.png"):gdStr()
	R_NM_SCMP = gd.createFromPng("resources/trial/R_NM_SCMP.png"):gdStr()
	R_NM_SDHK = gd.createFromPng("resources/trial/R_NM_SDHK.png"):gdStr()
	R_NM_SDHP = gd.createFromPng("resources/trial/R_NM_SDHP.png"):gdStr()
	R_NM_SDLK = gd.createFromPng("resources/trial/R_NM_SDLK.png"):gdStr()
	R_NM_SDLP = gd.createFromPng("resources/trial/R_NM_SDLP.png"):gdStr()
	R_NM_SDMK = gd.createFromPng("resources/trial/R_NM_SDMK.png"):gdStr()
	R_NM_SDMP = gd.createFromPng("resources/trial/R_NM_SDMP.png"):gdStr()
	R_NM_SHK = gd.createFromPng("resources/trial/R_NM_SHK.png"):gdStr()
	R_NM_SHP = gd.createFromPng("resources/trial/R_NM_SHP.png"):gdStr()
	R_NM_SJHK = gd.createFromPng("resources/trial/R_NM_SJHK.png"):gdStr()
	R_NM_SJHP = gd.createFromPng("resources/trial/R_NM_SJHP.png"):gdStr()
	R_NM_SJLK = gd.createFromPng("resources/trial/R_NM_SJLK.png"):gdStr()
	R_NM_SJLP = gd.createFromPng("resources/trial/R_NM_SJLP.png"):gdStr()
	R_NM_SJMK = gd.createFromPng("resources/trial/R_NM_SJMK.png"):gdStr()
	R_NM_SJMP = gd.createFromPng("resources/trial/R_NM_SJMP.png"):gdStr()
	R_NM_SLK = gd.createFromPng("resources/trial/R_NM_SLK.png"):gdStr()
	R_NM_SLP = gd.createFromPng("resources/trial/R_NM_SLP.png"):gdStr()
	R_NM_SMK = gd.createFromPng("resources/trial/R_NM_SMK.png"):gdStr()
	R_NM_SMP = gd.createFromPng("resources/trial/R_NM_SMP.png"):gdStr()
	R_PA = gd.createFromPng("resources/trial/R_PA.png"):gdStr()
	R_SA_ALEX1 = gd.createFromPng("resources/trial/R_SA_ALEX1.png"):gdStr()
	R_SA_ALEX2 = gd.createFromPng("resources/trial/R_SA_ALEX2.png"):gdStr()
	R_SA_ALEX3 = gd.createFromPng("resources/trial/R_SA_ALEX3.png"):gdStr()
	R_SA_CHU1 = gd.createFromPng("resources/trial/R_SA_CHU1.png"):gdStr()
	R_SA_CHU2 = gd.createFromPng("resources/trial/R_SA_CHU2.png"):gdStr()
	R_SA_CHU3 = gd.createFromPng("resources/trial/R_SA_CHU3.png"):gdStr()
	R_SA_DUD1 = gd.createFromPng("resources/trial/R_SA_DUD1.png"):gdStr()
	R_SA_DUD2 = gd.createFromPng("resources/trial/R_SA_DUD2.png"):gdStr()
	R_SA_DUD3 = gd.createFromPng("resources/trial/R_SA_DUD3.png"):gdStr()
	R_SA_DUDLEY1 = gd.createFromPng("resources/trial/R_SA_DUDLEY1.png"):gdStr()
	R_SA_DUDLEY2 = gd.createFromPng("resources/trial/R_SA_DUDLEY2.png"):gdStr()
	R_SA_DUDLEY3 = gd.createFromPng("resources/trial/R_SA_DUDLEY3.png"):gdStr()
	R_SA_ELE1 = gd.createFromPng("resources/trial/R_SA_ELE1.png"):gdStr()
	R_SA_ELE2 = gd.createFromPng("resources/trial/R_SA_ELE2.png"):gdStr()
	R_SA_ELE3 = gd.createFromPng("resources/trial/R_SA_ELE3.png"):gdStr()
	R_SA_GOU1_1 = gd.createFromPng("resources/trial/R_SA_GOU1_1.png"):gdStr()
	R_SA_GOU1_2 = gd.createFromPng("resources/trial/R_SA_GOU1_2.png"):gdStr()
	R_SA_GOU2 = gd.createFromPng("resources/trial/R_SA_GOU2.png"):gdStr()
	R_SA_GOU3_1 = gd.createFromPng("resources/trial/R_SA_GOU3_1.png"):gdStr()
	R_SA_GOU3_2 = gd.createFromPng("resources/trial/R_SA_GOU3_2.png"):gdStr()
	R_SA_GOU4 = gd.createFromPng("resources/trial/R_SA_GOU4.png"):gdStr()
	R_SA_GOU5 = gd.createFromPng("resources/trial/R_SA_GOU5.png"):gdStr()
	R_SA_HUGO1 = gd.createFromPng("resources/trial/R_SA_HUGO1.png"):gdStr()
	R_SA_HUGO2 = gd.createFromPng("resources/trial/R_SA_HUGO2.png"):gdStr()
	R_SA_HUGO3 = gd.createFromPng("resources/trial/R_SA_HUGO3.png"):gdStr()
	R_SA_IBU1 = gd.createFromPng("resources/trial/R_SA_IBU1.png"):gdStr()
	R_SA_IBU2 = gd.createFromPng("resources/trial/R_SA_IBU2.png"):gdStr()
	R_SA_IBU3 = gd.createFromPng("resources/trial/R_SA_IBU3.png"):gdStr()
	R_SA_KEN1 = gd.createFromPng("resources/trial/R_SA_KEN1.png"):gdStr()
	R_SA_KEN2 = gd.createFromPng("resources/trial/R_SA_KEN2.png"):gdStr()
	R_SA_KEN3 = gd.createFromPng("resources/trial/R_SA_KEN3.png"):gdStr()
	R_SA_MAK1 = gd.createFromPng("resources/trial/R_SA_MAK1.png"):gdStr()
	R_SA_MAK2 = gd.createFromPng("resources/trial/R_SA_MAK2.png"):gdStr()
	R_SA_MAK3 = gd.createFromPng("resources/trial/R_SA_MAK3.png"):gdStr()
	R_SA_NEC1 = gd.createFromPng("resources/trial/R_SA_NEC1.png"):gdStr()
	R_SA_NEC2 = gd.createFromPng("resources/trial/R_SA_NEC2.png"):gdStr()
	R_SA_NEC3 = gd.createFromPng("resources/trial/R_SA_NEC3.png"):gdStr()
	R_SA_ORO1_1 = gd.createFromPng("resources/trial/R_SA_ORO1_1.png"):gdStr()
	R_SA_ORO1_2 = gd.createFromPng("resources/trial/R_SA_ORO1_2.png"):gdStr()
	R_SA_ORO1_3 = gd.createFromPng("resources/trial/R_SA_ORO1_3.png"):gdStr()
	R_SA_ORO2_1 = gd.createFromPng("resources/trial/R_SA_ORO2_1.png"):gdStr()
	R_SA_ORO2_2 = gd.createFromPng("resources/trial/R_SA_ORO2_2.png"):gdStr()
	R_SA_ORO3_1 = gd.createFromPng("resources/trial/R_SA_ORO3_1.png"):gdStr()
	R_SA_ORO3_2 = gd.createFromPng("resources/trial/R_SA_ORO3_2.png"):gdStr()
	R_SA_Q1 = gd.createFromPng("resources/trial/R_SA_Q1.png"):gdStr()
	R_SA_Q2 = gd.createFromPng("resources/trial/R_SA_Q2.png"):gdStr()
	R_SA_Q3 = gd.createFromPng("resources/trial/R_SA_Q3.png"):gdStr()
	R_SA_Q3_1 = gd.createFromPng("resources/trial/R_SA_Q3_1.png"):gdStr()
	R_SA_Q3_2 = gd.createFromPng("resources/trial/R_SA_Q3_2.png"):gdStr()
	R_SA_REM1 = gd.createFromPng("resources/trial/R_SA_REM1.png"):gdStr()
	R_SA_REM2 = gd.createFromPng("resources/trial/R_SA_REM2.png"):gdStr()
	R_SA_REM3 = gd.createFromPng("resources/trial/R_SA_REM3.png"):gdStr()
	R_SA_RYU1 = gd.createFromPng("resources/trial/R_SA_RYU1.png"):gdStr()
	R_SA_RYU2 = gd.createFromPng("resources/trial/R_SA_RYU2.png"):gdStr()
	R_SA_RYU3_1 = gd.createFromPng("resources/trial/R_SA_RYU3_1.png"):gdStr()
	R_SA_RYU3_2 = gd.createFromPng("resources/trial/R_SA_RYU3_2.png"):gdStr()
	R_SA_RYU3_3 = gd.createFromPng("resources/trial/R_SA_RYU3_3.png"):gdStr()
	R_SA_RYU3_4 = gd.createFromPng("resources/trial/R_SA_RYU3_4.png"):gdStr()
	R_SA_RYU3_5 = gd.createFromPng("resources/trial/R_SA_RYU3_5.png"):gdStr()
	R_SA_SEA1 = gd.createFromPng("resources/trial/R_SA_SEA1.png"):gdStr()
	R_SA_SEA2 = gd.createFromPng("resources/trial/R_SA_SEA2.png"):gdStr()
	R_SA_SEA3 = gd.createFromPng("resources/trial/R_SA_SEA3.png"):gdStr()
	R_SA_TWE1 = gd.createFromPng("resources/trial/R_SA_TWE1.png"):gdStr()
	R_SA_TWE2 = gd.createFromPng("resources/trial/R_SA_TWE2.png"):gdStr()
	R_SA_TWE3 = gd.createFromPng("resources/trial/R_SA_TWE3.png"):gdStr()
	R_SA_URIEN1 = gd.createFromPng("resources/trial/R_SA_URIEN1.png"):gdStr()
	R_SA_URIEN2 = gd.createFromPng("resources/trial/R_SA_URIEN2.png"):gdStr()
	R_SA_URIEN3 = gd.createFromPng("resources/trial/R_SA_URIEN3.png"):gdStr()
	R_SA_YANG1 = gd.createFromPng("resources/trial/R_SA_YANG1.png"):gdStr()
	R_SA_YANG2 = gd.createFromPng("resources/trial/R_SA_YANG2.png"):gdStr()
	R_SA_YANG3 = gd.createFromPng("resources/trial/R_SA_YANG3.png"):gdStr()
	R_SA_YUN1 = gd.createFromPng("resources/trial/R_SA_YUN1.png"):gdStr()
	R_SA_YUN2 = gd.createFromPng("resources/trial/R_SA_YUN2.png"):gdStr()
	R_SA_YUN3 = gd.createFromPng("resources/trial/R_SA_YUN3.png"):gdStr()
	R_SP_ALEX1 = gd.createFromPng("resources/trial/R_SP_ALEX1.png"):gdStr()
	R_SP_ALEX2 = gd.createFromPng("resources/trial/R_SP_ALEX2.png"):gdStr()
	R_SP_ALEX3 = gd.createFromPng("resources/trial/R_SP_ALEX3.png"):gdStr()
	R_SP_ALEX4 = gd.createFromPng("resources/trial/R_SP_ALEX4.png"):gdStr()
	R_SP_ALEX5 = gd.createFromPng("resources/trial/R_SP_ALEX5.png"):gdStr()
	R_SP_ALEX6 = gd.createFromPng("resources/trial/R_SP_ALEX6.png"):gdStr()
	R_SP_CHU1 = gd.createFromPng("resources/trial/R_SP_CHU1.png"):gdStr()
	R_SP_CHU2 = gd.createFromPng("resources/trial/R_SP_CHU2.png"):gdStr()
	R_SP_CHU3 = gd.createFromPng("resources/trial/R_SP_CHU3.png"):gdStr()
	R_SP_CHU4 = gd.createFromPng("resources/trial/R_SP_CHU4.png"):gdStr()
	R_SP_DUD1 = gd.createFromPng("resources/trial/R_SP_DUD1.png"):gdStr()
	R_SP_DUD2_1 = gd.createFromPng("resources/trial/R_SP_DUD2_1.png"):gdStr()
	R_SP_DUD2_2 = gd.createFromPng("resources/trial/R_SP_DUD2_2.png"):gdStr()
	R_SP_DUD2_3 = gd.createFromPng("resources/trial/R_SP_DUD2_3.png"):gdStr()
	R_SP_DUD3 = gd.createFromPng("resources/trial/R_SP_DUD3.png"):gdStr()
	R_SP_DUD4 = gd.createFromPng("resources/trial/R_SP_DUD4.png"):gdStr()
	R_SP_DUD5 = gd.createFromPng("resources/trial/R_SP_DUD5.png"):gdStr()
	R_SP_DUD6 = gd.createFromPng("resources/trial/R_SP_DUD6.png"):gdStr()
	R_SP_DUDLEY1 = gd.createFromPng("resources/trial/R_SP_DUDLEY1.png"):gdStr()
	R_SP_DUDLEY2 = gd.createFromPng("resources/trial/R_SP_DUDLEY2.png"):gdStr()
	R_SP_DUDLEY3 = gd.createFromPng("resources/trial/R_SP_DUDLEY3.png"):gdStr()
	R_SP_DUDLEY4 = gd.createFromPng("resources/trial/R_SP_DUDLEY4.png"):gdStr()
	R_SP_DUDLEY5 = gd.createFromPng("resources/trial/R_SP_DUDLEY5.png"):gdStr()
	R_SP_DUDLEY6 = gd.createFromPng("resources/trial/R_SP_DUDLEY6.png"):gdStr()
	R_SP_DUDLEY7 = gd.createFromPng("resources/trial/R_SP_DUDLEY7.png"):gdStr()
	R_SP_DUDLEY8 = gd.createFromPng("resources/trial/R_SP_DUDLEY8.png"):gdStr()
	R_SP_ELE1 = gd.createFromPng("resources/trial/R_SP_ELE1.png"):gdStr()
	R_SP_ELE2 = gd.createFromPng("resources/trial/R_SP_ELE2.png"):gdStr()
	R_SP_ELE3 = gd.createFromPng("resources/trial/R_SP_ELE3.png"):gdStr()
	R_SP_ELE4 = gd.createFromPng("resources/trial/R_SP_ELE4.png"):gdStr()
	R_SP_ELE5 = gd.createFromPng("resources/trial/R_SP_ELE5.png"):gdStr()
	R_SP_GOU1 = gd.createFromPng("resources/trial/R_SP_GOU1.png"):gdStr()
	R_SP_GOU2 = gd.createFromPng("resources/trial/R_SP_GOU2.png"):gdStr()
	R_SP_GOU3 = gd.createFromPng("resources/trial/R_SP_GOU3.png"):gdStr()
	R_SP_GOU4 = gd.createFromPng("resources/trial/R_SP_GOU4.png"):gdStr()
	R_SP_GOU5 = gd.createFromPng("resources/trial/R_SP_GOU5.png"):gdStr()
	R_SP_GOU6 = gd.createFromPng("resources/trial/R_SP_GOU6.png"):gdStr()
	R_SP_GOU7_1 = gd.createFromPng("resources/trial/R_SP_GOU7_1.png"):gdStr()
	R_SP_GOU7_2 = gd.createFromPng("resources/trial/R_SP_GOU7_2.png"):gdStr()
	R_SP_GOU7_3 = gd.createFromPng("resources/trial/R_SP_GOU7_3.png"):gdStr()
	R_SP_GOU7_4 = gd.createFromPng("resources/trial/R_SP_GOU7_4.png"):gdStr()
	R_SP_GOU7_5 = gd.createFromPng("resources/trial/R_SP_GOU7_5.png"):gdStr()
	R_SP_GOU8 = gd.createFromPng("resources/trial/R_SP_GOU8.png"):gdStr()
	R_SP_HUGO1 = gd.createFromPng("resources/trial/R_SP_HUGO1.png"):gdStr()
	R_SP_HUGO2 = gd.createFromPng("resources/trial/R_SP_HUGO2.png"):gdStr()
	R_SP_HUGO3 = gd.createFromPng("resources/trial/R_SP_HUGO3.png"):gdStr()
	R_SP_HUGO4 = gd.createFromPng("resources/trial/R_SP_HUGO4.png"):gdStr()
	R_SP_HUGO5 = gd.createFromPng("resources/trial/R_SP_HUGO5.png"):gdStr()
	R_SP_HUGO6 = gd.createFromPng("resources/trial/R_SP_HUGO6.png"):gdStr()
	R_SP_IBU1 = gd.createFromPng("resources/trial/R_SP_IBU1.png"):gdStr()
	R_SP_IBU2 = gd.createFromPng("resources/trial/R_SP_IBU2.png"):gdStr()
	R_SP_IBU3 = gd.createFromPng("resources/trial/R_SP_IBU3.png"):gdStr()
	R_SP_IBU4 = gd.createFromPng("resources/trial/R_SP_IBU4.png"):gdStr()
	R_SP_IBU5 = gd.createFromPng("resources/trial/R_SP_IBU5.png"):gdStr()
	R_SP_IBU6 = gd.createFromPng("resources/trial/R_SP_IBU6.png"):gdStr()
	R_SP_IBU7 = gd.createFromPng("resources/trial/R_SP_IBU7.png"):gdStr()
	R_SP_IBU8 = gd.createFromPng("resources/trial/R_SP_IBU8.png"):gdStr()
	R_SP_MAK1 = gd.createFromPng("resources/trial/R_SP_MAK1.png"):gdStr()
	R_SP_MAK2 = gd.createFromPng("resources/trial/R_SP_MAK2.png"):gdStr()
	R_SP_MAK3 = gd.createFromPng("resources/trial/R_SP_MAK3.png"):gdStr()
	R_SP_MAK4 = gd.createFromPng("resources/trial/R_SP_MAK4.png"):gdStr()
	R_SP_MAK5 = gd.createFromPng("resources/trial/R_SP_MAK5.png"):gdStr()
	R_SP_NEC1 = gd.createFromPng("resources/trial/R_SP_NEC1.png"):gdStr()
	R_SP_NEC2 = gd.createFromPng("resources/trial/R_SP_NEC2.png"):gdStr()
	R_SP_NEC3 = gd.createFromPng("resources/trial/R_SP_NEC3.png"):gdStr()
	R_SP_NEC4 = gd.createFromPng("resources/trial/R_SP_NEC4.png"):gdStr()
	R_SP_NEC5 = gd.createFromPng("resources/trial/R_SP_NEC5.png"):gdStr()
	R_SP_NEC6 = gd.createFromPng("resources/trial/R_SP_NEC6.png"):gdStr()
	R_SP_ORO1 = gd.createFromPng("resources/trial/R_SP_ORO1.png"):gdStr()
	R_SP_ORO2 = gd.createFromPng("resources/trial/R_SP_ORO2.png"):gdStr()
	R_SP_ORO3 = gd.createFromPng("resources/trial/R_SP_ORO3.png"):gdStr()
	R_SP_ORO4 = gd.createFromPng("resources/trial/R_SP_ORO4.png"):gdStr()
	R_SP_ORO5 = gd.createFromPng("resources/trial/R_SP_ORO5.png"):gdStr()
	R_SP_Q1 = gd.createFromPng("resources/trial/R_SP_Q1.png"):gdStr()
	R_SP_Q2 = gd.createFromPng("resources/trial/R_SP_Q2.png"):gdStr()
	R_SP_Q3 = gd.createFromPng("resources/trial/R_SP_Q3.png"):gdStr()
	R_SP_Q4 = gd.createFromPng("resources/trial/R_SP_Q4.png"):gdStr()
	R_SP_Q5 = gd.createFromPng("resources/trial/R_SP_Q5.png"):gdStr()
	R_SP_REM1 = gd.createFromPng("resources/trial/R_SP_REM1.png"):gdStr()
	R_SP_REM2 = gd.createFromPng("resources/trial/R_SP_REM2.png"):gdStr()
	R_SP_REM3 = gd.createFromPng("resources/trial/R_SP_REM3.png"):gdStr()
	R_SP_REM4 = gd.createFromPng("resources/trial/R_SP_REM4.png"):gdStr()
	R_SP_RYU1 = gd.createFromPng("resources/trial/R_SP_RYU1.png"):gdStr()
	R_SP_RYU2 = gd.createFromPng("resources/trial/R_SP_RYU2.png"):gdStr()
	R_SP_RYU3 = gd.createFromPng("resources/trial/R_SP_RYU3.png"):gdStr()
	R_SP_RYU4 = gd.createFromPng("resources/trial/R_SP_RYU4.png"):gdStr()
	R_SP_RYU5 = gd.createFromPng("resources/trial/R_SP_RYU5.png"):gdStr()
	R_SP_SEA1 = gd.createFromPng("resources/trial/R_SP_SEA1.png"):gdStr()
	R_SP_SEA2 = gd.createFromPng("resources/trial/R_SP_SEA2.png"):gdStr()
	R_SP_SEA3 = gd.createFromPng("resources/trial/R_SP_SEA3.png"):gdStr()
	R_SP_SEA4 = gd.createFromPng("resources/trial/R_SP_SEA4.png"):gdStr()
	R_SP_SEA5 = gd.createFromPng("resources/trial/R_SP_SEA5.png"):gdStr()
	R_SP_TWE1 = gd.createFromPng("resources/trial/R_SP_TWE1.png"):gdStr()
	R_SP_TWE2 = gd.createFromPng("resources/trial/R_SP_TWE2.png"):gdStr()
	R_SP_TWE3 = gd.createFromPng("resources/trial/R_SP_TWE3.png"):gdStr()
	R_SP_TWE4 = gd.createFromPng("resources/trial/R_SP_TWE4.png"):gdStr()
	R_SP_URIEN1 = gd.createFromPng("resources/trial/R_SP_URIEN1.png"):gdStr()
	R_SP_URIEN2 = gd.createFromPng("resources/trial/R_SP_URIEN2.png"):gdStr()
	R_SP_URIEN3 = gd.createFromPng("resources/trial/R_SP_URIEN3.png"):gdStr()
	R_SP_URIEN4 = gd.createFromPng("resources/trial/R_SP_URIEN4.png"):gdStr()
	R_SP_YANG1 = gd.createFromPng("resources/trial/R_SP_YANG1.png"):gdStr()
	R_SP_YANG2 = gd.createFromPng("resources/trial/R_SP_YANG2.png"):gdStr()
	R_SP_YANG3 = gd.createFromPng("resources/trial/R_SP_YANG3.png"):gdStr()
	R_SP_YANG4 = gd.createFromPng("resources/trial/R_SP_YANG4.png"):gdStr()
	R_SP_YANG5 = gd.createFromPng("resources/trial/R_SP_YANG5.png"):gdStr()
	R_SP_YUN1 = gd.createFromPng("resources/trial/R_SP_YUN1.png"):gdStr()
	R_SP_YUN2 = gd.createFromPng("resources/trial/R_SP_YUN2.png"):gdStr()
	R_SP_YUN3 = gd.createFromPng("resources/trial/R_SP_YUN3.png"):gdStr()
	R_SP_YUN4 = gd.createFromPng("resources/trial/R_SP_YUN4.png"):gdStr()
	R_SP_YUN5 = gd.createFromPng("resources/trial/R_SP_YUN5.png"):gdStr()
	R_TK_HUGO1 = gd.createFromPng("resources/trial/R_TK_HUGO1.png"):gdStr()
	R_TR_ALEX1 = gd.createFromPng("resources/trial/R_TR_ALEX1.png"):gdStr()
	R_TR_ALEX2 = gd.createFromPng("resources/trial/R_TR_ALEX2.png"):gdStr()
	R_TR_KEN1 = gd.createFromPng("resources/trial/R_TR_KEN1.png"):gdStr()
	R_TR_KEN2 = gd.createFromPng("resources/trial/R_TR_KEN2.png"):gdStr()
	R_TR_HUGO1 = gd.createFromPng("resources/trial/R_TR_HUGO1.png"):gdStr()
	R_4_THROW = gd.createFromPng("resources/trial/R_4_THROW.png"):gdStr()
	R_6_THROW = gd.createFromPng("resources/trial/R_6_THROW.png"):gdStr()
	R_N_THROW = gd.createFromPng("resources/trial/R_N_THROW.png"):gdStr()
	R_NM_BDASH = gd.createFromPng("resources/trial/R_NM_BDASH.png"):gdStr()
	R_NM_FDASH = gd.createFromPng("resources/trial/R_NM_FDASH.png"):gdStr()
	W_COMMON_OR = gd.createFromPng("resources/trial/W_COMMON_OR.png"):gdStr()
	W_COMMON_EX = gd.createFromPng("resources/trial/W_COMMON_EX.png"):gdStr()
	W_COMMON_H = gd.createFromPng("resources/trial/W_COMMON_H.png"):gdStr()
	W_COMMON_L = gd.createFromPng("resources/trial/W_COMMON_L.png"):gdStr()
	W_COMMON_M = gd.createFromPng("resources/trial/W_COMMON_M.png"):gdStr()
	W_COMMON_ME = gd.createFromPng("resources/trial/W_COMMON_ME.png"):gdStr()
	W_COMMON_URA = gd.createFromPng("resources/trial/W_COMMON_URA.png"):gdStr()
	W_COMMON_KARACAN = gd.createFromPng("resources/trial/W_COMMON_KARACAN.png"):gdStr()
	W_COMMON_JS = gd.createFromPng("resources/trial/W_COMMON_JS.png"):gdStr()
	W_COMMON_JN = gd.createFromPng("resources/trial/W_COMMON_JN.png"):gdStr()
	W_COMMON_ANTI_AIR = gd.createFromPng("resources/trial/W_COMMON_ANTI_AIR.png"):gdStr()
	W_COMMON_KARABURI = gd.createFromPng("resources/trial/W_COMMON_KARABURI.png"):gdStr()
	W_LEAP = gd.createFromPng("resources/trial/W_LEAP.png"):gdStr()
	W_NM_1HK = gd.createFromPng("resources/trial/W_NM_1HK.png"):gdStr()
	W_NM_1HP = gd.createFromPng("resources/trial/W_NM_1HP.png"):gdStr()
	W_NM_1LK = gd.createFromPng("resources/trial/W_NM_1LK.png"):gdStr()
	W_NM_1LP = gd.createFromPng("resources/trial/W_NM_1LP.png"):gdStr()
	W_NM_1MK = gd.createFromPng("resources/trial/W_NM_1MK.png"):gdStr()
	W_NM_1MP = gd.createFromPng("resources/trial/W_NM_1MP.png"):gdStr()
	W_NM_3HK = gd.createFromPng("resources/trial/W_NM_3HK.png"):gdStr()
	W_NM_3HP = gd.createFromPng("resources/trial/W_NM_3HP.png"):gdStr()
	W_NM_3LK = gd.createFromPng("resources/trial/W_NM_3LK.png"):gdStr()
	W_NM_3LP = gd.createFromPng("resources/trial/W_NM_3LP.png"):gdStr()
	W_NM_3MK = gd.createFromPng("resources/trial/W_NM_3MK.png"):gdStr()
	W_NM_3MP = gd.createFromPng("resources/trial/W_NM_3MP.png"):gdStr()
	W_NM_4HK = gd.createFromPng("resources/trial/W_NM_4HK.png"):gdStr()
	W_NM_4HP = gd.createFromPng("resources/trial/W_NM_4HP.png"):gdStr()
	W_NM_4LK = gd.createFromPng("resources/trial/W_NM_4LK.png"):gdStr()
	W_NM_4LP = gd.createFromPng("resources/trial/W_NM_4LP.png"):gdStr()
	W_NM_4MK = gd.createFromPng("resources/trial/W_NM_4MK.png"):gdStr()
	W_NM_4MP = gd.createFromPng("resources/trial/W_NM_4MP.png"):gdStr()
	W_NM_6HK = gd.createFromPng("resources/trial/W_NM_6HK.png"):gdStr()
	W_NM_6HP = gd.createFromPng("resources/trial/W_NM_6HP.png"):gdStr()
	W_NM_6LK = gd.createFromPng("resources/trial/W_NM_6LK.png"):gdStr()
	W_NM_6LP = gd.createFromPng("resources/trial/W_NM_6LP.png"):gdStr()
	W_NM_6MK = gd.createFromPng("resources/trial/W_NM_6MK.png"):gdStr()
	W_NM_6MP = gd.createFromPng("resources/trial/W_NM_6MP.png"):gdStr()
	W_NM_CHK = gd.createFromPng("resources/trial/W_NM_CHK.png"):gdStr()
	W_NM_CHP = gd.createFromPng("resources/trial/W_NM_CHP.png"):gdStr()
	W_NM_CLK = gd.createFromPng("resources/trial/W_NM_CLK.png"):gdStr()
	W_NM_CLP = gd.createFromPng("resources/trial/W_NM_CLP.png"):gdStr()
	W_NM_CMK = gd.createFromPng("resources/trial/W_NM_CMK.png"):gdStr()
	W_NM_CMP = gd.createFromPng("resources/trial/W_NM_CMP.png"):gdStr()
	W_NM_JHK = gd.createFromPng("resources/trial/W_NM_JHK.png"):gdStr()
	W_NM_JHP = gd.createFromPng("resources/trial/W_NM_JHP.png"):gdStr()
	W_NM_JLK = gd.createFromPng("resources/trial/W_NM_JLK.png"):gdStr()
	W_NM_JLP = gd.createFromPng("resources/trial/W_NM_JLP.png"):gdStr()
	W_NM_JMK = gd.createFromPng("resources/trial/W_NM_JMK.png"):gdStr()
	W_NM_JMP = gd.createFromPng("resources/trial/W_NM_JMP.png"):gdStr()
	W_NM_J2MK = gd.createFromPng("resources/trial/W_NM_J2MK.png"):gdStr()
	W_NM_J3MK = gd.createFromPng("resources/trial/W_NM_J3MK.png"):gdStr()
	W_NM_J6HP = gd.createFromPng("resources/trial/W_NM_J6HP.png"):gdStr()
	W_NM_J2HP = gd.createFromPng("resources/trial/W_NM_J2HP.png"):gdStr()
	W_NM_J6MK = gd.createFromPng("resources/trial/W_NM_J6MK.png"):gdStr()
	W_NM_NJHK = gd.createFromPng("resources/trial/W_NM_NJHK.png"):gdStr()
	W_NM_NJHP = gd.createFromPng("resources/trial/W_NM_NJHP.png"):gdStr()
	W_NM_NJLK = gd.createFromPng("resources/trial/W_NM_NJLK.png"):gdStr()
	W_NM_NJLP = gd.createFromPng("resources/trial/W_NM_NJLP.png"):gdStr()
	W_NM_NJMK = gd.createFromPng("resources/trial/W_NM_NJMK.png"):gdStr()
	W_NM_NJMP = gd.createFromPng("resources/trial/W_NM_NJMP.png"):gdStr()
	W_NM_SCHK = gd.createFromPng("resources/trial/W_NM_SCHK.png"):gdStr()
	W_NM_SCHP = gd.createFromPng("resources/trial/W_NM_SCHP.png"):gdStr()
	W_NM_SCLK = gd.createFromPng("resources/trial/W_NM_SCLK.png"):gdStr()
	W_NM_SCLP = gd.createFromPng("resources/trial/W_NM_SCLP.png"):gdStr()
	W_NM_SCMK = gd.createFromPng("resources/trial/W_NM_SCMK.png"):gdStr()
	W_NM_SCMP = gd.createFromPng("resources/trial/W_NM_SCMP.png"):gdStr()
	W_NM_SDHK = gd.createFromPng("resources/trial/W_NM_SDHK.png"):gdStr()
	W_NM_SDHP = gd.createFromPng("resources/trial/W_NM_SDHP.png"):gdStr()
	W_NM_SDLK = gd.createFromPng("resources/trial/W_NM_SDLK.png"):gdStr()
	W_NM_SDLP = gd.createFromPng("resources/trial/W_NM_SDLP.png"):gdStr()
	W_NM_SDMK = gd.createFromPng("resources/trial/W_NM_SDMK.png"):gdStr()
	W_NM_SDMP = gd.createFromPng("resources/trial/W_NM_SDMP.png"):gdStr()
	W_NM_SHK = gd.createFromPng("resources/trial/W_NM_SHK.png"):gdStr()
	W_NM_SHP = gd.createFromPng("resources/trial/W_NM_SHP.png"):gdStr()
	W_NM_SJHK = gd.createFromPng("resources/trial/W_NM_SJHK.png"):gdStr()
	W_NM_SJHP = gd.createFromPng("resources/trial/W_NM_SJHP.png"):gdStr()
	W_NM_SJLK = gd.createFromPng("resources/trial/W_NM_SJLK.png"):gdStr()
	W_NM_SJLP = gd.createFromPng("resources/trial/W_NM_SJLP.png"):gdStr()
	W_NM_SJMK = gd.createFromPng("resources/trial/W_NM_SJMK.png"):gdStr()
	W_NM_SJMP = gd.createFromPng("resources/trial/W_NM_SJMP.png"):gdStr()
	W_NM_SLK = gd.createFromPng("resources/trial/W_NM_SLK.png"):gdStr()
	W_NM_SLP = gd.createFromPng("resources/trial/W_NM_SLP.png"):gdStr()
	W_NM_SMK = gd.createFromPng("resources/trial/W_NM_SMK.png"):gdStr()
	W_NM_SMP = gd.createFromPng("resources/trial/W_NM_SMP.png"):gdStr()
	W_PA = gd.createFromPng("resources/trial/W_PA.png"):gdStr()
	W_SA_ALEX1 = gd.createFromPng("resources/trial/W_SA_ALEX1.png"):gdStr()
	W_SA_ALEX2 = gd.createFromPng("resources/trial/W_SA_ALEX2.png"):gdStr()
	W_SA_ALEX3 = gd.createFromPng("resources/trial/W_SA_ALEX3.png"):gdStr()
	W_SA_CHU1 = gd.createFromPng("resources/trial/W_SA_CHU1.png"):gdStr()
	W_SA_CHU2 = gd.createFromPng("resources/trial/W_SA_CHU2.png"):gdStr()
	W_SA_CHU3 = gd.createFromPng("resources/trial/W_SA_CHU3.png"):gdStr()
	W_SA_DUD1 = gd.createFromPng("resources/trial/W_SA_DUD1.png"):gdStr()
	W_SA_DUD2 = gd.createFromPng("resources/trial/W_SA_DUD2.png"):gdStr()
	W_SA_DUD3 = gd.createFromPng("resources/trial/W_SA_DUD3.png"):gdStr()
	W_SA_DUDLEY1 = gd.createFromPng("resources/trial/W_SA_DUDLEY1.png"):gdStr()
	W_SA_DUDLEY2 = gd.createFromPng("resources/trial/W_SA_DUDLEY2.png"):gdStr()
	W_SA_DUDLEY3 = gd.createFromPng("resources/trial/W_SA_DUDLEY3.png"):gdStr()
	W_SA_ELE1 = gd.createFromPng("resources/trial/W_SA_ELE1.png"):gdStr()
	W_SA_ELE2 = gd.createFromPng("resources/trial/W_SA_ELE2.png"):gdStr()
	W_SA_ELE3 = gd.createFromPng("resources/trial/W_SA_ELE3.png"):gdStr()
	W_SA_GOU1_1 = gd.createFromPng("resources/trial/W_SA_GOU1_1.png"):gdStr()
	W_SA_GOU1_2 = gd.createFromPng("resources/trial/W_SA_GOU1_2.png"):gdStr()
	W_SA_GOU2 = gd.createFromPng("resources/trial/W_SA_GOU2.png"):gdStr()
	W_SA_GOU3_1 = gd.createFromPng("resources/trial/W_SA_GOU3_1.png"):gdStr()
	W_SA_GOU3_2 = gd.createFromPng("resources/trial/W_SA_GOU3_2.png"):gdStr()
	W_SA_GOU4 = gd.createFromPng("resources/trial/W_SA_GOU4.png"):gdStr()
	W_SA_GOU5 = gd.createFromPng("resources/trial/W_SA_GOU5.png"):gdStr()
	W_SA_HUGO1 = gd.createFromPng("resources/trial/W_SA_HUGO1.png"):gdStr()
	W_SA_HUGO2 = gd.createFromPng("resources/trial/W_SA_HUGO2.png"):gdStr()
	W_SA_HUGO3 = gd.createFromPng("resources/trial/W_SA_HUGO3.png"):gdStr()
	W_SA_IBU1 = gd.createFromPng("resources/trial/W_SA_IBU1.png"):gdStr()
	W_SA_IBU2 = gd.createFromPng("resources/trial/W_SA_IBU2.png"):gdStr()
	W_SA_IBU3 = gd.createFromPng("resources/trial/W_SA_IBU3.png"):gdStr()
	W_SA_KEN1 = gd.createFromPng("resources/trial/W_SA_KEN1.png"):gdStr()
	W_SA_KEN2 = gd.createFromPng("resources/trial/W_SA_KEN2.png"):gdStr()
	W_SA_KEN3 = gd.createFromPng("resources/trial/W_SA_KEN3.png"):gdStr()
	W_SA_MAK1 = gd.createFromPng("resources/trial/W_SA_MAK1.png"):gdStr()
	W_SA_MAK2 = gd.createFromPng("resources/trial/W_SA_MAK2.png"):gdStr()
	W_SA_MAK3 = gd.createFromPng("resources/trial/W_SA_MAK3.png"):gdStr()
	W_SA_NEC1 = gd.createFromPng("resources/trial/W_SA_NEC1.png"):gdStr()
	W_SA_NEC2 = gd.createFromPng("resources/trial/W_SA_NEC2.png"):gdStr()
	W_SA_NEC3 = gd.createFromPng("resources/trial/W_SA_NEC3.png"):gdStr()
	W_SA_ORO1_1 = gd.createFromPng("resources/trial/W_SA_ORO1_1.png"):gdStr()
	W_SA_ORO1_2 = gd.createFromPng("resources/trial/W_SA_ORO1_2.png"):gdStr()
	W_SA_ORO1_3 = gd.createFromPng("resources/trial/W_SA_ORO1_3.png"):gdStr()
	W_SA_ORO2_1 = gd.createFromPng("resources/trial/W_SA_ORO2_1.png"):gdStr()
	W_SA_ORO2_2 = gd.createFromPng("resources/trial/W_SA_ORO2_2.png"):gdStr()
	W_SA_ORO3_1 = gd.createFromPng("resources/trial/W_SA_ORO3_1.png"):gdStr()
	W_SA_ORO3_2 = gd.createFromPng("resources/trial/W_SA_ORO3_2.png"):gdStr()
	W_SA_Q1 = gd.createFromPng("resources/trial/W_SA_Q1.png"):gdStr()
	W_SA_Q2 = gd.createFromPng("resources/trial/W_SA_Q2.png"):gdStr()
	W_SA_Q3 = gd.createFromPng("resources/trial/W_SA_Q3.png"):gdStr()
	W_SA_Q3_1 = gd.createFromPng("resources/trial/W_SA_Q3_1.png"):gdStr()
	W_SA_Q3_2 = gd.createFromPng("resources/trial/W_SA_Q3_2.png"):gdStr()
	W_SA_REM1 = gd.createFromPng("resources/trial/W_SA_REM1.png"):gdStr()
	W_SA_REM2 = gd.createFromPng("resources/trial/W_SA_REM2.png"):gdStr()
	W_SA_REM3 = gd.createFromPng("resources/trial/W_SA_REM3.png"):gdStr()
	W_SA_RYU1 = gd.createFromPng("resources/trial/W_SA_RYU1.png"):gdStr()
	W_SA_RYU2 = gd.createFromPng("resources/trial/W_SA_RYU2.png"):gdStr()
	W_SA_RYU3_1 = gd.createFromPng("resources/trial/W_SA_RYU3_1.png"):gdStr()
	W_SA_RYU3_2 = gd.createFromPng("resources/trial/W_SA_RYU3_2.png"):gdStr()
	W_SA_RYU3_3 = gd.createFromPng("resources/trial/W_SA_RYU3_3.png"):gdStr()
	W_SA_RYU3_4 = gd.createFromPng("resources/trial/W_SA_RYU3_4.png"):gdStr()
	W_SA_RYU3_5 = gd.createFromPng("resources/trial/W_SA_RYU3_5.png"):gdStr()
	W_SA_SEA1 = gd.createFromPng("resources/trial/W_SA_SEA1.png"):gdStr()
	W_SA_SEA2 = gd.createFromPng("resources/trial/W_SA_SEA2.png"):gdStr()
	W_SA_SEA3 = gd.createFromPng("resources/trial/W_SA_SEA3.png"):gdStr()
	W_SA_TWE1 = gd.createFromPng("resources/trial/W_SA_TWE1.png"):gdStr()
	W_SA_TWE2 = gd.createFromPng("resources/trial/W_SA_TWE2.png"):gdStr()
	W_SA_TWE3 = gd.createFromPng("resources/trial/W_SA_TWE3.png"):gdStr()
	W_SA_URIEN1 = gd.createFromPng("resources/trial/W_SA_URIEN1.png"):gdStr()
	W_SA_URIEN2 = gd.createFromPng("resources/trial/W_SA_URIEN2.png"):gdStr()
	W_SA_URIEN3 = gd.createFromPng("resources/trial/W_SA_URIEN3.png"):gdStr()
	W_SA_YANG1 = gd.createFromPng("resources/trial/W_SA_YANG1.png"):gdStr()
	W_SA_YANG2 = gd.createFromPng("resources/trial/W_SA_YANG2.png"):gdStr()
	W_SA_YANG3 = gd.createFromPng("resources/trial/W_SA_YANG3.png"):gdStr()
	W_SA_YUN1 = gd.createFromPng("resources/trial/W_SA_YUN1.png"):gdStr()
	W_SA_YUN2 = gd.createFromPng("resources/trial/W_SA_YUN2.png"):gdStr()
	W_SA_YUN3 = gd.createFromPng("resources/trial/W_SA_YUN3.png"):gdStr()
	W_SP_ALEX1 = gd.createFromPng("resources/trial/W_SP_ALEX1.png"):gdStr()
	W_SP_ALEX2 = gd.createFromPng("resources/trial/W_SP_ALEX2.png"):gdStr()
	W_SP_ALEX3 = gd.createFromPng("resources/trial/W_SP_ALEX3.png"):gdStr()
	W_SP_ALEX4 = gd.createFromPng("resources/trial/W_SP_ALEX4.png"):gdStr()
	W_SP_ALEX5 = gd.createFromPng("resources/trial/W_SP_ALEX5.png"):gdStr()
	W_SP_ALEX6 = gd.createFromPng("resources/trial/W_SP_ALEX6.png"):gdStr()
	W_SP_CHU1 = gd.createFromPng("resources/trial/W_SP_CHU1.png"):gdStr()
	W_SP_CHU2 = gd.createFromPng("resources/trial/W_SP_CHU2.png"):gdStr()
	W_SP_CHU3 = gd.createFromPng("resources/trial/W_SP_CHU3.png"):gdStr()
	W_SP_CHU4 = gd.createFromPng("resources/trial/W_SP_CHU4.png"):gdStr()
	W_SP_DUD1 = gd.createFromPng("resources/trial/W_SP_DUD1.png"):gdStr()
	W_SP_DUD2_1 = gd.createFromPng("resources/trial/W_SP_DUD2_1.png"):gdStr()
	W_SP_DUD2_2 = gd.createFromPng("resources/trial/W_SP_DUD2_2.png"):gdStr()
	W_SP_DUD2_3 = gd.createFromPng("resources/trial/W_SP_DUD2_3.png"):gdStr()
	W_SP_DUD3 = gd.createFromPng("resources/trial/W_SP_DUD3.png"):gdStr()
	W_SP_DUD4 = gd.createFromPng("resources/trial/W_SP_DUD4.png"):gdStr()
	W_SP_DUD5 = gd.createFromPng("resources/trial/W_SP_DUD5.png"):gdStr()
	W_SP_DUD6 = gd.createFromPng("resources/trial/W_SP_DUD6.png"):gdStr()
	W_SP_DUDLEY1 = gd.createFromPng("resources/trial/W_SP_DUDLEY1.png"):gdStr()
	W_SP_DUDLEY2 = gd.createFromPng("resources/trial/W_SP_DUDLEY2.png"):gdStr()
	W_SP_DUDLEY3 = gd.createFromPng("resources/trial/W_SP_DUDLEY3.png"):gdStr()
	W_SP_DUDLEY4 = gd.createFromPng("resources/trial/W_SP_DUDLEY4.png"):gdStr()
	W_SP_DUDLEY5 = gd.createFromPng("resources/trial/W_SP_DUDLEY5.png"):gdStr()
	W_SP_DUDLEY6 = gd.createFromPng("resources/trial/W_SP_DUDLEY6.png"):gdStr()
	W_SP_DUDLEY7 = gd.createFromPng("resources/trial/W_SP_DUDLEY7.png"):gdStr()
	W_SP_DUDLEY8 = gd.createFromPng("resources/trial/W_SP_DUDLEY8.png"):gdStr()
	W_SP_ELE1 = gd.createFromPng("resources/trial/W_SP_ELE1.png"):gdStr()
	W_SP_ELE2 = gd.createFromPng("resources/trial/W_SP_ELE2.png"):gdStr()
	W_SP_ELE3 = gd.createFromPng("resources/trial/W_SP_ELE3.png"):gdStr()
	W_SP_ELE4 = gd.createFromPng("resources/trial/W_SP_ELE4.png"):gdStr()
	W_SP_ELE5 = gd.createFromPng("resources/trial/W_SP_ELE5.png"):gdStr()
	W_SP_GOU1 = gd.createFromPng("resources/trial/W_SP_GOU1.png"):gdStr()
	W_SP_GOU2 = gd.createFromPng("resources/trial/W_SP_GOU2.png"):gdStr()
	W_SP_GOU3 = gd.createFromPng("resources/trial/W_SP_GOU3.png"):gdStr()
	W_SP_GOU4 = gd.createFromPng("resources/trial/W_SP_GOU4.png"):gdStr()
	W_SP_GOU5 = gd.createFromPng("resources/trial/W_SP_GOU5.png"):gdStr()
	W_SP_GOU6 = gd.createFromPng("resources/trial/W_SP_GOU6.png"):gdStr()
	W_SP_GOU7_1 = gd.createFromPng("resources/trial/W_SP_GOU7_1.png"):gdStr()
	W_SP_GOU7_2 = gd.createFromPng("resources/trial/W_SP_GOU7_2.png"):gdStr()
	W_SP_GOU7_3 = gd.createFromPng("resources/trial/W_SP_GOU7_3.png"):gdStr()
	W_SP_GOU7_4 = gd.createFromPng("resources/trial/W_SP_GOU7_4.png"):gdStr()
	W_SP_GOU7_5 = gd.createFromPng("resources/trial/W_SP_GOU7_5.png"):gdStr()
	W_SP_GOU8 = gd.createFromPng("resources/trial/W_SP_GOU8.png"):gdStr()
	W_SP_HUGO1 = gd.createFromPng("resources/trial/W_SP_HUGO1.png"):gdStr()
	W_SP_HUGO2 = gd.createFromPng("resources/trial/W_SP_HUGO2.png"):gdStr()
	W_SP_HUGO3 = gd.createFromPng("resources/trial/W_SP_HUGO3.png"):gdStr()
	W_SP_HUGO4 = gd.createFromPng("resources/trial/W_SP_HUGO4.png"):gdStr()
	W_SP_HUGO5 = gd.createFromPng("resources/trial/W_SP_HUGO5.png"):gdStr()
	W_SP_HUGO6 = gd.createFromPng("resources/trial/W_SP_HUGO6.png"):gdStr()
	W_SP_IBU1 = gd.createFromPng("resources/trial/W_SP_IBU1.png"):gdStr()
	W_SP_IBU2 = gd.createFromPng("resources/trial/W_SP_IBU2.png"):gdStr()
	W_SP_IBU3 = gd.createFromPng("resources/trial/W_SP_IBU3.png"):gdStr()
	W_SP_IBU4 = gd.createFromPng("resources/trial/W_SP_IBU4.png"):gdStr()
	W_SP_IBU5 = gd.createFromPng("resources/trial/W_SP_IBU5.png"):gdStr()
	W_SP_IBU6 = gd.createFromPng("resources/trial/W_SP_IBU6.png"):gdStr()
	W_SP_IBU7 = gd.createFromPng("resources/trial/W_SP_IBU7.png"):gdStr()
	W_SP_IBU8 = gd.createFromPng("resources/trial/W_SP_IBU8.png"):gdStr()
	W_SP_MAK1 = gd.createFromPng("resources/trial/W_SP_MAK1.png"):gdStr()
	W_SP_MAK2 = gd.createFromPng("resources/trial/W_SP_MAK2.png"):gdStr()
	W_SP_MAK3 = gd.createFromPng("resources/trial/W_SP_MAK3.png"):gdStr()
	W_SP_MAK4 = gd.createFromPng("resources/trial/W_SP_MAK4.png"):gdStr()
	W_SP_MAK5 = gd.createFromPng("resources/trial/W_SP_MAK5.png"):gdStr()
	W_SP_NEC1 = gd.createFromPng("resources/trial/W_SP_NEC1.png"):gdStr()
	W_SP_NEC2 = gd.createFromPng("resources/trial/W_SP_NEC2.png"):gdStr()
	W_SP_NEC3 = gd.createFromPng("resources/trial/W_SP_NEC3.png"):gdStr()
	W_SP_NEC4 = gd.createFromPng("resources/trial/W_SP_NEC4.png"):gdStr()
	W_SP_NEC5 = gd.createFromPng("resources/trial/W_SP_NEC5.png"):gdStr()
	W_SP_NEC6 = gd.createFromPng("resources/trial/W_SP_NEC6.png"):gdStr()
	W_SP_ORO1 = gd.createFromPng("resources/trial/W_SP_ORO1.png"):gdStr()
	W_SP_ORO2 = gd.createFromPng("resources/trial/W_SP_ORO2.png"):gdStr()
	W_SP_ORO3 = gd.createFromPng("resources/trial/W_SP_ORO3.png"):gdStr()
	W_SP_ORO4 = gd.createFromPng("resources/trial/W_SP_ORO4.png"):gdStr()
	W_SP_ORO5 = gd.createFromPng("resources/trial/W_SP_ORO5.png"):gdStr()
	W_SP_Q1 = gd.createFromPng("resources/trial/W_SP_Q1.png"):gdStr()
	W_SP_Q2 = gd.createFromPng("resources/trial/W_SP_Q2.png"):gdStr()
	W_SP_Q3 = gd.createFromPng("resources/trial/W_SP_Q3.png"):gdStr()
	W_SP_Q4 = gd.createFromPng("resources/trial/W_SP_Q4.png"):gdStr()
	W_SP_Q5 = gd.createFromPng("resources/trial/W_SP_Q5.png"):gdStr()
	W_SP_REM1 = gd.createFromPng("resources/trial/W_SP_REM1.png"):gdStr()
	W_SP_REM2 = gd.createFromPng("resources/trial/W_SP_REM2.png"):gdStr()
	W_SP_REM3 = gd.createFromPng("resources/trial/W_SP_REM3.png"):gdStr()
	W_SP_REM4 = gd.createFromPng("resources/trial/W_SP_REM4.png"):gdStr()
	W_SP_RYU1 = gd.createFromPng("resources/trial/W_SP_RYU1.png"):gdStr()
	W_SP_RYU2 = gd.createFromPng("resources/trial/W_SP_RYU2.png"):gdStr()
	W_SP_RYU3 = gd.createFromPng("resources/trial/W_SP_RYU3.png"):gdStr()
	W_SP_RYU4 = gd.createFromPng("resources/trial/W_SP_RYU4.png"):gdStr()
	W_SP_RYU5 = gd.createFromPng("resources/trial/W_SP_RYU5.png"):gdStr()
	W_SP_SEA1 = gd.createFromPng("resources/trial/W_SP_SEA1.png"):gdStr()
	W_SP_SEA2 = gd.createFromPng("resources/trial/W_SP_SEA2.png"):gdStr()
	W_SP_SEA3 = gd.createFromPng("resources/trial/W_SP_SEA3.png"):gdStr()
	W_SP_SEA4 = gd.createFromPng("resources/trial/W_SP_SEA4.png"):gdStr()
	W_SP_SEA5 = gd.createFromPng("resources/trial/W_SP_SEA5.png"):gdStr()
	W_SP_TWE1 = gd.createFromPng("resources/trial/W_SP_TWE1.png"):gdStr()
	W_SP_TWE2 = gd.createFromPng("resources/trial/W_SP_TWE2.png"):gdStr()
	W_SP_TWE3 = gd.createFromPng("resources/trial/W_SP_TWE3.png"):gdStr()
	W_SP_TWE4 = gd.createFromPng("resources/trial/W_SP_TWE4.png"):gdStr()
	W_SP_URIEN1 = gd.createFromPng("resources/trial/W_SP_URIEN1.png"):gdStr()
	W_SP_URIEN2 = gd.createFromPng("resources/trial/W_SP_URIEN2.png"):gdStr()
	W_SP_URIEN3 = gd.createFromPng("resources/trial/W_SP_URIEN3.png"):gdStr()
	W_SP_URIEN4 = gd.createFromPng("resources/trial/W_SP_URIEN4.png"):gdStr()
	W_SP_YANG1 = gd.createFromPng("resources/trial/W_SP_YANG1.png"):gdStr()
	W_SP_YANG2 = gd.createFromPng("resources/trial/W_SP_YANG2.png"):gdStr()
	W_SP_YANG3 = gd.createFromPng("resources/trial/W_SP_YANG3.png"):gdStr()
	W_SP_YANG4 = gd.createFromPng("resources/trial/W_SP_YANG4.png"):gdStr()
	W_SP_YANG5 = gd.createFromPng("resources/trial/W_SP_YANG5.png"):gdStr()
	W_SP_YUN1 = gd.createFromPng("resources/trial/W_SP_YUN1.png"):gdStr()
	W_SP_YUN2 = gd.createFromPng("resources/trial/W_SP_YUN2.png"):gdStr()
	W_SP_YUN3 = gd.createFromPng("resources/trial/W_SP_YUN3.png"):gdStr()
	W_SP_YUN4 = gd.createFromPng("resources/trial/W_SP_YUN4.png"):gdStr()
	W_SP_YUN5 = gd.createFromPng("resources/trial/W_SP_YUN5.png"):gdStr()
	W_TK_HUGO1 = gd.createFromPng("resources/trial/W_TK_HUGO1.png"):gdStr()
	W_TR_ALEX1 = gd.createFromPng("resources/trial/W_TR_ALEX1.png"):gdStr()
	W_TR_ALEX2 = gd.createFromPng("resources/trial/W_TR_ALEX2.png"):gdStr()
	W_TR_KEN1 = gd.createFromPng("resources/trial/W_TR_KEN1.png"):gdStr()
	W_TR_KEN2 = gd.createFromPng("resources/trial/W_TR_KEN2.png"):gdStr()
	W_TR_HUGO1 = gd.createFromPng("resources/trial/W_TR_HUGO1.png"):gdStr()
	W_4_THROW = gd.createFromPng("resources/trial/W_4_THROW.png"):gdStr()
	W_6_THROW = gd.createFromPng("resources/trial/W_6_THROW.png"):gdStr()
	W_N_THROW = gd.createFromPng("resources/trial/W_N_THROW.png"):gdStr()
	W_NM_BDASH = gd.createFromPng("resources/trial/W_NM_BDASH.png"):gdStr()
	W_NM_FDASH = gd.createFromPng("resources/trial/W_NM_FDASH.png"):gdStr()
	GAUGE_SEIGEN_J = gd.createFromPng("resources/trial/GAUGE_SEIGEN_J.png"):gdStr()
	GAUGE_SEIGEN_E = gd.createFromPng("resources/trial/GAUGE_SEIGEN_E.png"):gdStr()
	GAUGE_INF_J = gd.createFromPng("resources/trial/GAUGE_INF_J.png"):gdStr()
	GAUGE_INF_E = gd.createFromPng("resources/trial/GAUGE_INF_E.png"):gdStr()
	MENU_TITLE = gd.createFromPng("resources/trial/MENU_TITLE_20190101.png"):gdStr()
	MENU = gd.createFromPng("resources/trial/MENU.png"):gdStr()
	MENU_SHIKAKU = gd.createFromPng("resources/trial/MENU_SHIKAKU.png"):gdStr()
	MENU_SHIKAKU_CHECKED1_GREEN = gd.createFromPng("resources/trial/MENU_SHIKAKU_CHECKED1_GREEN.png"):gdStr()
	MENU_SHIKAKU_CHECKED2_YELLOW = gd.createFromPng("resources/trial/MENU_SHIKAKU_CHECKED2_YELLOW.png"):gdStr()
	MENU_SHIKAKU_CHECKED3_BLUE = gd.createFromPng("resources/trial/MENU_SHIKAKU_CHECKED3_BLUE.png"):gdStr()
	MENU_SHIKAKU_CHECKED4_PINK = gd.createFromPng("resources/trial/MENU_SHIKAKU_CHECKED4_PINK.png"):gdStr()
	MENU_SHIKAKU_RED = gd.createFromPng("resources/trial/MENU_SHIKAKU_RED.png"):gdStr()
	MENU_SHIKAKU_CURCOR = gd.createFromPng("resources/trial/MENU_SHIKAKU_CURCOR.png"):gdStr()
	MENU_STAR = gd.createFromPng("resources/trial/MENU_STAR.png"):gdStr()
	MENU_DIFFICULTY = gd.createFromPng("resources/trial/MENU_DIFFICULTY.png"):gdStr()
	MENU_BUTTON_BOX = gd.createFromPng("resources/trial/MENU_BUTTON_BOX.png"):gdStr()
	MENU_CHANGE_LANGUAGE = gd.createFromPng("resources/trial/MENU_CHANGE_LANGUAGE.png"):gdStr()
	MENU_CHANGE_LANGUAGE_ENGLISH = gd.createFromPng("resources/trial/MENU_CHANGE_LANGUAGE_ENGLISH.png"):gdStr()
	MENU_CHANGE_LANGUAGE_JAPANESE = gd.createFromPng("resources/trial/MENU_CHANGE_LANGUAGE_JAPANESE.png"):gdStr()
	MENU_CHANGE_LANGUAGE_BUTTON = gd.createFromPng("resources/trial/MENU_CHANGE_LANGUAGE_BUTTON.png"):gdStr()
	MENU_KEY_DISP = gd.createFromPng("resources/trial/MENU_KEY_DISP.png"):gdStr()
	MENU_KEY_DISP_BUTTON = gd.createFromPng("resources/trial/MENU_KEY_DISP_BUTTON.png"):gdStr()
	MENU_ASSIST = gd.createFromPng("resources/trial/MENU_ASSIST.png"):gdStr()
	MENU_ASSIST_BUTTON = gd.createFromPng("resources/trial/MENU_ASSIST_BUTTON.png"):gdStr()
	MENU_SWITCH_ON = gd.createFromPng("resources/trial/MENU_SWITCH_ON.png"):gdStr()
	MENU_SWITCH_OFF = gd.createFromPng("resources/trial/MENU_SWITCH_OFF.png"):gdStr()
	M_C_BLANK = gd.createFromPng("resources/trial/MENU_COMMENT_BLANK.png"):gdStr()
	M_C_1_1 = gd.createFromPng("resources/trial/MENU_COMMENT_1_1.png"):gdStr()
	M_C_1_2 = gd.createFromPng("resources/trial/MENU_COMMENT_1_2.png"):gdStr()
	M_C_1_3 = gd.createFromPng("resources/trial/MENU_COMMENT_1_3.png"):gdStr()
	M_C_1_4 = gd.createFromPng("resources/trial/MENU_COMMENT_1_4.png"):gdStr()
	M_C_2_3 = gd.createFromPng("resources/trial/MENU_COMMENT_2_3.png"):gdStr()
	M_C_2_4 = gd.createFromPng("resources/trial/MENU_COMMENT_2_4.png"):gdStr()
	M_C_2_5 = gd.createFromPng("resources/trial/MENU_COMMENT_2_5.png"):gdStr()
	M_C_2_6 = gd.createFromPng("resources/trial/MENU_COMMENT_2_6.png"):gdStr()
	M_C_2_7 = gd.createFromPng("resources/trial/MENU_COMMENT_2_7.png"):gdStr()
	M_C_2_8 = gd.createFromPng("resources/trial/MENU_COMMENT_2_8.png"):gdStr()
	M_C_2_9 = gd.createFromPng("resources/trial/MENU_COMMENT_2_9.png"):gdStr()
	M_C_3_1 = gd.createFromPng("resources/trial/MENU_COMMENT_3_1.png"):gdStr()
	M_C_3_2 = gd.createFromPng("resources/trial/MENU_COMMENT_3_2.png"):gdStr()
	M_C_3_7 = gd.createFromPng("resources/trial/MENU_COMMENT_3_7.png"):gdStr()
	M_C_3_8 = gd.createFromPng("resources/trial/MENU_COMMENT_3_8.png"):gdStr()
	M_C_4_2 = gd.createFromPng("resources/trial/MENU_COMMENT_4_2.png"):gdStr()
	M_C_4_3 = gd.createFromPng("resources/trial/MENU_COMMENT_4_3.png"):gdStr()
	M_C_4_9 = gd.createFromPng("resources/trial/MENU_COMMENT_4_9.png"):gdStr()
	M_C_5_1 = gd.createFromPng("resources/trial/MENU_COMMENT_5_1.png"):gdStr()
	M_C_5_3 = gd.createFromPng("resources/trial/MENU_COMMENT_5_3.png"):gdStr()
	M_C_6_1 = gd.createFromPng("resources/trial/MENU_COMMENT_6_1.png"):gdStr()
	M_C_6_2 = gd.createFromPng("resources/trial/MENU_COMMENT_6_2.png"):gdStr()
	M_C_6_4 = gd.createFromPng("resources/trial/MENU_COMMENT_6_4.png"):gdStr()
	M_C_6_9 = gd.createFromPng("resources/trial/MENU_COMMENT_6_9.png"):gdStr()
	M_C_7_3 = gd.createFromPng("resources/trial/MENU_COMMENT_7_3.png"):gdStr()
	M_C_7_5 = gd.createFromPng("resources/trial/MENU_COMMENT_7_5.png"):gdStr()
	M_C_8_3 = gd.createFromPng("resources/trial/MENU_COMMENT_8_3.png"):gdStr()
	M_C_8_4 = gd.createFromPng("resources/trial/MENU_COMMENT_8_4.png"):gdStr()
	M_C_9_10 = gd.createFromPng("resources/trial/MENU_COMMENT_9_10.png"):gdStr()
	M_C_9_5 = gd.createFromPng("resources/trial/MENU_COMMENT_9_5.png"):gdStr()
	M_C_9_6 = gd.createFromPng("resources/trial/MENU_COMMENT_9_6.png"):gdStr()
	M_C_9_7 = gd.createFromPng("resources/trial/MENU_COMMENT_9_7.png"):gdStr()
	M_C_9_8 = gd.createFromPng("resources/trial/MENU_COMMENT_9_8.png"):gdStr()
	M_C_9_9 = gd.createFromPng("resources/trial/MENU_COMMENT_9_9.png"):gdStr()
	M_C_10_4 = gd.createFromPng("resources/trial/MENU_COMMENT_10_4.png"):gdStr()
	M_C_10_5 = gd.createFromPng("resources/trial/MENU_COMMENT_10_5.png"):gdStr()
	M_C_11_3 = gd.createFromPng("resources/trial/MENU_COMMENT_11_3.png"):gdStr()
	M_C_11_4 = gd.createFromPng("resources/trial/MENU_COMMENT_11_4.png"):gdStr()
	M_C_11_6 = gd.createFromPng("resources/trial/MENU_COMMENT_11_6.png"):gdStr()
	M_C_13_5 = gd.createFromPng("resources/trial/MENU_COMMENT_13_5.png"):gdStr()
	M_C_13_8 = gd.createFromPng("resources/trial/MENU_COMMENT_13_8.png"):gdStr()
	M_C_14_10 = gd.createFromPng("resources/trial/MENU_COMMENT_14_10.png"):gdStr()
	M_C_14_3 = gd.createFromPng("resources/trial/MENU_COMMENT_14_3.png"):gdStr()
	M_C_15_1 = gd.createFromPng("resources/trial/MENU_COMMENT_15_1.png"):gdStr()
	M_C_15_2 = gd.createFromPng("resources/trial/MENU_COMMENT_15_2.png"):gdStr()
	M_C_15_3 = gd.createFromPng("resources/trial/MENU_COMMENT_15_3.png"):gdStr()
	M_C_15_4 = gd.createFromPng("resources/trial/MENU_COMMENT_15_4.png"):gdStr()
	M_C_15_6 = gd.createFromPng("resources/trial/MENU_COMMENT_15_6.png"):gdStr()
	M_C_15_7 = gd.createFromPng("resources/trial/MENU_COMMENT_15_7.png"):gdStr()
	M_C_16_5 = gd.createFromPng("resources/trial/MENU_COMMENT_16_5.png"):gdStr()
	M_C_16_6 = gd.createFromPng("resources/trial/MENU_COMMENT_16_6.png"):gdStr()
	M_C_16_9 = gd.createFromPng("resources/trial/MENU_COMMENT_16_9.png"):gdStr()
	M_C_17_3 = gd.createFromPng("resources/trial/MENU_COMMENT_17_3.png"):gdStr()
	M_C_17_9 = gd.createFromPng("resources/trial/MENU_COMMENT_17_9.png"):gdStr()
	M_C_19_4 = gd.createFromPng("resources/trial/MENU_COMMENT_19_4.png"):gdStr()
	M_C_19_5 = gd.createFromPng("resources/trial/MENU_COMMENT_19_5.png"):gdStr()
	M_C_19_6 = gd.createFromPng("resources/trial/MENU_COMMENT_19_6.png"):gdStr()
	button_l1 = gd.createFromPng("resources/command/button_l1.png"):gdStr()
	button_l2 = gd.createFromPng("resources/command/button_l2.png"):gdStr()
	button_m1 = gd.createFromPng("resources/command/button_m1.png"):gdStr()
	button_m2 = gd.createFromPng("resources/command/button_m2.png"):gdStr()
	button_h1 = gd.createFromPng("resources/command/button_h1.png"):gdStr()
	button_h2 = gd.createFromPng("resources/command/button_h2.png"):gdStr()
	button_s1 = gd.createFromPng("resources/command/button_s1.png"):gdStr()
	button_s2 = gd.createFromPng("resources/command/button_s2.png"):gdStr()
	reba1 = gd.createFromPng("resources/command/reba1.png"):gdStr()
	reba2 = gd.createFromPng("resources/command/reba2.png"):gdStr()
	reba3 = gd.createFromPng("resources/command/reba3.png"):gdStr()
	reba4 = gd.createFromPng("resources/command/reba4.png"):gdStr()
	reba5 = gd.createFromPng("resources/command/reba5.png"):gdStr()
	reba6 = gd.createFromPng("resources/command/reba6.png"):gdStr()
	reba7 = gd.createFromPng("resources/command/reba7.png"):gdStr()
	reba8 = gd.createFromPng("resources/command/reba8.png"):gdStr()
	reba9 = gd.createFromPng("resources/command/reba9.png"):gdStr()
	comment = {
			{M_C_1_1  , M_C_1_2  , M_C_1_3,   M_C_1_4  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_2_3,   M_C_2_4  , M_C_2_5  , M_C_2_6  , M_C_2_7,   M_C_2_8  , M_C_2_9  , M_C_BLANK},
			{M_C_3_1  , M_C_3_2  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_3_7  , M_C_3_8  , M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_4_2  , M_C_4_3  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_4_9  , M_C_BLANK},
			{M_C_5_1  , M_C_BLANK, M_C_5_3  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_6_1  , M_C_6_2  , M_C_BLANK, M_C_6_4  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_6_9  , M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_7_3,   M_C_BLANK, M_C_7_5  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_8_3  , M_C_8_4  , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_9_5  , M_C_9_6  , M_C_9_7  , M_C_9_8  , M_C_9_9  , M_C_9_10 },
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_10_4 , M_C_10_5 , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_11_3 , M_C_11_4 , M_C_BLANK, M_C_11_6 , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_13_5 , M_C_BLANK, M_C_BLANK, M_C_13_8 , M_C_BLANK, M_C_BLANK },
			{M_C_BLANK, M_C_BLANK, M_C_14_3 , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_14_10},
			{M_C_15_1 , M_C_15_2 , M_C_15_3 , M_C_15_4 , M_C_BLANK, M_C_15_6 , M_C_15_7 , M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_16_5 , M_C_16_6 , M_C_BLANK, M_C_BLANK, M_C_16_9 , M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_17_3 , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_17_9 , M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK},
			{M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_19_4 , M_C_19_5 , M_C_19_6 , M_C_BLANK, M_C_BLANK, M_C_BLANK, M_C_BLANK}
	}
end
function kadaiImageDraw(x,y,wr,kadai)
	str = wr..kadai
	if str == "R_COMMON_OR" then gui.image(x,y,R_COMMON_OR)
	elseif str == "R_COMMON_EX" then gui.image(x,y,R_COMMON_EX)
	elseif str == "R_COMMON_H" then gui.image(x,y,R_COMMON_H)
	elseif str == "R_COMMON_L" then gui.image(x,y,R_COMMON_L)
	elseif str == "R_COMMON_M" then gui.image(x,y,R_COMMON_M)
	elseif str == "R_COMMON_ME" then gui.image(x,y,R_COMMON_ME)
	elseif str == "R_COMMON_URA" then gui.image(x,y,R_COMMON_URA)
	elseif str == "R_COMMON_KARACAN" then gui.image(x,y,R_COMMON_KARACAN)
	elseif str == "R_COMMON_JS" then gui.image(x,y,R_COMMON_JS)
	elseif str == "R_COMMON_JN" then gui.image(x,y,R_COMMON_JN)
	elseif str == "R_COMMON_ANTI_AIR" then gui.image(x,y,R_COMMON_ANTI_AIR)
	elseif str == "R_COMMON_KARABURI" then gui.image(x,y,R_COMMON_KARABURI)
	elseif str == "R_LEAP" then gui.image(x,y,R_LEAP)
	elseif str == "R_NM_1HK" then gui.image(x,y,R_NM_1HK)
	elseif str == "R_NM_1HP" then gui.image(x,y,R_NM_1HP)
	elseif str == "R_NM_1LK" then gui.image(x,y,R_NM_1LK)
	elseif str == "R_NM_1LP" then gui.image(x,y,R_NM_1LP)
	elseif str == "R_NM_1MK" then gui.image(x,y,R_NM_1MK)
	elseif str == "R_NM_1MP" then gui.image(x,y,R_NM_1MP)
	elseif str == "R_NM_3HK" then gui.image(x,y,R_NM_3HK)
	elseif str == "R_NM_3HP" then gui.image(x,y,R_NM_3HP)
	elseif str == "R_NM_3LK" then gui.image(x,y,R_NM_3LK)
	elseif str == "R_NM_3LP" then gui.image(x,y,R_NM_3LP)
	elseif str == "R_NM_3MK" then gui.image(x,y,R_NM_3MK)
	elseif str == "R_NM_3MP" then gui.image(x,y,R_NM_3MP)
	elseif str == "R_NM_4HK" then gui.image(x,y,R_NM_4HK)
	elseif str == "R_NM_4HP" then gui.image(x,y,R_NM_4HP)
	elseif str == "R_NM_4LK" then gui.image(x,y,R_NM_4LK)
	elseif str == "R_NM_4LP" then gui.image(x,y,R_NM_4LP)
	elseif str == "R_NM_4MK" then gui.image(x,y,R_NM_4MK)
	elseif str == "R_NM_4MP" then gui.image(x,y,R_NM_4MP)
	elseif str == "R_NM_6HK" then gui.image(x,y,R_NM_6HK)
	elseif str == "R_NM_6HP" then gui.image(x,y,R_NM_6HP)
	elseif str == "R_NM_6LK" then gui.image(x,y,R_NM_6LK)
	elseif str == "R_NM_6LP" then gui.image(x,y,R_NM_6LP)
	elseif str == "R_NM_6MK" then gui.image(x,y,R_NM_6MK)
	elseif str == "R_NM_6MP" then gui.image(x,y,R_NM_6MP)
	elseif str == "R_NM_CHK" then gui.image(x,y,R_NM_CHK)
	elseif str == "R_NM_CHP" then gui.image(x,y,R_NM_CHP)
	elseif str == "R_NM_CLK" then gui.image(x,y,R_NM_CLK)
	elseif str == "R_NM_CLP" then gui.image(x,y,R_NM_CLP)
	elseif str == "R_NM_CMK" then gui.image(x,y,R_NM_CMK)
	elseif str == "R_NM_CMP" then gui.image(x,y,R_NM_CMP)
	elseif str == "R_NM_JHK" then gui.image(x,y,R_NM_JHK)
	elseif str == "R_NM_JHP" then gui.image(x,y,R_NM_JHP)
	elseif str == "R_NM_JLK" then gui.image(x,y,R_NM_JLK)
	elseif str == "R_NM_JLP" then gui.image(x,y,R_NM_JLP)
	elseif str == "R_NM_JMK" then gui.image(x,y,R_NM_JMK)
	elseif str == "R_NM_JMP" then gui.image(x,y,R_NM_JMP)
	elseif str == "R_NM_J2MK" then gui.image(x,y,R_NM_J2MK)
	elseif str == "R_NM_J3MK" then gui.image(x,y,R_NM_J3MK)
	elseif str == "R_NM_J6HP" then gui.image(x,y,R_NM_J6HP)
	elseif str == "R_NM_J2HP" then gui.image(x,y,R_NM_J2HP)
	elseif str == "R_NM_J6MK" then gui.image(x,y,R_NM_J6MK)
	elseif str == "R_NM_NJHK" then gui.image(x,y,R_NM_NJHK)
	elseif str == "R_NM_NJHP" then gui.image(x,y,R_NM_NJHP)
	elseif str == "R_NM_NJLK" then gui.image(x,y,R_NM_NJLK)
	elseif str == "R_NM_NJLP" then gui.image(x,y,R_NM_NJLP)
	elseif str == "R_NM_NJMK" then gui.image(x,y,R_NM_NJMK)
	elseif str == "R_NM_NJMP" then gui.image(x,y,R_NM_NJMP)
	elseif str == "R_NM_SCHK" then gui.image(x,y,R_NM_SCHK)
	elseif str == "R_NM_SCHP" then gui.image(x,y,R_NM_SCHP)
	elseif str == "R_NM_SCLK" then gui.image(x,y,R_NM_SCLK)
	elseif str == "R_NM_SCLP" then gui.image(x,y,R_NM_SCLP)
	elseif str == "R_NM_SCMK" then gui.image(x,y,R_NM_SCMK)
	elseif str == "R_NM_SCMP" then gui.image(x,y,R_NM_SCMP)
	elseif str == "R_NM_SDHK" then gui.image(x,y,R_NM_SDHK)
	elseif str == "R_NM_SDHP" then gui.image(x,y,R_NM_SDHP)
	elseif str == "R_NM_SDLK" then gui.image(x,y,R_NM_SDLK)
	elseif str == "R_NM_SDLP" then gui.image(x,y,R_NM_SDLP)
	elseif str == "R_NM_SDMK" then gui.image(x,y,R_NM_SDMK)
	elseif str == "R_NM_SDMP" then gui.image(x,y,R_NM_SDMP)
	elseif str == "R_NM_SHK" then gui.image(x,y,R_NM_SHK)
	elseif str == "R_NM_SHP" then gui.image(x,y,R_NM_SHP)
	elseif str == "R_NM_SJHK" then gui.image(x,y,R_NM_SJHK)
	elseif str == "R_NM_SJHP" then gui.image(x,y,R_NM_SJHP)
	elseif str == "R_NM_SJLK" then gui.image(x,y,R_NM_SJLK)
	elseif str == "R_NM_SJLP" then gui.image(x,y,R_NM_SJLP)
	elseif str == "R_NM_SJMK" then gui.image(x,y,R_NM_SJMK)
	elseif str == "R_NM_SJMP" then gui.image(x,y,R_NM_SJMP)
	elseif str == "R_NM_SLK" then gui.image(x,y,R_NM_SLK)
	elseif str == "R_NM_SLP" then gui.image(x,y,R_NM_SLP)
	elseif str == "R_NM_SMK" then gui.image(x,y,R_NM_SMK)
	elseif str == "R_NM_SMP" then gui.image(x,y,R_NM_SMP)
	elseif str == "R_PA" then gui.image(x,y,R_PA)
	elseif str == "R_SA_ALEX1" then gui.image(x,y,R_SA_ALEX1)
	elseif str == "R_SA_ALEX2" then gui.image(x,y,R_SA_ALEX2)
	elseif str == "R_SA_ALEX3" then gui.image(x,y,R_SA_ALEX3)
	elseif str == "R_SA_CHU1" then gui.image(x,y,R_SA_CHU1)
	elseif str == "R_SA_CHU2" then gui.image(x,y,R_SA_CHU2)
	elseif str == "R_SA_CHU3" then gui.image(x,y,R_SA_CHU3)
	elseif str == "R_SA_DUD1" then gui.image(x,y,R_SA_DUD1)
	elseif str == "R_SA_DUD2" then gui.image(x,y,R_SA_DUD2)
	elseif str == "R_SA_DUD3" then gui.image(x,y,R_SA_DUD3)
	elseif str == "R_SA_DUDLEY1" then gui.image(x,y,R_SA_DUDLEY1)
	elseif str == "R_SA_DUDLEY2" then gui.image(x,y,R_SA_DUDLEY2)
	elseif str == "R_SA_DUDLEY3" then gui.image(x,y,R_SA_DUDLEY3)
	elseif str == "R_SA_ELE1" then gui.image(x,y,R_SA_ELE1)
	elseif str == "R_SA_ELE2" then gui.image(x,y,R_SA_ELE2)
	elseif str == "R_SA_ELE3" then gui.image(x,y,R_SA_ELE3)
	elseif str == "R_SA_GOU1_1" then gui.image(x,y,R_SA_GOU1_1)
	elseif str == "R_SA_GOU1_2" then gui.image(x,y,R_SA_GOU1_2)
	elseif str == "R_SA_GOU2" then gui.image(x,y,R_SA_GOU2)
	elseif str == "R_SA_GOU3_1" then gui.image(x,y,R_SA_GOU3_1)
	elseif str == "R_SA_GOU3_2" then gui.image(x,y,R_SA_GOU3_2)
	elseif str == "R_SA_GOU4" then gui.image(x,y,R_SA_GOU4)
	elseif str == "R_SA_GOU5" then gui.image(x,y,R_SA_GOU5)
	elseif str == "R_SA_HUGO1" then gui.image(x,y,R_SA_HUGO1)
	elseif str == "R_SA_HUGO2" then gui.image(x,y,R_SA_HUGO2)
	elseif str == "R_SA_HUGO3" then gui.image(x,y,R_SA_HUGO3)
	elseif str == "R_SA_IBU1" then gui.image(x,y,R_SA_IBU1)
	elseif str == "R_SA_IBU2" then gui.image(x,y,R_SA_IBU2)
	elseif str == "R_SA_IBU3" then gui.image(x,y,R_SA_IBU3)
	elseif str == "R_SA_IBU4" then gui.image(x,y,R_SA_IBU4)
	elseif str == "R_SA_IBU5" then gui.image(x,y,R_SA_IBU5)
	elseif str == "R_SA_IBU6" then gui.image(x,y,R_SA_IBU6)
	elseif str == "R_SA_IBU7" then gui.image(x,y,R_SA_IBU7)
	elseif str == "R_SA_IBU8" then gui.image(x,y,R_SA_IBU8)
	elseif str == "R_SA_KEN1" then gui.image(x,y,R_SA_KEN1)
	elseif str == "R_SA_KEN2" then gui.image(x,y,R_SA_KEN2)
	elseif str == "R_SA_KEN3" then gui.image(x,y,R_SA_KEN3)
	elseif str == "R_SA_MAK1" then gui.image(x,y,R_SA_MAK1)
	elseif str == "R_SA_MAK2" then gui.image(x,y,R_SA_MAK2)
	elseif str == "R_SA_MAK3" then gui.image(x,y,R_SA_MAK3)
	elseif str == "R_SA_NEC1" then gui.image(x,y,R_SA_NEC1)
	elseif str == "R_SA_NEC2" then gui.image(x,y,R_SA_NEC2)
	elseif str == "R_SA_NEC3" then gui.image(x,y,R_SA_NEC3)
	elseif str == "R_SA_ORO1_1" then gui.image(x,y,R_SA_ORO1_1)
	elseif str == "R_SA_ORO1_2" then gui.image(x,y,R_SA_ORO1_2)
	elseif str == "R_SA_ORO1_3" then gui.image(x,y,R_SA_ORO1_3)
	elseif str == "R_SA_ORO2_1" then gui.image(x,y,R_SA_ORO2_1)
	elseif str == "R_SA_ORO2_2" then gui.image(x,y,R_SA_ORO2_2)
	elseif str == "R_SA_ORO3_1" then gui.image(x,y,R_SA_ORO3_1)
	elseif str == "R_SA_ORO3_2" then gui.image(x,y,R_SA_ORO3_2)
	elseif str == "R_SA_Q1" then gui.image(x,y,R_SA_Q1)
	elseif str == "R_SA_Q2" then gui.image(x,y,R_SA_Q2)
	elseif str == "R_SA_Q3" then gui.image(x,y,R_SA_Q3)
	elseif str == "R_SA_Q3_1" then gui.image(x,y,R_SA_Q3_1)
	elseif str == "R_SA_Q3_2" then gui.image(x,y,R_SA_Q3_2)
	elseif str == "R_SA_REM1" then gui.image(x,y,R_SA_REM1)
	elseif str == "R_SA_REM2" then gui.image(x,y,R_SA_REM2)
	elseif str == "R_SA_REM3" then gui.image(x,y,R_SA_REM3)
	elseif str == "R_SA_RYU1" then gui.image(x,y,R_SA_RYU1)
	elseif str == "R_SA_RYU2" then gui.image(x,y,R_SA_RYU2)
	elseif str == "R_SA_RYU3_1" then gui.image(x,y,R_SA_RYU3_1)
	elseif str == "R_SA_RYU3_2" then gui.image(x,y,R_SA_RYU3_2)
	elseif str == "R_SA_RYU3_3" then gui.image(x,y,R_SA_RYU3_3)
	elseif str == "R_SA_RYU3_4" then gui.image(x,y,R_SA_RYU3_4)
	elseif str == "R_SA_RYU3_5" then gui.image(x,y,R_SA_RYU3_5)
	elseif str == "R_SA_SEA1" then gui.image(x,y,R_SA_SEA1)
	elseif str == "R_SA_SEA2" then gui.image(x,y,R_SA_SEA2)
	elseif str == "R_SA_SEA3" then gui.image(x,y,R_SA_SEA3)
	elseif str == "R_SA_TWE1" then gui.image(x,y,R_SA_TWE1)
	elseif str == "R_SA_TWE2" then gui.image(x,y,R_SA_TWE2)
	elseif str == "R_SA_TWE3" then gui.image(x,y,R_SA_TWE3)
	elseif str == "R_SA_URIEN1" then gui.image(x,y,R_SA_URIEN1)
	elseif str == "R_SA_URIEN2" then gui.image(x,y,R_SA_URIEN2)
	elseif str == "R_SA_URIEN3" then gui.image(x,y,R_SA_URIEN3)
	elseif str == "R_SA_YANG1" then gui.image(x,y,R_SA_YANG1)
	elseif str == "R_SA_YANG2" then gui.image(x,y,R_SA_YANG2)
	elseif str == "R_SA_YANG3" then gui.image(x,y,R_SA_YANG3)
	elseif str == "R_SA_YUN1" then gui.image(x,y,R_SA_YUN1)
	elseif str == "R_SA_YUN2" then gui.image(x,y,R_SA_YUN2)
	elseif str == "R_SA_YUN3" then gui.image(x,y,R_SA_YUN3)
	elseif str == "R_SP_ALEX1" then gui.image(x,y,R_SP_ALEX1)
	elseif str == "R_SP_ALEX2" then gui.image(x,y,R_SP_ALEX2)
	elseif str == "R_SP_ALEX3" then gui.image(x,y,R_SP_ALEX3)
	elseif str == "R_SP_ALEX4" then gui.image(x,y,R_SP_ALEX4)
	elseif str == "R_SP_ALEX5" then gui.image(x,y,R_SP_ALEX5)
	elseif str == "R_SP_ALEX6" then gui.image(x,y,R_SP_ALEX6)
	elseif str == "R_SP_CHU1" then gui.image(x,y,R_SP_CHU1)
	elseif str == "R_SP_CHU2" then gui.image(x,y,R_SP_CHU2)
	elseif str == "R_SP_CHU3" then gui.image(x,y,R_SP_CHU3)
	elseif str == "R_SP_CHU4" then gui.image(x,y,R_SP_CHU4)
	elseif str == "R_SP_DUD1" then gui.image(x,y,R_SP_DUD1)
	elseif str == "R_SP_DUD2_1" then gui.image(x,y,R_SP_DUD2_1)
	elseif str == "R_SP_DUD2_2" then gui.image(x,y,R_SP_DUD2_2)
	elseif str == "R_SP_DUD2_3" then gui.image(x,y,R_SP_DUD2_3)
	elseif str == "R_SP_DUD3" then gui.image(x,y,R_SP_DUD3)
	elseif str == "R_SP_DUD4" then gui.image(x,y,R_SP_DUD4)
	elseif str == "R_SP_DUD5" then gui.image(x,y,R_SP_DUD5)
	elseif str == "R_SP_DUD6" then gui.image(x,y,R_SP_DUD6)
	elseif str == "R_SP_DUDLEY1" then gui.image(x,y,R_SP_DUDLEY1)
	elseif str == "R_SP_DUDLEY2" then gui.image(x,y,R_SP_DUDLEY2)
	elseif str == "R_SP_DUDLEY3" then gui.image(x,y,R_SP_DUDLEY3)
	elseif str == "R_SP_DUDLEY4" then gui.image(x,y,R_SP_DUDLEY4)
	elseif str == "R_SP_DUDLEY5" then gui.image(x,y,R_SP_DUDLEY5)
	elseif str == "R_SP_DUDLEY6" then gui.image(x,y,R_SP_DUDLEY6)
	elseif str == "R_SP_DUDLEY7" then gui.image(x,y,R_SP_DUDLEY7)
	elseif str == "R_SP_DUDLEY8" then gui.image(x,y,R_SP_DUDLEY8)
	elseif str == "R_SP_ELE1" then gui.image(x,y,R_SP_ELE1)
	elseif str == "R_SP_ELE2" then gui.image(x,y,R_SP_ELE2)
	elseif str == "R_SP_ELE3" then gui.image(x,y,R_SP_ELE3)
	elseif str == "R_SP_ELE4" then gui.image(x,y,R_SP_ELE4)
	elseif str == "R_SP_ELE5" then gui.image(x,y,R_SP_ELE5)
	elseif str == "R_SP_GOU1" then gui.image(x,y,R_SP_GOU1)
	elseif str == "R_SP_GOU2" then gui.image(x,y,R_SP_GOU2)
	elseif str == "R_SP_GOU3" then gui.image(x,y,R_SP_GOU3)
	elseif str == "R_SP_GOU4" then gui.image(x,y,R_SP_GOU4)
	elseif str == "R_SP_GOU5" then gui.image(x,y,R_SP_GOU5)
	elseif str == "R_SP_GOU6" then gui.image(x,y,R_SP_GOU6)
	elseif str == "R_SP_GOU7_1" then gui.image(x,y,R_SP_GOU7_1)
	elseif str == "R_SP_GOU7_2" then gui.image(x,y,R_SP_GOU7_2)
	elseif str == "R_SP_GOU7_3" then gui.image(x,y,R_SP_GOU7_3)
	elseif str == "R_SP_GOU7_4" then gui.image(x,y,R_SP_GOU7_4)
	elseif str == "R_SP_GOU7_5" then gui.image(x,y,R_SP_GOU7_5)
	elseif str == "R_SP_GOU8" then gui.image(x,y,R_SP_GOU8)
	elseif str == "R_SP_HUGO1" then gui.image(x,y,R_SP_HUGO1)
	elseif str == "R_SP_HUGO2" then gui.image(x,y,R_SP_HUGO2)
	elseif str == "R_SP_HUGO3" then gui.image(x,y,R_SP_HUGO3)
	elseif str == "R_SP_HUGO4" then gui.image(x,y,R_SP_HUGO4)
	elseif str == "R_SP_HUGO5" then gui.image(x,y,R_SP_HUGO5)
	elseif str == "R_SP_HUGO6" then gui.image(x,y,R_SP_HUGO6)
	elseif str == "R_SP_IBU1" then gui.image(x,y,R_SP_IBU1)
	elseif str == "R_SP_IBU2" then gui.image(x,y,R_SP_IBU2)
	elseif str == "R_SP_IBU3" then gui.image(x,y,R_SP_IBU3)
	elseif str == "R_SP_MAK1" then gui.image(x,y,R_SP_MAK1)
	elseif str == "R_SP_MAK2" then gui.image(x,y,R_SP_MAK2)
	elseif str == "R_SP_MAK3" then gui.image(x,y,R_SP_MAK3)
	elseif str == "R_SP_MAK4" then gui.image(x,y,R_SP_MAK4)
	elseif str == "R_SP_MAK5" then gui.image(x,y,R_SP_MAK5)
	elseif str == "R_SP_NEC1" then gui.image(x,y,R_SP_NEC1)
	elseif str == "R_SP_NEC2" then gui.image(x,y,R_SP_NEC2)
	elseif str == "R_SP_NEC3" then gui.image(x,y,R_SP_NEC3)
	elseif str == "R_SP_NEC4" then gui.image(x,y,R_SP_NEC4)
	elseif str == "R_SP_NEC5" then gui.image(x,y,R_SP_NEC5)
	elseif str == "R_SP_NEC6" then gui.image(x,y,R_SP_NEC6)
	elseif str == "R_SP_ORO1" then gui.image(x,y,R_SP_ORO1)
	elseif str == "R_SP_ORO2" then gui.image(x,y,R_SP_ORO2)
	elseif str == "R_SP_ORO3" then gui.image(x,y,R_SP_ORO3)
	elseif str == "R_SP_ORO4" then gui.image(x,y,R_SP_ORO4)
	elseif str == "R_SP_ORO5" then gui.image(x,y,R_SP_ORO5)
	elseif str == "R_SP_Q1" then gui.image(x,y,R_SP_Q1)
	elseif str == "R_SP_Q2" then gui.image(x,y,R_SP_Q2)
	elseif str == "R_SP_Q3" then gui.image(x,y,R_SP_Q3)
	elseif str == "R_SP_Q4" then gui.image(x,y,R_SP_Q4)
	elseif str == "R_SP_Q5" then gui.image(x,y,R_SP_Q5)
	elseif str == "R_SP_REM1" then gui.image(x,y,R_SP_REM1)
	elseif str == "R_SP_REM2" then gui.image(x,y,R_SP_REM2)
	elseif str == "R_SP_REM3" then gui.image(x,y,R_SP_REM3)
	elseif str == "R_SP_REM4" then gui.image(x,y,R_SP_REM4)
	elseif str == "R_SP_RYU1" then gui.image(x,y,R_SP_RYU1)
	elseif str == "R_SP_RYU2" then gui.image(x,y,R_SP_RYU2)
	elseif str == "R_SP_RYU3" then gui.image(x,y,R_SP_RYU3)
	elseif str == "R_SP_RYU4" then gui.image(x,y,R_SP_RYU4)
	elseif str == "R_SP_RYU5" then gui.image(x,y,R_SP_RYU5)
	elseif str == "R_SP_SEA1" then gui.image(x,y,R_SP_SEA1)
	elseif str == "R_SP_SEA2" then gui.image(x,y,R_SP_SEA2)
	elseif str == "R_SP_SEA3" then gui.image(x,y,R_SP_SEA3)
	elseif str == "R_SP_SEA4" then gui.image(x,y,R_SP_SEA4)
	elseif str == "R_SP_SEA5" then gui.image(x,y,R_SP_SEA5)
	elseif str == "R_SP_TWE1" then gui.image(x,y,R_SP_TWE1)
	elseif str == "R_SP_TWE2" then gui.image(x,y,R_SP_TWE2)
	elseif str == "R_SP_TWE3" then gui.image(x,y,R_SP_TWE3)
	elseif str == "R_SP_TWE4" then gui.image(x,y,R_SP_TWE4)
	elseif str == "R_SP_URIEN1" then gui.image(x,y,R_SP_URIEN1)
	elseif str == "R_SP_URIEN2" then gui.image(x,y,R_SP_URIEN2)
	elseif str == "R_SP_URIEN3" then gui.image(x,y,R_SP_URIEN3)
	elseif str == "R_SP_URIEN4" then gui.image(x,y,R_SP_URIEN4)
	elseif str == "R_SP_YANG1" then gui.image(x,y,R_SP_YANG1)
	elseif str == "R_SP_YANG2" then gui.image(x,y,R_SP_YANG2)
	elseif str == "R_SP_YANG3" then gui.image(x,y,R_SP_YANG3)
	elseif str == "R_SP_YANG4" then gui.image(x,y,R_SP_YANG4)
	elseif str == "R_SP_YANG5" then gui.image(x,y,R_SP_YANG5)
	elseif str == "R_SP_YUN1" then gui.image(x,y,R_SP_YUN1)
	elseif str == "R_SP_YUN2" then gui.image(x,y,R_SP_YUN2)
	elseif str == "R_SP_YUN3" then gui.image(x,y,R_SP_YUN3)
	elseif str == "R_SP_YUN4" then gui.image(x,y,R_SP_YUN4)
	elseif str == "R_SP_YUN5" then gui.image(x,y,R_SP_YUN5)
	elseif str == "R_TK_HUGO1" then gui.image(x,y,R_TK_HUGO1)
	elseif str == "R_TR_ALEX1" then gui.image(x,y,R_TR_ALEX1)
	elseif str == "R_TR_ALEX2" then gui.image(x,y,R_TR_ALEX2)
	elseif str == "R_TR_KEN1" then gui.image(x,y,R_TR_KEN1)
	elseif str == "R_TR_KEN2" then gui.image(x,y,R_TR_KEN2)
	elseif str == "R_TR_HUGO1" then gui.image(x,y,R_TR_HUGO1)
	elseif str == "R_4_THROW" then gui.image(x,y,R_4_THROW)
	elseif str == "R_6_THROW" then gui.image(x,y,R_6_THROW)
	elseif str == "R_N_THROW" then gui.image(x,y,R_N_THROW)
	elseif str == "R_NM_BDASH" then gui.image(x,y,R_NM_BDASH)
	elseif str == "R_NM_FDASH" then gui.image(x,y,R_NM_FDASH)
	elseif str == "W_COMMON_OR" then gui.image(x,y,W_COMMON_OR)
	elseif str == "W_COMMON_EX" then gui.image(x,y,W_COMMON_EX)
	elseif str == "W_COMMON_H" then gui.image(x,y,W_COMMON_H)
	elseif str == "W_COMMON_L" then gui.image(x,y,W_COMMON_L)
	elseif str == "W_COMMON_M" then gui.image(x,y,W_COMMON_M)
	elseif str == "W_COMMON_ME" then gui.image(x,y,W_COMMON_ME)
	elseif str == "W_COMMON_URA" then gui.image(x,y,W_COMMON_URA)
	elseif str == "W_COMMON_KARACAN" then gui.image(x,y,W_COMMON_KARACAN)
	elseif str == "W_COMMON_JS" then gui.image(x,y,W_COMMON_JS)
	elseif str == "W_COMMON_JN" then gui.image(x,y,W_COMMON_JN)
	elseif str == "W_COMMON_ANTI_AIR" then gui.image(x,y,W_COMMON_ANTI_AIR)
	elseif str == "W_COMMON_KARABURI" then gui.image(x,y,W_COMMON_KARABURI)
	elseif str == "W_LEAP" then gui.image(x,y,W_LEAP)
	elseif str == "W_NM_1HK" then gui.image(x,y,W_NM_1HK)
	elseif str == "W_NM_1HP" then gui.image(x,y,W_NM_1HP)
	elseif str == "W_NM_1LK" then gui.image(x,y,W_NM_1LK)
	elseif str == "W_NM_1LP" then gui.image(x,y,W_NM_1LP)
	elseif str == "W_NM_1MK" then gui.image(x,y,W_NM_1MK)
	elseif str == "W_NM_1MP" then gui.image(x,y,W_NM_1MP)
	elseif str == "W_NM_3HK" then gui.image(x,y,W_NM_3HK)
	elseif str == "W_NM_3HP" then gui.image(x,y,W_NM_3HP)
	elseif str == "W_NM_3LK" then gui.image(x,y,W_NM_3LK)
	elseif str == "W_NM_3LP" then gui.image(x,y,W_NM_3LP)
	elseif str == "W_NM_3MK" then gui.image(x,y,W_NM_3MK)
	elseif str == "W_NM_3MP" then gui.image(x,y,W_NM_3MP)
	elseif str == "W_NM_4HK" then gui.image(x,y,W_NM_4HK)
	elseif str == "W_NM_4HP" then gui.image(x,y,W_NM_4HP)
	elseif str == "W_NM_4LK" then gui.image(x,y,W_NM_4LK)
	elseif str == "W_NM_4LP" then gui.image(x,y,W_NM_4LP)
	elseif str == "W_NM_4MK" then gui.image(x,y,W_NM_4MK)
	elseif str == "W_NM_4MP" then gui.image(x,y,W_NM_4MP)
	elseif str == "W_NM_6HK" then gui.image(x,y,W_NM_6HK)
	elseif str == "W_NM_6HP" then gui.image(x,y,W_NM_6HP)
	elseif str == "W_NM_6LK" then gui.image(x,y,W_NM_6LK)
	elseif str == "W_NM_6LP" then gui.image(x,y,W_NM_6LP)
	elseif str == "W_NM_6MK" then gui.image(x,y,W_NM_6MK)
	elseif str == "W_NM_6MP" then gui.image(x,y,W_NM_6MP)
	elseif str == "W_NM_CHK" then gui.image(x,y,W_NM_CHK)
	elseif str == "W_NM_CHP" then gui.image(x,y,W_NM_CHP)
	elseif str == "W_NM_CLK" then gui.image(x,y,W_NM_CLK)
	elseif str == "W_NM_CLP" then gui.image(x,y,W_NM_CLP)
	elseif str == "W_NM_CMK" then gui.image(x,y,W_NM_CMK)
	elseif str == "W_NM_CMP" then gui.image(x,y,W_NM_CMP)
	elseif str == "W_NM_JHK" then gui.image(x,y,W_NM_JHK)
	elseif str == "W_NM_JHP" then gui.image(x,y,W_NM_JHP)
	elseif str == "W_NM_JLK" then gui.image(x,y,W_NM_JLK)
	elseif str == "W_NM_JLP" then gui.image(x,y,W_NM_JLP)
	elseif str == "W_NM_JMK" then gui.image(x,y,W_NM_JMK)
	elseif str == "W_NM_JMP" then gui.image(x,y,W_NM_JMP)
	elseif str == "W_NM_J2MK" then gui.image(x,y,W_NM_J2MK)
	elseif str == "W_NM_J3MK" then gui.image(x,y,W_NM_J3MK)
	elseif str == "W_NM_J6HP" then gui.image(x,y,W_NM_J6HP)
	elseif str == "W_NM_J2HP" then gui.image(x,y,W_NM_J2HP)
	elseif str == "W_NM_J6MK" then gui.image(x,y,W_NM_J6MK)
	elseif str == "W_NM_NJHK" then gui.image(x,y,W_NM_NJHK)
	elseif str == "W_NM_NJHP" then gui.image(x,y,W_NM_NJHP)
	elseif str == "W_NM_NJLK" then gui.image(x,y,W_NM_NJLK)
	elseif str == "W_NM_NJLP" then gui.image(x,y,W_NM_NJLP)
	elseif str == "W_NM_NJMK" then gui.image(x,y,W_NM_NJMK)
	elseif str == "W_NM_NJMP" then gui.image(x,y,W_NM_NJMP)
	elseif str == "W_NM_SCHK" then gui.image(x,y,W_NM_SCHK)
	elseif str == "W_NM_SCHP" then gui.image(x,y,W_NM_SCHP)
	elseif str == "W_NM_SCLK" then gui.image(x,y,W_NM_SCLK)
	elseif str == "W_NM_SCLP" then gui.image(x,y,W_NM_SCLP)
	elseif str == "W_NM_SCMK" then gui.image(x,y,W_NM_SCMK)
	elseif str == "W_NM_SCMP" then gui.image(x,y,W_NM_SCMP)
	elseif str == "W_NM_SDHK" then gui.image(x,y,W_NM_SDHK)
	elseif str == "W_NM_SDHP" then gui.image(x,y,W_NM_SDHP)
	elseif str == "W_NM_SDLK" then gui.image(x,y,W_NM_SDLK)
	elseif str == "W_NM_SDLP" then gui.image(x,y,W_NM_SDLP)
	elseif str == "W_NM_SDMK" then gui.image(x,y,W_NM_SDMK)
	elseif str == "W_NM_SDMP" then gui.image(x,y,W_NM_SDMP)
	elseif str == "W_NM_SHK" then gui.image(x,y,W_NM_SHK)
	elseif str == "W_NM_SHP" then gui.image(x,y,W_NM_SHP)
	elseif str == "W_NM_SJHK" then gui.image(x,y,W_NM_SJHK)
	elseif str == "W_NM_SJHP" then gui.image(x,y,W_NM_SJHP)
	elseif str == "W_NM_SJLK" then gui.image(x,y,W_NM_SJLK)
	elseif str == "W_NM_SJLP" then gui.image(x,y,W_NM_SJLP)
	elseif str == "W_NM_SJMK" then gui.image(x,y,W_NM_SJMK)
	elseif str == "W_NM_SJMP" then gui.image(x,y,W_NM_SJMP)
	elseif str == "W_NM_SLK" then gui.image(x,y,W_NM_SLK)
	elseif str == "W_NM_SLP" then gui.image(x,y,W_NM_SLP)
	elseif str == "W_NM_SMK" then gui.image(x,y,W_NM_SMK)
	elseif str == "W_NM_SMP" then gui.image(x,y,W_NM_SMP)
	elseif str == "W_PA" then gui.image(x,y,W_PA)
	elseif str == "W_SA_ALEX1" then gui.image(x,y,W_SA_ALEX1)
	elseif str == "W_SA_ALEX2" then gui.image(x,y,W_SA_ALEX2)
	elseif str == "W_SA_ALEX3" then gui.image(x,y,W_SA_ALEX3)
	elseif str == "W_SA_CHU1" then gui.image(x,y,W_SA_CHU1)
	elseif str == "W_SA_CHU2" then gui.image(x,y,W_SA_CHU2)
	elseif str == "W_SA_CHU3" then gui.image(x,y,W_SA_CHU3)
	elseif str == "W_SA_DUD1" then gui.image(x,y,W_SA_DUD1)
	elseif str == "W_SA_DUD2" then gui.image(x,y,W_SA_DUD2)
	elseif str == "W_SA_DUD3" then gui.image(x,y,W_SA_DUD3)
	elseif str == "W_SA_DUDLEY1" then gui.image(x,y,W_SA_DUDLEY1)
	elseif str == "W_SA_DUDLEY2" then gui.image(x,y,W_SA_DUDLEY2)
	elseif str == "W_SA_DUDLEY3" then gui.image(x,y,W_SA_DUDLEY3)
	elseif str == "W_SA_ELE1" then gui.image(x,y,W_SA_ELE1)
	elseif str == "W_SA_ELE2" then gui.image(x,y,W_SA_ELE2)
	elseif str == "W_SA_ELE3" then gui.image(x,y,W_SA_ELE3)
	elseif str == "W_SA_GOU1_1" then gui.image(x,y,W_SA_GOU1_1)
	elseif str == "W_SA_GOU1_2" then gui.image(x,y,W_SA_GOU1_2)
	elseif str == "W_SA_GOU2" then gui.image(x,y,W_SA_GOU2)
	elseif str == "W_SA_GOU3_1" then gui.image(x,y,W_SA_GOU3_1)
	elseif str == "W_SA_GOU3_2" then gui.image(x,y,W_SA_GOU3_2)
	elseif str == "W_SA_GOU4" then gui.image(x,y,W_SA_GOU4)
	elseif str == "W_SA_GOU5" then gui.image(x,y,W_SA_GOU5)
	elseif str == "W_SA_HUGO1" then gui.image(x,y,W_SA_HUGO1)
	elseif str == "W_SA_HUGO2" then gui.image(x,y,W_SA_HUGO2)
	elseif str == "W_SA_HUGO3" then gui.image(x,y,W_SA_HUGO3)
	elseif str == "W_SA_IBU1" then gui.image(x,y,W_SA_IBU1)
	elseif str == "W_SA_IBU2" then gui.image(x,y,W_SA_IBU2)
	elseif str == "W_SA_IBU3" then gui.image(x,y,W_SA_IBU3)
	elseif str == "W_SA_IBU4" then gui.image(x,y,W_SA_IBU4)
	elseif str == "W_SA_IBU5" then gui.image(x,y,W_SA_IBU5)
	elseif str == "W_SA_IBU6" then gui.image(x,y,W_SA_IBU6)
	elseif str == "W_SA_IBU7" then gui.image(x,y,W_SA_IBU7)
	elseif str == "W_SA_IBU8" then gui.image(x,y,W_SA_IBU8)
	elseif str == "W_SA_KEN1" then gui.image(x,y,W_SA_KEN1)
	elseif str == "W_SA_KEN2" then gui.image(x,y,W_SA_KEN2)
	elseif str == "W_SA_KEN3" then gui.image(x,y,W_SA_KEN3)
	elseif str == "W_SA_MAK1" then gui.image(x,y,W_SA_MAK1)
	elseif str == "W_SA_MAK2" then gui.image(x,y,W_SA_MAK2)
	elseif str == "W_SA_MAK3" then gui.image(x,y,W_SA_MAK3)
	elseif str == "W_SA_NEC1" then gui.image(x,y,W_SA_NEC1)
	elseif str == "W_SA_NEC2" then gui.image(x,y,W_SA_NEC2)
	elseif str == "W_SA_NEC3" then gui.image(x,y,W_SA_NEC3)
	elseif str == "W_SA_ORO1_1" then gui.image(x,y,W_SA_ORO1_1)
	elseif str == "W_SA_ORO1_2" then gui.image(x,y,W_SA_ORO1_2)
	elseif str == "W_SA_ORO1_3" then gui.image(x,y,W_SA_ORO1_3)
	elseif str == "W_SA_ORO2_1" then gui.image(x,y,W_SA_ORO2_1)
	elseif str == "W_SA_ORO2_2" then gui.image(x,y,W_SA_ORO2_2)
	elseif str == "W_SA_ORO3_1" then gui.image(x,y,W_SA_ORO3_1)
	elseif str == "W_SA_ORO3_2" then gui.image(x,y,W_SA_ORO3_2)
	elseif str == "W_SA_Q1" then gui.image(x,y,W_SA_Q1)
	elseif str == "W_SA_Q2" then gui.image(x,y,W_SA_Q2)
	elseif str == "W_SA_Q3" then gui.image(x,y,W_SA_Q3)
	elseif str == "W_SA_Q3_1" then gui.image(x,y,W_SA_Q3_1)
	elseif str == "W_SA_Q3_2" then gui.image(x,y,W_SA_Q3_2)
	elseif str == "W_SA_REM1" then gui.image(x,y,W_SA_REM1)
	elseif str == "W_SA_REM2" then gui.image(x,y,W_SA_REM2)
	elseif str == "W_SA_REM3" then gui.image(x,y,W_SA_REM3)
	elseif str == "W_SA_RYU1" then gui.image(x,y,W_SA_RYU1)
	elseif str == "W_SA_RYU2" then gui.image(x,y,W_SA_RYU2)
	elseif str == "W_SA_RYU3_1" then gui.image(x,y,W_SA_RYU3_1)
	elseif str == "W_SA_RYU3_2" then gui.image(x,y,W_SA_RYU3_2)
	elseif str == "W_SA_RYU3_3" then gui.image(x,y,W_SA_RYU3_3)
	elseif str == "W_SA_RYU3_4" then gui.image(x,y,W_SA_RYU3_4)
	elseif str == "W_SA_RYU3_5" then gui.image(x,y,W_SA_RYU3_5)
	elseif str == "W_SA_SEA1" then gui.image(x,y,W_SA_SEA1)
	elseif str == "W_SA_SEA2" then gui.image(x,y,W_SA_SEA2)
	elseif str == "W_SA_SEA3" then gui.image(x,y,W_SA_SEA3)
	elseif str == "W_SA_TWE1" then gui.image(x,y,W_SA_TWE1)
	elseif str == "W_SA_TWE2" then gui.image(x,y,W_SA_TWE2)
	elseif str == "W_SA_TWE3" then gui.image(x,y,W_SA_TWE3)
	elseif str == "W_SA_URIEN1" then gui.image(x,y,W_SA_URIEN1)
	elseif str == "W_SA_URIEN2" then gui.image(x,y,W_SA_URIEN2)
	elseif str == "W_SA_URIEN3" then gui.image(x,y,W_SA_URIEN3)
	elseif str == "W_SA_YANG1" then gui.image(x,y,W_SA_YANG1)
	elseif str == "W_SA_YANG2" then gui.image(x,y,W_SA_YANG2)
	elseif str == "W_SA_YANG3" then gui.image(x,y,W_SA_YANG3)
	elseif str == "W_SA_YUN1" then gui.image(x,y,W_SA_YUN1)
	elseif str == "W_SA_YUN2" then gui.image(x,y,W_SA_YUN2)
	elseif str == "W_SA_YUN3" then gui.image(x,y,W_SA_YUN3)
	elseif str == "W_SP_ALEX1" then gui.image(x,y,W_SP_ALEX1)
	elseif str == "W_SP_ALEX2" then gui.image(x,y,W_SP_ALEX2)
	elseif str == "W_SP_ALEX3" then gui.image(x,y,W_SP_ALEX3)
	elseif str == "W_SP_ALEX4" then gui.image(x,y,W_SP_ALEX4)
	elseif str == "W_SP_ALEX5" then gui.image(x,y,W_SP_ALEX5)
	elseif str == "W_SP_ALEX6" then gui.image(x,y,W_SP_ALEX6)
	elseif str == "W_SP_CHU1" then gui.image(x,y,W_SP_CHU1)
	elseif str == "W_SP_CHU2" then gui.image(x,y,W_SP_CHU2)
	elseif str == "W_SP_CHU3" then gui.image(x,y,W_SP_CHU3)
	elseif str == "W_SP_CHU4" then gui.image(x,y,W_SP_CHU4)
	elseif str == "W_SP_DUD1" then gui.image(x,y,W_SP_DUD1)
	elseif str == "W_SP_DUD2_1" then gui.image(x,y,W_SP_DUD2_1)
	elseif str == "W_SP_DUD2_2" then gui.image(x,y,W_SP_DUD2_2)
	elseif str == "W_SP_DUD2_3" then gui.image(x,y,W_SP_DUD2_3)
	elseif str == "W_SP_DUD3" then gui.image(x,y,W_SP_DUD3)
	elseif str == "W_SP_DUD4" then gui.image(x,y,W_SP_DUD4)
	elseif str == "W_SP_DUD5" then gui.image(x,y,W_SP_DUD5)
	elseif str == "W_SP_DUD6" then gui.image(x,y,W_SP_DUD6)
	elseif str == "W_SP_DUDLEY1" then gui.image(x,y,W_SP_DUDLEY1)
	elseif str == "W_SP_DUDLEY2" then gui.image(x,y,W_SP_DUDLEY2)
	elseif str == "W_SP_DUDLEY3" then gui.image(x,y,W_SP_DUDLEY3)
	elseif str == "W_SP_DUDLEY4" then gui.image(x,y,W_SP_DUDLEY4)
	elseif str == "W_SP_DUDLEY5" then gui.image(x,y,W_SP_DUDLEY5)
	elseif str == "W_SP_DUDLEY6" then gui.image(x,y,W_SP_DUDLEY6)
	elseif str == "W_SP_DUDLEY7" then gui.image(x,y,W_SP_DUDLEY7)
	elseif str == "W_SP_DUDLEY8" then gui.image(x,y,W_SP_DUDLEY8)
	elseif str == "W_SP_ELE1" then gui.image(x,y,W_SP_ELE1)
	elseif str == "W_SP_ELE2" then gui.image(x,y,W_SP_ELE2)
	elseif str == "W_SP_ELE3" then gui.image(x,y,W_SP_ELE3)
	elseif str == "W_SP_ELE4" then gui.image(x,y,W_SP_ELE4)
	elseif str == "W_SP_ELE5" then gui.image(x,y,W_SP_ELE5)
	elseif str == "W_SP_GOU1" then gui.image(x,y,W_SP_GOU1)
	elseif str == "W_SP_GOU2" then gui.image(x,y,W_SP_GOU2)
	elseif str == "W_SP_GOU3" then gui.image(x,y,W_SP_GOU3)
	elseif str == "W_SP_GOU4" then gui.image(x,y,W_SP_GOU4)
	elseif str == "W_SP_GOU5" then gui.image(x,y,W_SP_GOU5)
	elseif str == "W_SP_GOU6" then gui.image(x,y,W_SP_GOU6)
	elseif str == "W_SP_GOU7_1" then gui.image(x,y,W_SP_GOU7_1)
	elseif str == "W_SP_GOU7_2" then gui.image(x,y,W_SP_GOU7_2)
	elseif str == "W_SP_GOU7_3" then gui.image(x,y,W_SP_GOU7_3)
	elseif str == "W_SP_GOU7_4" then gui.image(x,y,W_SP_GOU7_4)
	elseif str == "W_SP_GOU7_5" then gui.image(x,y,W_SP_GOU7_5)
	elseif str == "W_SP_GOU8" then gui.image(x,y,W_SP_GOU8)
	elseif str == "W_SP_HUGO1" then gui.image(x,y,W_SP_HUGO1)
	elseif str == "W_SP_HUGO2" then gui.image(x,y,W_SP_HUGO2)
	elseif str == "W_SP_HUGO3" then gui.image(x,y,W_SP_HUGO3)
	elseif str == "W_SP_HUGO4" then gui.image(x,y,W_SP_HUGO4)
	elseif str == "W_SP_HUGO5" then gui.image(x,y,W_SP_HUGO5)
	elseif str == "W_SP_HUGO6" then gui.image(x,y,W_SP_HUGO6)
	elseif str == "W_SP_IBU1" then gui.image(x,y,W_SP_IBU1)
	elseif str == "W_SP_IBU2" then gui.image(x,y,W_SP_IBU2)
	elseif str == "W_SP_IBU3" then gui.image(x,y,W_SP_IBU3)
	elseif str == "W_SP_MAK1" then gui.image(x,y,W_SP_MAK1)
	elseif str == "W_SP_MAK2" then gui.image(x,y,W_SP_MAK2)
	elseif str == "W_SP_MAK3" then gui.image(x,y,W_SP_MAK3)
	elseif str == "W_SP_MAK4" then gui.image(x,y,W_SP_MAK4)
	elseif str == "W_SP_MAK5" then gui.image(x,y,W_SP_MAK5)
	elseif str == "W_SP_NEC1" then gui.image(x,y,W_SP_NEC1)
	elseif str == "W_SP_NEC2" then gui.image(x,y,W_SP_NEC2)
	elseif str == "W_SP_NEC3" then gui.image(x,y,W_SP_NEC3)
	elseif str == "W_SP_NEC4" then gui.image(x,y,W_SP_NEC4)
	elseif str == "W_SP_NEC5" then gui.image(x,y,W_SP_NEC5)
	elseif str == "W_SP_NEC6" then gui.image(x,y,W_SP_NEC6)
	elseif str == "W_SP_ORO1" then gui.image(x,y,W_SP_ORO1)
	elseif str == "W_SP_ORO2" then gui.image(x,y,W_SP_ORO2)
	elseif str == "W_SP_ORO3" then gui.image(x,y,W_SP_ORO3)
	elseif str == "W_SP_ORO4" then gui.image(x,y,W_SP_ORO4)
	elseif str == "W_SP_ORO5" then gui.image(x,y,W_SP_ORO5)
	elseif str == "W_SP_Q1" then gui.image(x,y,W_SP_Q1)
	elseif str == "W_SP_Q2" then gui.image(x,y,W_SP_Q2)
	elseif str == "W_SP_Q3" then gui.image(x,y,W_SP_Q3)
	elseif str == "W_SP_Q4" then gui.image(x,y,W_SP_Q4)
	elseif str == "W_SP_Q5" then gui.image(x,y,W_SP_Q5)
	elseif str == "W_SP_REM1" then gui.image(x,y,W_SP_REM1)
	elseif str == "W_SP_REM2" then gui.image(x,y,W_SP_REM2)
	elseif str == "W_SP_REM3" then gui.image(x,y,W_SP_REM3)
	elseif str == "W_SP_REM4" then gui.image(x,y,W_SP_REM4)
	elseif str == "W_SP_RYU1" then gui.image(x,y,W_SP_RYU1)
	elseif str == "W_SP_RYU2" then gui.image(x,y,W_SP_RYU2)
	elseif str == "W_SP_RYU3" then gui.image(x,y,W_SP_RYU3)
	elseif str == "W_SP_RYU4" then gui.image(x,y,W_SP_RYU4)
	elseif str == "W_SP_RYU5" then gui.image(x,y,W_SP_RYU5)
	elseif str == "W_SP_SEA1" then gui.image(x,y,W_SP_SEA1)
	elseif str == "W_SP_SEA2" then gui.image(x,y,W_SP_SEA2)
	elseif str == "W_SP_SEA3" then gui.image(x,y,W_SP_SEA3)
	elseif str == "W_SP_SEA4" then gui.image(x,y,W_SP_SEA4)
	elseif str == "W_SP_SEA5" then gui.image(x,y,W_SP_SEA5)
	elseif str == "W_SP_TWE1" then gui.image(x,y,W_SP_TWE1)
	elseif str == "W_SP_TWE2" then gui.image(x,y,W_SP_TWE2)
	elseif str == "W_SP_TWE3" then gui.image(x,y,W_SP_TWE3)
	elseif str == "W_SP_TWE4" then gui.image(x,y,W_SP_TWE4)
	elseif str == "W_SP_URIEN1" then gui.image(x,y,W_SP_URIEN1)
	elseif str == "W_SP_URIEN2" then gui.image(x,y,W_SP_URIEN2)
	elseif str == "W_SP_URIEN3" then gui.image(x,y,W_SP_URIEN3)
	elseif str == "W_SP_URIEN4" then gui.image(x,y,W_SP_URIEN4)
	elseif str == "W_SP_YANG1" then gui.image(x,y,W_SP_YANG1)
	elseif str == "W_SP_YANG2" then gui.image(x,y,W_SP_YANG2)
	elseif str == "W_SP_YANG3" then gui.image(x,y,W_SP_YANG3)
	elseif str == "W_SP_YANG4" then gui.image(x,y,W_SP_YANG4)
	elseif str == "W_SP_YANG5" then gui.image(x,y,W_SP_YANG5)
	elseif str == "W_SP_YUN1" then gui.image(x,y,W_SP_YUN1)
	elseif str == "W_SP_YUN2" then gui.image(x,y,W_SP_YUN2)
	elseif str == "W_SP_YUN3" then gui.image(x,y,W_SP_YUN3)
	elseif str == "W_SP_YUN4" then gui.image(x,y,W_SP_YUN4)
	elseif str == "W_SP_YUN5" then gui.image(x,y,W_SP_YUN5)
	elseif str == "W_TK_HUGO1" then gui.image(x,y,W_TK_HUGO1)
	elseif str == "W_TR_ALEX1" then gui.image(x,y,W_TR_ALEX1)
	elseif str == "W_TR_ALEX2" then gui.image(x,y,W_TR_ALEX2)
	elseif str == "W_TR_KEN1" then gui.image(x,y,W_TR_KEN1)
	elseif str == "W_TR_KEN2" then gui.image(x,y,W_TR_KEN2)
	elseif str == "W_TR_HUGO1" then gui.image(x,y,W_TR_HUGO1)
	elseif str == "W_4_THROW" then gui.image(x,y,W_4_THROW)
	elseif str == "W_6_THROW" then gui.image(x,y,W_6_THROW)
	elseif str == "W_N_THROW" then gui.image(x,y,W_N_THROW)
	elseif str == "W_NM_BDASH" then gui.image(x,y,W_NM_BDASH)
	elseif str == "W_NM_FDASH" then gui.image(x,y,W_NM_FDASH)
	end
end
function saveDataLoad()
	for i=1,19,1 do
		for k=1,10,1 do
			saveData[i][k] = memory.readbyte(saveDataAddr+0x10*i+k)
		end
	end
end
function saveDataSaveFile()
	f = io.open("3rdtrial_savedata.txt", "w")
	for i=1,20,1 do
		for k=1,10,1 do
			score = saveData[i][k]
			score2 = score + newKey[i][k]
			score3 = score2 * (newKey[i][k]) * (newKey2[i][k])
			addKeta = 11 - #(score3.."")
			f:write(score3..""..ketaSoroe(addKeta)..""..addKeta.."\n")
		end
		if i==20 and k==1 then
			break
		end
	end
	f:close()
end
function ketaSoroe(val)
	str = ""
	for i=0, 10, 1 do
		if i == val then
			break
		end
		str = str..math.random(9)
	end
	return str
end
function saveDataSaveMemory()
	for i=1,20,1 do
		str = ""
		for k=1,10,1 do
			memory.writebyte(saveDataAddr+0x10*i+k, saveData[i][k])
		end
	end
end
function keySaveMemory()
	for i=1,20,1 do
		for k=1,10,1 do
			memory.writebyte(keyDataAddr+0x10*i+k, newKey[i][k])
			memory.writebyte(keyDataAddr2+0x10*i+k, newKey2[i][k])
		end
	end
end
function keyDisplay(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, buttonAddress,startAddress)
	input_up = bitReturn(memory.readbyte(buttonAddress),0)
	input_down = bitReturn(memory.readbyte(buttonAddress),1)
	input_left = bitReturn(memory.readbyte(buttonAddress),2)
	input_right = bitReturn(memory.readbyte(buttonAddress),3)
	input_lp = bitReturn(memory.readbyte(buttonAddress),4)
	input_mp = bitReturn(memory.readbyte(buttonAddress),5)
	input_hp = bitReturn(memory.readbyte(buttonAddress),6)
	input_lk = bitReturn(memory.readbyte(buttonAddress),7)
	input_mk = bitReturn(memory.readbyte(buttonAddress-1),0)
	input_hk = bitReturn(memory.readbyte(buttonAddress-1),1)
	input_s = (memory.readbyte(startAddress) - (memory.readbyte(startAddress) % 16)) / 16
	if input_up == 1 then
		if input_right == 1 then
			reba_num = 9
		elseif input_left == 1 then
			reba_num = 7
		else
			reba_num = 8
		end
	elseif input_down == 1 then
		if input_right == 1 then
			reba_num = 3
		elseif input_left == 1 then
			reba_num = 1
		else
			reba_num = 2
		end
	elseif input_right == 1 then
		reba_num = 6
	elseif input_left == 1 then
		reba_num = 4
	else
		reba_num = 5
	end
	if reba_num == 1 then
		gui.image(x, y, reba1)
	elseif reba_num == 2 then
		gui.image(x, y, reba2)
	elseif reba_num == 3 then
		gui.image(x, y, reba3)
	elseif reba_num == 4 then
		gui.image(x, y, reba4)
	elseif reba_num == 5 then
		gui.image(x, y, reba5)
	elseif reba_num == 6 then
		gui.image(x, y, reba6)
	elseif reba_num == 7 then
		gui.image(x, y, reba7)
	elseif reba_num == 8 then
		gui.image(x, y, reba8)
	elseif reba_num == 9 then
		gui.image(x, y, reba9)
	end
	x = x + 24
	if input_lp == 1 then
		gui.image(x, y, image_l2)
	else
		gui.image(x, y, image_l1)
	end
	x = x + 12
	if input_mp == 1 then
		gui.image(x, y, image_m2)
	else
		gui.image(x, y, image_m1)
	end
	x = x + 12
	if input_hp == 1 then
		gui.image(x, y, image_h2)
	else
		gui.image(x, y, image_h1)
	end
	x = x - 12 - 12 + 2
	y = y + 12
	if input_lk == 1 then
		gui.image(x, y, image_l2)
	else
		gui.image(x, y, image_l1)
	end
	x = x + 12
	if input_mk == 1 then
		gui.image(x, y, image_m2)
	else
		gui.image(x, y, image_m1)
	end
	x = x + 12
	if input_hk == 1 then
		gui.image(x, y, image_h2)
	else
		gui.image(x, y, image_h1)
	end
	x = x + 16
	y = y - 8
	if input_s == 1 then
		gui.image(x, y, image_s2)
	else
		gui.image(x, y, image_s1)
	end
end
function assistMode()
	tameView = 1
	kaitenView = 1
	rendaView = 1
	denjinView = 1
	offsetTameGauge = 8
	offsetRendaGauge = 8
	offsetKaitenGauge = 14
	denjinHaba = 4
	rendaHaba = 4
	if memory.readbyte(0x2011387) == 0x01 then
		offsetX = 180
		offsetY = 180
		if tameView == 1 then
			tameGauge("4-6K", offsetX, offsetY, 0x02025A49, 0x02025A47)
			offsetY = offsetY + offsetTameGauge
			tameGauge("2-8K", offsetX, offsetY, 0x02025A2D, 0x02025A2B)
			offsetY = offsetY + offsetTameGauge
		end
		if kaitenView == 1 then
			if memory.readbyte(0x020154D3) == 0 then
				kaiten("4268P", offsetX, offsetY, 0x0202590F, 0x020258F7,20)
			end
		end
	end
	if memory.readbyte(0x2011387) == 0x02 then
		offsetX = 170
		offsetY = 190
		if denjinView == 1 then
			if memory.readbyte(0x020154D3) == 2 then
				barColor = 0x00000000
				if dashiteruWaza == "S00280028" or dashiteruWaza == "N0028000d"
				  or dashiteruWaza == "N00280013" or dashiteruWaza == "N00280014" or dashiteruWaza == "N00280015" or dashiteruWaza == "N00280016" or dashiteruWaza == "N00280017"
				  or dashiteruWaza == "S00290028" or dashiteruWaza == "N0029000d"
				  or dashiteruWaza == "N00290013" or dashiteruWaza == "N00290014" or dashiteruWaza == "N00290015" or dashiteruWaza == "N00290016" or dashiteruWaza == "N00290017"
				  or dashiteruWaza == "S002a0028" or dashiteruWaza == "N002a000d"
				  or dashiteruWaza == "N002a0013" or dashiteruWaza == "N002a0014" or dashiteruWaza == "N002a0015" or dashiteruWaza == "N002a0016" or dashiteruWaza == "N002a0017" then 
					denjinTimer = memory.readbyte(0x02068D27)
					denjin = memory.readbyte(0x02068D2D)
					  	if denjin == 3 then
							denjinLv = 1
							barColor = 0x0080FFFF
						elseif denjin == 9 then
							denjinLv = 2
							barColor = 0x00FFFFFF
						elseif denjin == 14 then
							denjinLv = 3
							barColor = 0x80FFFFFF
						elseif denjin == 19 then
							denjinLv = 4
							barColor = 0xFEFEFEFF
							if denjinTimer == 0 then
								denjinLv = 5
							end
						end
				else
					if dashiteruWaza == "S00200020" or dashiteruWaza == "S00210021" or dashiteruWaza == "S00220022" or dashiteruWaza == "S00230023"
					  or dashiteruWaza == "S00340034" or dashiteruWaza == "S00350035" or dashiteruWaza == "S00360036" or dashiteruWaza == "S00370037"
					  then
					  
					else
						denjinTimer = 0
						memory.writebyte(0x02068D27,0x00)
						denjinLv = 0
						memory.writebyte(0x02068D2D,0x00)
					end
				end
				if dashiteruWaza == "N0028000d" or dashiteruWaza == "N0029000d" or dashiteruWaza == "N002a000d" then
				end
				gui.text(offsetX-10,offsetY,numSpaceLeft(denjinTimer,2))
				gui.text(offsetX-38,offsetY,"LV_"..denjinLv)
				offsetY = offsetY + 1
				gui.drawbox(offsetX,offsetY,offsetX+8,offsetY+denjinHaba,0x00000000,0x000000FF)
				gui.drawbox(offsetX,offsetY,offsetX+24,offsetY+denjinHaba,0x00000000,0x000000FF)
				gui.drawbox(offsetX,offsetY,offsetX+48,offsetY+denjinHaba,0x00000000,0x000000FF)
				gui.drawbox(offsetX,offsetY,offsetX+80,offsetY+denjinHaba,0x00000000,0x000000FF)
				gui.drawbox(offsetX,offsetY,offsetX+denjinTimer,offsetY+denjinHaba,barColor,0x000000FF)
				if memory.readbyte(0x02068D27) ~= 0 then
				end
			end
		end
	end
	if memory.readbyte(0x2011387) == 0x03 then
	end
	if memory.readbyte(0x2011387) == 0x04 then
	end
	if memory.readbyte(0x2011387) == 0x05 then
	end
	if memory.readbyte(0x2011387) == 0x06 then
		offsetX = 174
		offsetY = 160
		if kaitenView == 1 then
			kaiten("4268P", offsetX, offsetY, 0x020259EF, 0x020259D7, 40)
			offsetY = offsetY + offsetKaitenGauge
			kaiten("4268K", offsetX, offsetY, 0x02025A0B, 0x020259F3, 40)
			offsetY = offsetY + offsetKaitenGauge
			if memory.readbyte(0x020154D3) == 0 then
				juji_up = bitReturn(memory.readbyte(0x0202590F),0);
				juji_down = bitReturn(memory.readbyte(0x0202590F),1);
				juji_right = bitReturn(memory.readbyte(0x0202590F),2);
				juji_left = bitReturn(memory.readbyte(0x0202590F),3);
				x = offsetX
				y = offsetY
				gui.text(x-46,y,"42684268P")
				if memory.readbyte(0x020258FF) == 48 then
					jujiHaba = 6
					if juji_up == 1 then
						gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFF0000FF)
					else
						gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFFFFFFFF)
					end
					if juji_down == 1 then
						gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFF0000FF)
					else
						gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFFFFFFFF)
					end
					if juji_right == 1 then
						gui.text(x+jujiHaba*2,y,"6",0xFF0000FF)
					else
						gui.text(x+jujiHaba*2,y,"6",0xFFFFFFFF)
					end
					if juji_left == 1 then
						gui.text(x,y,"4",0xFF0000FF)
					else
						gui.text(x,y,"4",0xFFFFFFFF)
					end
					x = x + 20
					gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFFFFFFFF)
					gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFFFFFFFF)
					gui.text(x+jujiHaba*2,y,"6",0xFFFFFFFF)
					gui.text(x,y,"4",0xFFFFFFFF)
				else
					jujiHaba = 6
					gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFF0000FF)
					gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFF0000FF)
					gui.text(x+jujiHaba*2,y,"6",0xFF0000FF)
					gui.text(x,y,"4",0xFF0000FF)
					x = x + 20
					if juji_up == 1 then
						gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFF0000FF)
					else
						gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFFFFFFFF)
					end
					if juji_down == 1 then
						gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFF0000FF)
					else
						gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFFFFFFFF)
					end
					if juji_right == 1 then
						gui.text(x+jujiHaba*2,y,"6",0xFF0000FF)
					else
						gui.text(x+jujiHaba*2,y,"6",0xFFFFFFFF)
					end
					if juji_left == 1 then
						gui.text(x,y,"4",0xFF0000FF)
					else
						gui.text(x,y,"4",0xFFFFFFFF)
					end
				end
				x = x + 20
				gui.drawbox(x,y,x+32,y+4,0x00000000,0x000000FF)
				gui.drawbox(x,y,x+(memory.readbyte(0x020258F7)),y+4,0x00C080FF,0x000000FF)
			end
		end
	end
	if memory.readbyte(0x2011387) == 0x07 then
	end
	if memory.readbyte(0x2011387) == 0x08 then
	end
	if memory.readbyte(0x2011387) == 0x09 then
		offsetX = 180
		offsetY = 180
		if tameView == 1 then
			tameGauge("4-6P", offsetX, offsetY, 0x02025A11, 0x02025A0F)
			offsetY = offsetY + offsetTameGauge
			tameGauge("2-8P", offsetX, offsetY, 0x020259D9, 0x020259D7)
		end
	end
	if memory.readbyte(0x2011387) == 0x0A then
	end
	if memory.readbyte(0x2011387) == 0x0B then
	end
	if memory.readbyte(0x2011387) == 0x0C then
	end
	if memory.readbyte(0x2011387) == 0x0D then
		offsetX = 180
		offsetY = 180
		if tameView == 1 then
			tameGauge("4-6K", offsetX, offsetY, 0x020259D9, 0x020259D7)
			offsetY = offsetY + offsetTameGauge
			tameGauge("2-8P", offsetX, offsetY, 0x02025A2D, 0x02025A2B)
			offsetY = offsetY + offsetTameGauge
			tameGauge("2-8K", offsetX, offsetY, 0x020259F5, 0x020259F3)
		end
	end
	if memory.readbyte(0x2011387) == 0x0E then
	end
	if memory.readbyte(0x2011387) == 0x0F then
	end
	if memory.readbyte(0x2011387) == 0x10 then
		offsetX = 170
		offsetY = 160
		if rendaView == 1 then
			gui.text(offsetX,offsetY,"LK renda".." : "..memory.readbyte(0x02025A03))
			offsetY = offsetY + offsetRendaGauge
			gui.text(offsetX,offsetY,"MK renda".." : "..memory.readbyte(0x02025A05))
			offsetY = offsetY + offsetRendaGauge
			gui.text(offsetX,offsetY,"HK renda".." : "..memory.readbyte(0x02025A07))
			offsetY = offsetY + offsetRendaGauge
			gui.text(offsetX-24,offsetY,"renda")
			offsetY = offsetY + 1
			if memory.readbyte(0x02025A2D) ~= 0xFF then
				gui.drawbox(offsetX,offsetY,offsetX+49,offsetY+rendaHaba,0x00000000,0x000000FF)
				gui.drawbox(offsetX,offsetY,offsetX+((memory.readbyte(0x020259f3)/2)),offsetY+rendaHaba,0xFF8080FF,0x000000FF)
			else
				gui.drawbox(offsetX,offsetY,offsetX+49,offsetY+rendaHaba,0x00000000,0xFEFEFEFF)
			end
		offsetY = offsetY + offsetRendaGauge
		end
		if tameView == 1 then
			tameGauge("2-8K", offsetX, offsetY, 0x020259D9, 0x020259D7)
		end
	end
	if memory.readbyte(0x2011387) == 0x11 then
	end
	if memory.readbyte(0x2011387) == 0x12 then
		offsetX = 180
		offsetY = 180
		if tameView == 1 then
			tameGauge("4-6P", offsetX, offsetY, 0x020259D9, 0x020259D7)
			offsetY = offsetY + offsetTameGauge
			tameGauge("4-6K", offsetX, offsetY, 0x020259F5, 0x020259F3)
		end
	end
	if memory.readbyte(0x2011387) == 0x13 then
	end
	if memory.readbyte(0x2011387) == 0x14 then
		offsetX = 180
		offsetY = 180
		if tameView == 1 then
			tameGauge("4-6P", offsetX, offsetY, 0x020259F5, 0x020259F3)
			offsetY = offsetY + offsetTameGauge
			tameGauge("4-6K", offsetX, offsetY, 0x02025A11, 0x02025A0F)
			offsetY = offsetY + offsetTameGauge
			tameGauge("2-8K", offsetX, offsetY, 0x020259D9, 0x020259D7)
		end
	end
end
function tameGauge(str, x, y, address_tame, address_timer)
	gui.text(x-20,y,str)
	if memory.readbyte(address_tame) ~= 0xFF then
		gui.drawbox(x,y,x+42,y+assistHaba,0x00000000,0x000000FF)
		gui.drawbox(x,y,x+(memory.readbyte(address_tame)),y+assistHaba,0x0080FFFF,0x000000FF)
	else
		gui.drawbox(x,y,x+42,y+assistHaba,0x00000000,0xFEFEFEFF)
	end
	y = y + 3
	if memory.readbyte(address_timer) ~= 0xFF then
		gui.drawbox(x,y,x+42,y+assistHaba,0x00000000,0x000000FF)
		gui.drawbox(x,y,x+(memory.readbyte(address_timer)),y+assistHaba,0xFF8000FF,0x000000FF)
	else
		gui.drawbox(x,y,x+42,y+assistHaba,0x00000000,0x000000FF)
	end
end
function kaiten(str, x, y, address_juji, address_timer, timerOffset)
	gui.text(x-24,y,str)
	juji_up = bitReturn(memory.readbyte(address_juji),0)
	juji_down = bitReturn(memory.readbyte(address_juji),1)
	juji_right = bitReturn(memory.readbyte(address_juji),2)
	juji_left = bitReturn(memory.readbyte(address_juji),3)
	jujiHaba = 6
	if juji_up == 1 then
		gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFF0000FF)
	else
		gui.text(x+jujiHaba,y-jujiHaba/2,"8",0xFFFFFFFF)
	end
	if juji_down == 1 then
		gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFF0000FF)
	else
		gui.text(x+jujiHaba,y+jujiHaba/2,"2",0xFFFFFFFF)
	end
	if juji_right == 1 then
		gui.text(x+jujiHaba*2,y,"6",0xFF0000FF)
	else
		gui.text(x+jujiHaba*2,y,"6",0xFFFFFFFF)
	end
	if juji_left == 1 then
		gui.text(x,y,"4",0xFF0000FF)
	else
		gui.text(x,y,"4",0xFFFFFFFF)
	end
	x = x + timerOffset
	gui.drawbox(x,y,x+32,y+4,0x00000000,0x000000FF)
	gui.drawbox(x,y,x+(memory.readbyte(address_timer)),y+4,0x00C080FF,0x000000FF)
end
function hyakuretsu(image, image_button1, image_button2, x, y, address_count)
	gui.image(4,y-3,image)
	rendaTime = 0
	for i = 1, memory.readbyte(address_count), 1 do
		str = str + "K"
		gui.image(x,y-3,image_button1)
		x = x + 24
	end
	for i = 1, 4-memory.readbyte(address_count), 1 do
		gui.image(x,y-3,image_button2)
		x = x + 24
	end
end
function numSpaceLeft(val,keta)
	temp=""
	for i = 1, keta-#(val..""), 1 do
		temp = temp.." "
	end
	temp = temp..val
	return temp
end
local reba_flame_from_before_input1P = 0
local button_flame_from_before_input1P = 0
no_input_time1P = 0
no_input_limit = 240
before_time_in_game1P = 1234
before_time_in_game2P = 1234
time_in_game1P = 5678
time_in_game2P = 5678
keyDispOffsetX = 0
keyDispOffsetY = 52
local before_reba1P = 0
local before_input_lp1P = 0
local before_input_mp1P = 0
local before_input_hp1P = 0
local before_input_lk1P = 0
local before_input_mk1P = 0
local before_input_hk1P = 0
keyDisplay4_box1P = {
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
	{"","","0000000"},
}
keyDisp4Reba = {
	gd.createFromPng("resources/command/keyDisp2_reba1_1.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_2.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_3.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_4.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_5.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_6.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_7.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_8.png"):gdStr(),
	gd.createFromPng("resources/command/keyDisp2_reba1_9.png"):gdStr()
}
keyDisp4_button_L = gd.createFromPng("resources/command/keyDisp4_button_L.png"):gdStr()
keyDisp4_button_M = gd.createFromPng("resources/command/keyDisp4_button_M.png"):gdStr()
keyDisp4_button_H = gd.createFromPng("resources/command/keyDisp4_button_H.png"):gdStr()
keyDisp4_button_B = gd.createFromPng("resources/command/keyDisp4_button_B.png"):gdStr()
function keyDisplay4(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, player)
	dispNumber = 26
	offsetX1P2P = 270
	if player == 1 then
		before_time_in_game1P = time_in_game1P
		time_in_game1P = memory.readbyte(0x020157CF)
		if before_time_in_game1P ~= time_in_game1P then
			reba_flame_from_before_input1P = reba_flame_from_before_input1P+1
			button_flame_from_before_input1P = button_flame_from_before_input1P+1
			buttonAddress = 0x0202564B
			startAddress = 0x0206AA8C
			dirAddress = 0x2068C77
			direction1P = memory.readbyte(dirAddress)
			input_up = bitReturn(memory.readbyte(buttonAddress),0)
			input_down = bitReturn(memory.readbyte(buttonAddress),1)
			input_left = bitReturn(memory.readbyte(buttonAddress),2)
			input_right = bitReturn(memory.readbyte(buttonAddress),3)
			input_lp1P = bitReturn(memory.readbyte(buttonAddress),4)
			input_mp1P = bitReturn(memory.readbyte(buttonAddress),5)
			input_hp1P = bitReturn(memory.readbyte(buttonAddress),6)
			input_lk1P = bitReturn(memory.readbyte(buttonAddress-1),0)
			input_mk1P = bitReturn(memory.readbyte(buttonAddress-1),1)
			input_hk1P = bitReturn(memory.readbyte(buttonAddress-1),2)
			input_s = (memory.readbyte(startAddress) - (memory.readbyte(startAddress) % 16)) / 16
			if input_down==1 and input_right==0 and input_left==1 then
				reba1P = 1
			end
			if input_down==1 and input_right==0 and input_left==0 then
				reba1P = 2
			end
			if input_down==1 and input_right==1 and input_left==0 then
				reba1P = 3
			end
			if input_up==0 and input_down==0 and input_left==1 then
				reba1P = 4
			end
			if input_up==0 and input_down==0 and input_right==0 and input_left==0 then
				reba1P = 5		
			end
			if input_down==0 and input_right==1 and input_left==0 then
				reba1P = 6
			end
			if input_up==1 and input_right==0 and input_left==1 then
				reba1P = 7
			end
			if input_up==1 and input_right==0 and input_left==0 then
				reba1P = 8
			end
			if input_up==1 and input_right==1 and input_left==0 then
				reba1P = 9
			end
			if input_down==1 and input_right==1 and input_left==1 then
				reba1P = 3
			end
			input_temp = {0,0,"",0}
			input_temp[1] = reba_flame_from_before_input1P
			input_temp[4] = button_flame_from_before_input1P
			input_temp[2] = direction1P
			input_lp_temp = input_lp1P
			input_mp_temp = input_mp1P
			input_hp_temp = input_hp1P
			input_lk_temp = input_lk1P
			input_mk_temp = input_mk1P
			input_hk_temp = input_hk1P
			if before_input_lp1P == input_lp1P then
				input_lp_temp = 0
			end
			if before_input_mp1P == input_mp1P then
				input_mp_temp = 0
			end
			if before_input_hp1P == input_hp1P then
				input_hp_temp = 0
			end
			if before_input_lk1P == input_lk1P then
				input_lk_temp = 0
			end
			if before_input_mk1P == input_mk1P then
				input_mk_temp = 0
			end
			if before_input_hk1P == input_hk1P then
				input_hk_temp = 0
			end
			input_temp[3] = reba1P..input_lp_temp..input_mp_temp..input_hp_temp..input_lk_temp..input_mk_temp..input_hk_temp
			if (reba1P ~= before_reba1P and reba1P ~= 5)
				or input_lp1P > before_input_lp1P
				or input_mp1P > before_input_mp1P
				or input_hp1P > before_input_hp1P
				or input_lk1P > before_input_lk1P
				or input_mk1P > before_input_mk1P
				or input_hk1P > before_input_hk1P then
				for i = dispNumber, 2, -1 do
					keyDisplay4_box1P[i] = keyDisplay4_box1P[i-1]
				end
				if (reba1P ~= before_reba1P and reba1P ~= 5) then
					reba_flame_from_before_input1P = 0
				end
				if input_lp1P > before_input_lp1P
				or input_mp1P > before_input_mp1P
				or input_hp1P > before_input_hp1P
				or input_lk1P > before_input_lk1P
				or input_mk1P > before_input_mk1P
				or input_hk1P > before_input_hk1P then
					button_flame_from_before_input1P = 0
				end
				keyDisplay4_box1P[1] = input_temp
				if reba_flame_from_before_input1P ~= 0 then
					keyDisplay4_box1P[1][1] = 0
				end
				if button_flame_from_before_input1P ~= 0 then
					keyDisplay4_box1P[1][4] = 0
				end
				no_input_time1P = 0
			end
			if reba1P == 5
			and input_lp1P == 0
			and input_mp1P == 0
			and input_hp1P == 0
			and input_lk1P == 0
			and input_mk1P == 0
			and input_hk1P == 0 then
				no_input_time1P = no_input_time1P+1
				if no_input_time1P > no_input_limit or read(0x020154A7,0x01) == 0 or read(0x020154A7,0x01) == 1 or read(0x020154A7,0x01) == 7 then
					for i = 1, dispNumber-1, 1 do
						keyDisplay4_box1P[i]={"","","0000000"}
					end
					no_input_time1P = 0
				end
			end
			before_reba1P = reba1P
			before_input_lp1P = input_lp1P
			before_input_mp1P = input_mp1P
			before_input_hp1P = input_hp1P
			before_input_lk1P = input_lk1P
			before_input_mk1P = input_mk1P
			before_input_hk1P = input_hk1P
		end
		offsetX = keyDispOffsetX
		offsetY = keyDispOffsetY
		if direction1P == 0 then
		else
		end
		for i = 1, dispNumber-1, 1 do
			reba1P = string.sub(keyDisplay4_box1P[i][3],1,1)+0
			if reba1P ~= 0 then
				if keyDisplay4_box1P[i][1] ~= 0 then
				end
				if keyDisplay4_box1P[i][2] == 0 then
				else
				end
				gui.image(offsetX,offsetY,keyDisp4Reba[reba1P])
				if keyDisplay4_box1P[i][4] ~= 0 then
				end
				buttonOffsetX = offsetX + 9
				if string.sub(keyDisplay4_box1P[i][3],2,2)+0 == 1 then
					gui.image(buttonOffsetX,offsetY+1,keyDisp4_button_L)
				else
					gui.image(buttonOffsetX,offsetY+1,keyDisp4_button_B)
				end
				if string.sub(keyDisplay4_box1P[i][3],3,3)+0 == 1 then
					gui.image(buttonOffsetX+3,offsetY+1,keyDisp4_button_M)
				else
					gui.image(buttonOffsetX+3,offsetY+1,keyDisp4_button_B)
				end
				if string.sub(keyDisplay4_box1P[i][3],4,4)+0 == 1 then
					gui.image(buttonOffsetX+6,offsetY+1,keyDisp4_button_H)
				else
					gui.image(buttonOffsetX+6,offsetY+1,keyDisp4_button_B)
				end
				if string.sub(keyDisplay4_box1P[i][3],5,5)+0 == 1 then
					gui.image(buttonOffsetX+1,offsetY+4,keyDisp4_button_L)
				else
					gui.image(buttonOffsetX+1,offsetY+4,keyDisp4_button_B)
				end
				if string.sub(keyDisplay4_box1P[i][3],6,6)+0 == 1 then
					gui.image(buttonOffsetX+4,offsetY+4,keyDisp4_button_M)
				else
					gui.image(buttonOffsetX+4,offsetY+4,keyDisp4_button_B)
				end
				if string.sub(keyDisplay4_box1P[i][3],7,7)+0 == 1 then
					gui.image(buttonOffsetX+7,offsetY+4,keyDisp4_button_H)
				else
					gui.image(buttonOffsetX+7,offsetY+4,keyDisp4_button_B)
				end
				offsetY=offsetY+9
			end
		end
	end
end