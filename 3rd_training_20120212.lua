-- 3rd_training.lua
-- auther crystal_cube99
	TIME = 0

--[[
�X�V����
2012/02/12(Sun) �J�v���X�Q���L�[�f�B�X�v���C�����ǁB�QP�Ή������Ԍo�߂ŏ�����悤�ɁB
2012/02/09(Thu) 02/07�̃L�[�f�B�X�v���C���폜�B02/08�̎d�l�ɍ��킹�č��Ȃ����\��B
2012/02/08(Wed) �J�v���X�Q���ۂ��L�[�f�B�X�v���C�������B���򂪖ʓ|�L���Ă���ς�PP�������B
2012/02/07(Tue) �L�[�f�B�X�v���C�Q�������A�Ƃ肠�����PP�������B���͏󋵂����Ȃ�ڍׂ܂ŕ\���B
2011/05/16(Mon) BGM�̉��ʂ���������`�[�g�ǉ��B�g��Ȃ��ꍇ�̓R�����g�A�E�g�B
2011/05/15(Sun) 2P���̃L�[�f�B�X�v���C���A�L�����̌����ɂ���Ă͋t�ɂȂ��Ă����̂ŏC���B
2011/04/23      �Y��܂���
2011/03/06(Sun) ���������̒l��������@�\���ē��ځB���i�̓R�����g�A�E�g�B
2011/02/19(Sat) ���o�K�`�����K���[�h�����ǁB
2011/02/14(Mon) ���o�K�`�����K���[�h�������B�܂��ȈՔłƌ������Ƃ���B�R�����g���₷�\��B
2010/10/04(Mon) �X�^�[�g�{�^���Q��łQP�X�^���l�����^���ɂȂ�`�[�g��ǉ��B

2010/10/03(Sun) �q�b�g�X�g�b�v���[���ɂȂ�`�[�g���C���B
                �����O�q�b�g�X�g�b�v�ƃ[���q�b�g�X�g�b�v�𗼕��g����悤�ɏC���B
                �g���[�j���O���[�h��ǉ��B�X�^�[�g�{�^���Q��łQP�̗͖��^���ɁB
2010/10/02(Sat) �q�b�g�X�g�b�v���[���ɂȂ�`�[�g��ǉ��B
2010/10/01(Fli) �q�b�g�X�g�b�v�̒����Ȃ�`�[�g��ǉ��B
                �`�[�g���[�h���A�Ƃ肠�����L�����̓��������͎~�܂�悤�ɏC���i�q�b�g�X�g�b�v�����p�j�B
2010/09/26(Mon) �󒆒ǌ����Ԗ����̃`�[�g��ǉ��B
2010/09/25(Sat) drawOriginNum�֐��̒��g���C��
                �`�[�g���[�h���ځB�X�^�[�g�{�^���������ŋN�����I�����A�`�[�g��I�����ăI���I�t�ł���B
                �PP�̃Q�[�W��MAX�ɂ���`�[�g��ǉ��B
2010/09/24(Fri) ���l������t�H���g�ŕ\���ł���֐�drawOriginNum�������B
                ���̓d�n�g�����̗��߃Q�[�W�������B
2010/09/21(Tue) �����悤�ȏ��������������̂ŁA�֐����g���񂷂悤�ɂ��čs�����팸�����B
                �QP���ɂ��L�[�f�B�X�v���C�@�\��ǉ��B
2010/09/19(Sun) �����A���AQ�A���~�[�A�I���̗��ߋZ�̗��ߔ񗭂߃Q�[�W�������B
                �ǌ��\���Ԃ̃Q�[�W�ɖڐ����ǉ��B
2010/09/18(Sat) �q���[�S�[�́A���[���T���g�v���X�ƃ~�[�g�X�J�b�V���[�y�уM�K�X�u���[�J�[��
                �L�[���͂Ɖ�]�^�C�}�[�������B�M�K�X�͑I�����̂ݕ\������B
                �A���b�N�X�̃n�C�p�[�{���̃L�[���͂Ɖ�]�^�C�}�[�������B��������I�����̂݁B
                �ǌ��\���Ԃ̃Q�[�W�t�߂ɐ��l���\������悤�ɂ����B
2010/09/17(Fli) �t��́A�S��r�̘A�ŉ񐔂ƘA�Ń^�C�}�[�A�X�s�o�̗��ߔ񗭂߃Q�[�W�������B
                �팸�l�ƁA�ǌ��\���Ԃ������B
2010/09/15(Wed) �A���b�N�X�́A�X���b�V���G���{�[�ƃG�A�X�^���s�[�g�̗��ߔ񗭂߃Q�[�W�������B
                �L�[�f�B�X�v���C�@�\��ǉ��B�X�g�S��J�v�G�X�̓z�Ƃ͈Ⴄ�B
]]


--����lua�t�@�C���ƘA�g�������Ƃ��͂�����g���炵��
--dofile("�t�@�C����","r")


--�摜�\���ׂ̈ɕK�v�ȋL�q���ۂ�
require "gd"

--�摜��ǂݍ���ł���
blank = gd.createFromPng("resources/waza/blank.png"):gdStr()
blank2 = gd.createFromPng("resources/waza/blank2.png"):gdStr()
blank3 = gd.createFromPng("resources/waza/blank3.png"):gdStr()

alex_1 = gd.createFromPng("resources/waza/alex_1.png"):gdStr()
alex_2 = gd.createFromPng("resources/waza/alex_2.png"):gdStr()
alex_3 = gd.createFromPng("resources/waza/alex_3.png"):gdStr()

ryu_1 = gd.createFromPng("resources/waza/ryu_1.png"):gdStr()

chun_1 = gd.createFromPng("resources/waza/chun_1.png"):gdStr()
chun_2 = gd.createFromPng("resources/waza/chun_2.png"):gdStr()
chun_3 = gd.createFromPng("resources/waza/chun_3.png"):gdStr()
chun_4 = gd.createFromPng("resources/waza/chun_4.png"):gdStr()

hugo_1 = gd.createFromPng("resources/waza/hugo_1.png"):gdStr()
hugo_2 = gd.createFromPng("resources/waza/hugo_2.png"):gdStr()
hugo_3 = gd.createFromPng("resources/waza/hugo_3.png"):gdStr()

remy_1 = gd.createFromPng("resources/waza/remy_1.png"):gdStr()
remy_2 = gd.createFromPng("resources/waza/remy_2.png"):gdStr()
remy_3 = gd.createFromPng("resources/waza/remy_3.png"):gdStr()

q_1 = gd.createFromPng("resources/waza/q_1.png"):gdStr()
q_2 = gd.createFromPng("resources/waza/q_2.png"):gdStr()

oro_1 = gd.createFromPng("resources/waza/oro_1.png"):gdStr()
oro_2 = gd.createFromPng("resources/waza/oro_2.png"):gdStr()

urien_1 = gd.createFromPng("resources/waza/urien_1.png"):gdStr()
urien_2 = gd.createFromPng("resources/waza/urien_2.png"):gdStr()
urien_3 = gd.createFromPng("resources/waza/urien_3.png"):gdStr()

punch_1 = gd.createFromPng("resources/command/punch_1.png"):gdStr()
punch_2 = gd.createFromPng("resources/command/punch_2.png"):gdStr()
punch_3 = gd.createFromPng("resources/command/punch_3.png"):gdStr()
punch_1_2 = gd.createFromPng("resources/command/punch_1_2.png"):gdStr()
punch_2_2 = gd.createFromPng("resources/command/punch_2_2.png"):gdStr()
punch_3_2 = gd.createFromPng("resources/command/punch_3_2.png"):gdStr()

kick_1 = gd.createFromPng("resources/command/kick_1.png"):gdStr()
kick_2 = gd.createFromPng("resources/command/kick_2.png"):gdStr()
kick_3 = gd.createFromPng("resources/command/kick_3.png"):gdStr()
kick_1_2 = gd.createFromPng("resources/command/kick_1_2.png"):gdStr()
kick_2_2 = gd.createFromPng("resources/command/kick_2_2.png"):gdStr()
kick_3_2 = gd.createFromPng("resources/command/kick_3_2.png"):gdStr()


keyDisp2_dir0 = gd.createFromPng("resources/command/keyDisp2_dir0.png"):gdStr()
keyDisp2_dir1 = gd.createFromPng("resources/command/keyDisp2_dir1.png"):gdStr()
keyDisp2_dir0_real = gd.createFromPng("resources/command/keyDisp2_dir0_real.png"):gdStr()
keyDisp2_dir1_real = gd.createFromPng("resources/command/keyDisp2_dir1_real.png"):gdStr()

keyDisp2_lp1 = gd.createFromPng("resources/command/keyDisp2_lp1.png"):gdStr()
keyDisp2_lk1 = gd.createFromPng("resources/command/keyDisp2_lk1.png"):gdStr()
keyDisp2_l2 = gd.createFromPng("resources/command/keyDisp2_l2.png"):gdStr()
keyDisp2_mp1 = gd.createFromPng("resources/command/keyDisp2_mp1.png"):gdStr()
keyDisp2_mk1 = gd.createFromPng("resources/command/keyDisp2_mk1.png"):gdStr()
keyDisp2_m2 = gd.createFromPng("resources/command/keyDisp2_m2.png"):gdStr()
keyDisp2_hp1 = gd.createFromPng("resources/command/keyDisp2_hp1.png"):gdStr()
keyDisp2_hk1 = gd.createFromPng("resources/command/keyDisp2_hk1.png"):gdStr()
keyDisp2_h2 = gd.createFromPng("resources/command/keyDisp2_h2.png"):gdStr()
keyDisp2_hold1 = gd.createFromPng("resources/command/keyDisp2_hold1.png"):gdStr()
keyDisp2_hold2 = gd.createFromPng("resources/command/keyDisp2_hold2.png"):gdStr()



arrow_up1 = gd.createFromPng("resources/command/arrow_up1.png"):gdStr()
arrow_up2 = gd.createFromPng("resources/command/arrow_up2.png"):gdStr()
arrow_up3 = gd.createFromPng("resources/command/arrow_up3.png"):gdStr()

arrow_right1 = gd.createFromPng("resources/command/arrow_right1.png"):gdStr()
arrow_right2 = gd.createFromPng("resources/command/arrow_right2.png"):gdStr()
arrow_right3 = gd.createFromPng("resources/command/arrow_right3.png"):gdStr()

arrow_down1 = gd.createFromPng("resources/command/arrow_down1.png"):gdStr()
arrow_down2 = gd.createFromPng("resources/command/arrow_down2.png"):gdStr()
arrow_down3 = gd.createFromPng("resources/command/arrow_down3.png"):gdStr()

arrow_left1 = gd.createFromPng("resources/command/arrow_left1.png"):gdStr()
arrow_left2 = gd.createFromPng("resources/command/arrow_left2.png"):gdStr()
arrow_left3 = gd.createFromPng("resources/command/arrow_left3.png"):gdStr()

button_l1 = gd.createFromPng("resources/command/button_l1.png"):gdStr()
button_l2 = gd.createFromPng("resources/command/button_l2.png"):gdStr()
button_m1 = gd.createFromPng("resources/command/button_m1.png"):gdStr()
button_m2 = gd.createFromPng("resources/command/button_m2.png"):gdStr()
button_h1 = gd.createFromPng("resources/command/button_h1.png"):gdStr()
button_h2 = gd.createFromPng("resources/command/button_h2.png"):gdStr()

button_s1 = gd.createFromPng("resources/command/button_s1.png"):gdStr()
button_s2 = gd.createFromPng("resources/command/button_s2.png"):gdStr()

inputView_on = gd.createFromPng("resources/cheat/inputView_on.png"):gdStr()
inputView_off = gd.createFromPng("resources/cheat/inputView_off.png"):gdStr()
inputView_text = gd.createFromPng("resources/cheat/inputView_text.png"):gdStr()
tameView_on = gd.createFromPng("resources/cheat/tameView_on.png"):gdStr()
tameView_off = gd.createFromPng("resources/cheat/tameView_off.png"):gdStr()
tameView_text = gd.createFromPng("resources/cheat/tameView_text.png"):gdStr()
rendaView_on = gd.createFromPng("resources/cheat/rendaView_on.png"):gdStr()
rendaView_off = gd.createFromPng("resources/cheat/rendaView_off.png"):gdStr()
rendaView_text = gd.createFromPng("resources/cheat/rendaView_text.png"):gdStr()
kaitenView_on = gd.createFromPng("resources/cheat/kaitenView_on.png"):gdStr()
kaitenView_off = gd.createFromPng("resources/cheat/kaitenView_off.png"):gdStr()
kaitenView_text = gd.createFromPng("resources/cheat/kaitenView_text.png"):gdStr()
denjinView_on = gd.createFromPng("resources/cheat/denjinView_on.png"):gdStr()
denjinView_off = gd.createFromPng("resources/cheat/denjinView_off.png"):gdStr()
denjinView_text = gd.createFromPng("resources/cheat/denjinView_text.png"):gdStr()
BLView_on = gd.createFromPng("resources/cheat/BLView_on.png"):gdStr()
BLView_off = gd.createFromPng("resources/cheat/BLView_off.png"):gdStr()
BLView_text = gd.createFromPng("resources/cheat/BLView_text.png"):gdStr()
airTimerView_on = gd.createFromPng("resources/cheat/airTimerView_on.png"):gdStr()
airTimerView_off = gd.createFromPng("resources/cheat/airTimerView_off.png"):gdStr()
airTimerView_text = gd.createFromPng("resources/cheat/airTimerView_text.png"):gdStr()
longHitStop_on = gd.createFromPng("resources/cheat/longHitStop_on.png"):gdStr()
longHitStop_off = gd.createFromPng("resources/cheat/longHitStop_off.png"):gdStr()
longHitStop_text = gd.createFromPng("resources/cheat/longHitStop_text.png"):gdStr()
zeroHitStop_on = gd.createFromPng("resources/cheat/zeroHitStop_on.png"):gdStr()
zeroHitStop_off = gd.createFromPng("resources/cheat/zeroHitStop_off.png"):gdStr()
zeroHitStop_text = gd.createFromPng("resources/cheat/zeroHitStop_text.png"):gdStr()

trainingMode_on = gd.createFromPng("resources/cheat/trainingMode_on.png"):gdStr()
trainingMode_off = gd.createFromPng("resources/cheat/trainingMode_off.png"):gdStr()
trainingMode_text = gd.createFromPng("resources/cheat/trainingMode_text.png"):gdStr()
stunMax_on = gd.createFromPng("resources/cheat/stunMax_on.png"):gdStr()
stunMax_off = gd.createFromPng("resources/cheat/stunMax_off.png"):gdStr()
stunMax_text = gd.createFromPng("resources/cheat/stunMax_text.png"):gdStr()


combo = gd.createFromPng("resources/moji/combo.png"):gdStr()
maxCombo = gd.createFromPng("resources/moji/maxCombo.png"):gdStr()
maxDamage = gd.createFromPng("resources/moji/maxDamage.png"):gdStr()
totalDamage = gd.createFromPng("resources/moji/totalDamage.png"):gdStr()


cheat_on = gd.createFromPng("resources/cheat/cheat_on.png"):gdStr()

gaugeMax_on = gd.createFromPng("resources/cheat/gaugeMax_on.png"):gdStr()
gaugeMax_off = gd.createFromPng("resources/cheat/gaugeMax_off.png"):gdStr()
gaugeMax_text = gd.createFromPng("resources/cheat/gaugeMax_text.png"):gdStr()
airComboInf_on = gd.createFromPng("resources/cheat/airComboInf_on.png"):gdStr()
airComboInf_off = gd.createFromPng("resources/cheat/airComboInf_off.png"):gdStr()
airComboInf_text = gd.createFromPng("resources/cheat/airComboInf_text.png"):gdStr()

--�����t�H���g���̂O
nums0 = {
	gd.createFromPng("resources/num/num0_0.png"):gdStr(),
	gd.createFromPng("resources/num/num0_1.png"):gdStr(),
	gd.createFromPng("resources/num/num0_2.png"):gdStr(),
	gd.createFromPng("resources/num/num0_3.png"):gdStr(),
	gd.createFromPng("resources/num/num0_4.png"):gdStr(),
	gd.createFromPng("resources/num/num0_5.png"):gdStr(),
	gd.createFromPng("resources/num/num0_6.png"):gdStr(),
	gd.createFromPng("resources/num/num0_7.png"):gdStr(),
	gd.createFromPng("resources/num/num0_8.png"):gdStr(),
	gd.createFromPng("resources/num/num0_9.png"):gdStr()
}

--�L�[�f�B�X�v���C�Q�̃��o�[
keyDisp2Reba = {
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



--���͂̌�����\���ϐ�
local input_dir

--�O�̓��͂���o�߂����t���[����\���ϐ�
local reba_flame_from_before_input1P = 0
local button_flame_from_before_input1P = 0
local reba_flame_from_before_input2P = 0
local button_flame_from_before_input2P = 0

--
before_time_in_game1P = 1234
before_time_in_game2P = 1234
time_in_game1P = 5678
time_in_game2P = 5678


--���o�[�̓��͏�Ԃ�\���ϐ�
local input_up, input_down, input_right, input_left

--�{�^���̓��͏�Ԃ�\���ϐ�
local input_lp, input_mp, input_hp, input_lk, input_mk, input_hk
--1�t���[���O�̓��͂�ۑ����Ă����ϐ�
local before_reba1P = 0
local before_input_lp1P = 0
local before_input_mp1P = 0
local before_input_hp1P = 0
local before_input_lk1P = 0
local before_input_mk1P = 0
local before_input_hk1P = 0
local before_reba2P = 0
local before_input_lp2P = 0
local before_input_mp2P = 0
local before_input_hp2P = 0
local before_input_lk2P = 0
local before_input_mk2P = 0
local before_input_hk2P = 0
--���o�[�̉摜�t�@�C�����Ɏg���ϐ�
local reba_num

--�X�^�[�g�{�^�������b�����ꂽ��
startButton = 0

--�`�[�g�Z���N�g��ʂ��ǂ���
cheatModeNum = 0

--�e�X�̃`�[�g�t���O�B�����̃I���I�t�͂����Ő؂�ւ��܂��傤
inputView = 0
tameView = 0
rendaView = 0
kaitenView = 0
denjinView = 0
BLView = 0
airTimerView = 0

trainingMode = 0
stunMax = 0

gaugeMax = 0
airComboInf = 0
longHitStop = 0
zeroHitStop = 0

--�`�[�g���j���[����
menu = {
	{inputView_off,		trainingMode_off,	0},
	{tameView_off,		stunMax_off,		gaugeMax_off},
	{rendaView_off,		0,					airComboInf_off},
	{kaitenView_off,	0,					longHitStop_off},
	{denjinView_off,	0,					zeroHitStop_off},
	{BLView_off,		0,					0},
	{airTimerView_off,	0,					0}
}

--�`�[�g�̐���
cheatText = {
	{inputView_text,	trainingMode_text,	0},
	{tameView_text,		stunMax_text,		gaugeMax_text},
	{rendaView_text,	0,					airComboInf_text},
	{kaitenView_text,	0,					longHitStop_text},
	{denjinView_text,	0,					zeroHitStop_text},
	{BLView_text,		0,					0},
	{airTimerView_text,	0,					0}
}

--�`�[�g���[�h�̃J�[�\��
cursorX = 1
cursorY = 1

--�e�{�^���������Ă��鎞�Ԃ̒���
up_count = 0
down_count = 0
right_count = 0
left_count = 0
button_count = 0
lp_count = 0
mp_count = 0
hp_count = 0
lk_count = 0
mk_count = 0
hk_count = 0

--���̃t���[���ł̃��o�K�`���l�i�����͂̂Ƃ��ɖ��t���[���P����ׁA�����l���P�ɂ��Ă���j
gachaValue1 = 1
gachaValue2 = 1
gachaValue3 = 1
gachaValue4 = 1

--�ߋ�31�t���[���̃��o�K�`���l�B
--�PF������̕��σ��o�K�`���l���Ƃ�ׂɎg��
previousGachaValue1s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
previousGachaValue2s = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
previousGachaValue3s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
previousGachaValue4s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}


--�g���[�j���O���[�h�̃`�[�g�Ɏg���J�E���^�[�Ƃ�
trainingModeCount = 0
maxDamagevalue = 0
maxCombovalue = 0


--�q�b�g�X�g�b�v�̃`�[�g�Ɏg���J�E���^�[
hitStopCount = 0
zeroStopCount = 0


--�L�[�f�B�X�v���C�Q�̓��͗������
keyDisplay2_box1P = {
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

keyDisplay2_box2P = {
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

--�L�[�f�B�X�v���C�Q�̖����͎���
no_input_time1P = 0
no_input_time2P = 0
no_input_limit = 3000

--���̃{�^����������Ă���ƁA�J�E���g���P���₵�ĕԂ������̊֐�
function buttonCount(button, count)
	if button == 1 then
		count = count + 1
	else
		count = 0
	end
	return count
end

--�J�[�\���̈ʒu�ɉ����ă`�[�g���I���I�t���`�[�g��Ԃ�Ԃ��֐�
function cursorToCheat(x,y,cheat,onImage,offImage)
	if cursorX == x and cursorY == y then
		cheat = (cheat - 1)^2
		if cheat == 1 then
			menu[y][x] = onImage
		else
			menu[y][x] = offImage
		end
	end
	return cheat
end



--���o�K�`�����K�̏���������֐�
function gachaTrainingMode()
	--�Ԃ݂����ȉ摜��\��
	gui.image(0,0,blank3)
	
	--���݂̓��͏�Ԃ��A1��1�̕ϐ��ɕ�����
	input_up = bitReturn(memory.readbyte(0x0202564B),0)
	input_down = bitReturn(memory.readbyte(0x0202564B),1)
	input_left = bitReturn(memory.readbyte(0x0202564B),2)
	input_right = bitReturn(memory.readbyte(0x0202564B),3)
	input_lp = bitReturn(memory.readbyte(0x0202564B),4)
	input_mp = bitReturn(memory.readbyte(0x0202564B),5)
	input_hp = bitReturn(memory.readbyte(0x0202564B),6)
	input_lk = bitReturn(memory.readbyte(0x0202564B-1),0)
	input_mk = bitReturn(memory.readbyte(0x0202564B-1),1)
	input_hk = bitReturn(memory.readbyte(0x0202564B-1),2)
	
	--�摜��\������Ƃ��Ƃ��̊���W���Z�b�g
	offsetX = 40
	offsetY = 80
	
	--�e�{�^���̃J�E���^�[�B���������Ă���Ƒ����A�����ƂO�ɂȂ�B
	--�܂�A�J�E���^�[���P�̎������{�^�������������Ƃ������ɂȂ�B
	up_count = buttonCount(input_up, up_count)
	down_count = buttonCount(input_down, down_count)
	right_count = buttonCount(input_right, right_count)
	left_count = buttonCount(input_left, left_count)
	lp_count = buttonCount(input_lp, lp_count)
	mp_count = buttonCount(input_mp, mp_count)
	hp_count = buttonCount(input_hp, hp_count)
	lk_count = buttonCount(input_lk, lk_count)
	mk_count = buttonCount(input_mk, mk_count)
	hk_count = buttonCount(input_hk, hk_count)
	
	
	--���̃t���[���ł̃��o�K�`���l�B
	--���Ƃ��ƃs����^�C�}�[��d�n�^�C�}�[�͖��t���[���P�����Ă���̂ŁA�f�t�H�łP�ɂ��Ă���B
	gachaValue1 = 1
	gachaValue2 = 0
	gachaValue3 = 1
	gachaValue4 = 1
	
	--�ߋ��R�P�t���[���̃��o�K�`���l���v�B
	--���ϒl���o�����߂Ɏg���B
	sumGachaValue1 = 0
	sumGachaValue2 = 0
	sumGachaValue3 = 0
	sumGachaValue4 = 0
	
	--���o�[�オ�����ꂽ��A���o�K�`���l�𑝂₷
	--�d�n�̂݁A�����������͎��̏������s���B
	if up_count == 1 then
		gachaValue1 = gachaValue1 + 2
		gachaValue2 = gachaValue2 + 4
		
		--�������������ɓ��͂����Ƃ��͑����ʂR�A�P�̂̂Ƃ��͂Q�B
		if right_count == 1 or left_count == 1 then
			gachaValue3 = gachaValue3 + 3
		else
			gachaValue3 = gachaValue3 + 2
		end
	end
	if down_count == 1 then
		gachaValue1 = gachaValue1 + 2
		gachaValue2 = gachaValue2 + 4
		
		if right_count == 1 or left_count == 1 then
			gachaValue3 = gachaValue3 + 3
		else
			gachaValue3 = gachaValue3 + 2
		end
	end	
	
	if right_count == 1 then
		gachaValue1 = gachaValue1 + 2
		gachaValue2 = gachaValue2 + 4
		
		--�P�̂œ��͂��ꂽ�Ƃ��̂ݑ����ʂQ�B
		--�������͎��̏����͏�̕��ł���Ă���̂ŁA�������Ȃ�
		if up_count ~=1 and down_count ~= 1 then
			gachaValue3 = gachaValue3 + 2
		end
	end
	if left_count == 1 then
		gachaValue1 = gachaValue1 + 2
		gachaValue2 = gachaValue2 + 4
		
		if up_count ~=1 and down_count ~= 1 then
			gachaValue3 = gachaValue3 + 2
		end
	end
	
	
	--�p���`�{�^���������ꂽ��A���o�K�`���l�𑝂₷
	if lp_count == 1 then
		gachaValue1 = gachaValue1 + 1
		gachaValue2 = gachaValue2 + 2
		gachaValue3 = gachaValue3 + 1
	end
	if mp_count == 1 then
		gachaValue1 = gachaValue1 + 1
		gachaValue2 = gachaValue2 + 2
		gachaValue3 = gachaValue3 + 1
	end
	if hp_count == 1 then
		gachaValue1 = gachaValue1 + 1
		gachaValue2 = gachaValue2 + 2
		gachaValue3 = gachaValue3 + 1
	end
	
	--���L�b�N���P�̂ŉ����ꂽ�Ƃ�
	if lk_count == 1 then
		
		--���̃L�b�N�Ɠ����ɉ����ꂽ�Ƃ�
		if mk_count == 1 or hk_count == 1 then
			gachaValue1 = gachaValue1 + 1
			gachaValue3 = gachaValue3 + 1
		end	
		
		gachaValue2 = gachaValue2 + 1
	
	else
		--���L�b�N��������Ă��炸�A���̃L�b�N���Q�����ɉ����ꂽ�Ƃ�
		if mk_count == 1 and hk_count == 1 then
			gachaValue1 = gachaValue1 + 1
			gachaValue3 = gachaValue3 + 1
		end	
	end
	
	--���L�b�N���P�̂ŉ����ꂽ�Ƃ�
	if mk_count == 1 then
		if lk_count ~=1 and hk_count ~= 1 then
			gachaValue2 = gachaValue2 + 1
		end
	end
	
	--���L�b�N���P�̂ŉ����ꂽ�Ƃ�
	if hk_count == 1 then
		if lk_count ~=1 and mk_count ~= 1 then
			gachaValue2 = gachaValue2 + 1
		end
	end
	
	
	
	
	--�ߋ��̃��o�K�`���l�̑��a���o���B
	for i=1,31,1 do
		sumGachaValue1 = sumGachaValue1 + previousGachaValue1s[i]
		sumGachaValue2 = sumGachaValue2 + previousGachaValue2s[i]
		sumGachaValue3 = sumGachaValue3 + previousGachaValue3s[i]
	end
	
	--�Ō�ɁA���݂̃��o�K�`���l�𑫂��B
	sumGachaValue1 = sumGachaValue1 + gachaValue1
	sumGachaValue2 = sumGachaValue2 + gachaValue2
	sumGachaValue3 = sumGachaValue3 + gachaValue3

	--�p���`�{�^�����P���������ςȂ��łȂ�������A�d�n�͖���
	if lp_count <= 1 and mp_count <= 1 and hp_count <= 1 then
		sumGachaValue3 = 32
		for i=1,31,1 do
			previousGachaValue3s[i] = 1
		end
		gachaValue3 = 1
	end


	--���o�K�`���l�ɉ����ăQ�[�W��\������B
	tateGauge(alex_1,80,160,16,120,(sumGachaValue1/32)-1,2,1,0xFFFF00FF)
	tateGauge(alex_1,160,160,16,120,(sumGachaValue2/32),4,0,0xFF4444FF)
	tateGauge(alex_1,240,160,16,120,(sumGachaValue3/32)-1,2,1,0x00FFFFFF)
			
	--���o�K�`���l�P���P���傫���i�����͂łȂ��j�Ƃ��́A���o�K�`���l��\��
	if gachaValue1 > 1 then
		drawOriginNum(nums0, 80-4, 20, gachaValue1, 2, 10)
	end
	
	if gachaValue2 > 0 then
		drawOriginNum(nums0, 160-4, 20, gachaValue2, 2, 10)
	end
	
	if gachaValue3 > 1 then
		drawOriginNum(nums0, 240-4, 20, gachaValue3, 2, 10)
	end

	--�ߋ��̃��o�K�`���l���i�[���Ă���z��̒��g�����ɂP���炵�A
	--���݂̃��o�K�`���l��擪�Ɋi�[����B
	for i=31,2,-1 do
		previousGachaValue1s[i] = previousGachaValue1s[i-1]
		previousGachaValue2s[i] = previousGachaValue2s[i-1]
		previousGachaValue3s[i] = previousGachaValue3s[i-1]
	end
		previousGachaValue1s[1] = gachaValue1
		previousGachaValue2s[1] = gachaValue2
		previousGachaValue3s[1] = gachaValue3
end


--�`�[�g���[�h�̏���������֐�
function cheatMode()
	gui.image(0,0,blank3)
	input_up = bitReturn(memory.readbyte(0x0202564B),0)
	input_down = bitReturn(memory.readbyte(0x0202564B),1)
	input_left = bitReturn(memory.readbyte(0x0202564B),2)
	input_right = bitReturn(memory.readbyte(0x0202564B),3)
	input_lp = bitReturn(memory.readbyte(0x0202564B),4)
	input_mp = bitReturn(memory.readbyte(0x0202564B),5)
	input_hp = bitReturn(memory.readbyte(0x0202564B),6)
	input_lk = bitReturn(memory.readbyte(0x0202564B-1),0)
	input_mk = bitReturn(memory.readbyte(0x0202564B-1),1)
	input_hk = bitReturn(memory.readbyte(0x0202564B-1),2)
	
	offsetX = 20
	offsetY = 20
	
	--�J�[�\���̈ʒu�ɉ����āA�`�[�g���ڂ�Ԃň͂�
	gui.drawbox(offsetX-2+108*(cursorX-1),offsetY-2+24*(cursorY-1),offsetX+100+1+108*(cursorX-1),offsetY+20+1+24*(cursorY-1),0xFF0000FF,0xFF0000FF)

	--�`�[�g���ډ摜�����ׂĕ\������
	--�z�񖼂̑O��#�����ƁA�z��̗v�f���Ƃ����Ӗ��ɂȂ�B
	for i=1,#menu,1 do
		for j=1,#menu[i],1 do
			if menu[i][j] ~= 0 then
				gui.image(offsetX, offsetY, menu[i][j])
			end
			offsetX = offsetX + 108
		end
		offsetX = 20
		offsetY = offsetY + 24
	end
	
	gui.image(20,194,cheatText[cursorY][cursorX])
	
	--�C���v�b�g�`�F�b�N
	up_count = buttonCount(input_up, up_count)
	down_count = buttonCount(input_down, down_count)
	right_count = buttonCount(input_right, right_count)
	left_count = buttonCount(input_left, left_count)
	if input_lp == 1 or input_mp == 1 or input_hp == 1 or input_lk == 1 or input_mk == 1 or input_hk == 1 then
		button_count = button_count + 1
	else
		button_count = 0
	end
	
	--�����������or�������ςȂ���������
	if up_count == 1 or (up_count >= 20 and up_count % 6 == 0) then
	
		--�J�[�\������Ɉړ�
		cursorY = cursorY - 1
		--��ԏ���z�������ԉ��Ɉړ�
		if cursorY == 0 then
			cursorY = #menu
		end
		
		--�ړ���ɍ��ڂ����݂��Ȃ����
		while menu[cursorY][cursorX] == 0 do
			--�X�Ɉ��ֈړ�����
			cursorY = cursorY - 1
			
			--��ԏ���z�������ԉ��Ɉړ�
			if cursorY == 0 then
				cursorY = #menu
			end
		end	
	end
	
	--������������or�������ςȂ���������
	if down_count == 1 or (down_count >= 20 and down_count % 6 == 0) then
	
		cursorY = cursorY + 1
		if cursorY == #menu+1 then
			cursorY = 1
		end
		
		while menu[cursorY][cursorX] == 0 do
			cursorY = cursorY + 1
			if cursorY == #menu+1 then
				cursorY = 1
			end
		end
	end
	
	--�E����������or�������ςȂ���������
	if right_count == 1 or (right_count >= 20 and right_count % 6 == 0) then
	
		cursorX = cursorX + 1
		if cursorX == #menu[cursorY]+1 then
			cursorX = 1
		end

		while menu[cursorY][cursorX] == 0 do
			cursorX = cursorX + 1
			if cursorX == #menu[cursorY]+1 then
				cursorX = 1
			end
		end
	end
	
	--������������or�������ςȂ���������
	if left_count == 1 or (left_count >= 20 and left_count % 6 == 0) then
	
		cursorX = cursorX - 1
		if cursorX == 0 then
			cursorX = #menu[cursorY]
		end
		
		while menu[cursorY][cursorX] == 0 do
			cursorX = cursorX - 1
			if cursorX == 0 then
				cursorX = #menu[cursorY]
			end
		end
	end
	
	if button_count == 1 or (button_count >= 20 and button_count % 6 == 0) then
		inputView = cursorToCheat(1,1,inputView,inputView_on,inputView_off)
		tameView = cursorToCheat(1,2,tameView,tameView_on,tameView_off)
		rendaView = cursorToCheat(1,3,rendaView,rendaView_on,rendaView_off)
		kaitenView = cursorToCheat(1,4,kaitenView,kaitenView_on,kaitenView_off)
		denjinView = cursorToCheat(1,5,denjinView,denjinView_on,denjinView_off)
		BLView = cursorToCheat(1,6,BLView,BLView_on,BLView_off)
		airTimerView = cursorToCheat(1,7,airTimerView,airTimerView_on,airTimerView_off)
		
		trainingMode = cursorToCheat(2,1,trainingMode,trainingMode_on,trainingMode_off)
		stunMax = cursorToCheat(2,2,stunMax,stunMax_on,stunMax_off)
		
		gaugeMax = cursorToCheat(3,2,gaugeMax,gaugeMax_on,gaugeMax_off)
		airComboInf = cursorToCheat(3,3,airComboInf,airComboInf_on,airComboInf_off)
		longHitStop = cursorToCheat(3,4,longHitStop,longHitStop_on,longHitStop_off)
		zeroHitStop = cursorToCheat(3,5,zeroHitStop,zeroHitStop_on,zeroHitStop_off)
	
	end	
	
end







--********���lvalue�́Abitnum�Ԗڂ̃r�b�g��Ԃ��֐�********
--@param value	���ׂ����ϐ�
--@param bitnum	���Ԗڂ𒲂ׂ������i�ŉ��ʌ���0�j
function bitReturn(value,bitnum)
	re = value
	
	--bitnum����ʌ���؂�̂Ă�
	re = SHIFT(re,bitnum-31)

	--bitnum��艺�ʌ���؂�̂Ă�
	re = SHIFT(re,31)
	
	return re
end

--********���ߔ񗭂߃Q�[�W��\������֐�********
--@param image			�Q�[�W�̍��ɕ\������摜�i�Z���A�C�R���j
--@param x				����x���W
--@param y				����y���W
--@param address_tame	���߃t���[�����Ǘ����Ă���A�h���X
--@param address_timer	�񗭂߃t���[�����Ǘ����Ă���A�h���X
function tameGauge(image, x, y, address_tame, address_timer)

	--�摜��\���ix���W, y���W, �摜�̓������ϐ����j�B
	gui.image(4,y-3,image)

	--����F���߃t���[����FF�łȂ����
	if memory.readbyte(address_tame) ~= 0xFF then
		
		--�l�p�`��\���i�n�_��x���W, �n�_��y���W, �I�_��x���W, �I�_��y���W, ���g�̐F, �g�̐F�j�B
		--�F�͍�����Q�����u�ԁv�u�΁v�u�v�u�s�����x�v�B
		--�s�����x��00��FF�ȊO�ɂ���ƁA���삪�ɒ[�ɏd���Ȃ�̂Œ��ӁB
		--���g�����̓����A�g�����̕s�����ɂ��Ă���̂ŁA���̎l�p�̓o�[�̘g�����B
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
		
		--�l�p�`��\���B
		--���g�𐅐F�̕s�����A�g�����̓����ɂ��Ă���̂ŁA���̎l�p�̓o�[�̒��g�����B
		gui.drawbox(x,y,x+(memory.readbyte(address_tame)*2),y+6,0x0080FFFF,0x000000FF)
		
	--���߃t���[����FF�ł����
	else
		--�����g�����\������B
		gui.drawbox(x,y,x+84,y+6,0x00000000,0xFFFFFFFF)
		
	end
	
	--���͔񗭂߃t���[���̕����`�悵�����̂ŁA�c���W��8�h�b�g���炷
	y = y + 8

	--����F�񗭂߃t���[����FF�łȂ����
	if memory.readbyte(address_timer) ~= 0xFF then
		
		--�l�p�`��\���B
		--���g�����̓����A�g�����̕s�����ɂ��Ă���̂ŁA���̎l�p�̓o�[�̘g�����B
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
		
		--�l�p�`��\���B
		--���g���I�����W�F�̕s�����A�g�����̓����ɂ��Ă���̂ŁA���̎l�p�̓o�[�̒��g�����B
		gui.drawbox(x,y,x+(memory.readbyte(address_timer)*2),y+6,0xFF8000FF,0x000000FF)
		
	--�G���{�[�̔񗭂߃t���[����FF�ł����
	else
		--�����g�����\������B
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
	end
end



--********�c�^�̃Q�[�W��\������֐�********
--@param image			�Q�[�W�̋߂��ɕ\������摜
--@param x				����x���W
--@param y				����y���W
--@param xLen			x����
--@param yLen			y����
--@param value			�l
--@param maxValue		�ő�l
--@param offset			�l�̃Y��
--@param color			�F�i�ԁA�΁A�A�s�����x�j
function tateGauge(image, x, y, xLen, yLen, value, maxValue, offset, color)

		gui.drawbox(x-1,y+1,x+xLen+1,y-yLen-1,0x00000000,0xFFFFFFFF)
		gui.drawbox(x,y,x+xLen,y-yLen,0x00000000,0x000000FF)
		
		gui.drawbox(x,y,x+xLen,y-(yLen*(value/maxValue)),color,0x00000000)
		gui.drawtext(x+xLen+4,y-(yLen*(value/maxValue)),value+offset)
	
end


--********���^�̃Q�[�W��\������֐�********
--@param image			�Q�[�W�̋߂��ɕ\������摜
--@param x				����x���W
--@param y				����y���W
--@param xLen			x����
--@param yLen			y����
--@param value			�l
--@param maxValue		�ő�l
--@param offset			�l�̃Y��
--@param color			�F�i�ԁA�΁A�A�s�����x�j
function yokoGauge(image, x, y, xLen, yLen, value, maxValue, offset, color)

		gui.drawbox(x-1,y-1,x+xLen+1,y+yLen+1,0x00000000,0xFFFFFFFF)
		gui.drawbox(x,y,x+xLen,y+yLen,0x000000FF,0x000000FF)
		
		gui.drawbox(x-1,y-1,x+((xLen+1)*(value/maxValue)),y+yLen+1,color,0x00000000)
		gui.drawtext(x+(xLen*(value/maxValue)),y+yLen,value+offset)
end

function yokoGauge2(image, x, y, xLen, yLen, value, maxValue, offset, color)

		gui.drawbox(x-1,y-1,x+xLen+1,y+yLen+1,0x00000000,0xFFFFFFFF)
		gui.drawbox(x,y,x+xLen,y+yLen,0x000000FF,0x000000FF)
		
		gui.drawbox(x-1,y-1,x+((xLen+1)*(value/maxValue)),y+yLen+1,color,0x00000000)
		gui.drawtext(x+xLen+3,y-1,value+offset)
end

--********���o�[���]�Z�̖��ƃ^�C�}�[��\������֐�********
--@param image			�Z���A�C�R���̉摜
--@param x				����x���W
--@param y				����y���W
--@param address_juji	���o�[���͂��Ǘ����Ă���A�h���X
--@param address_timer	�^�C�}�[���Ǘ����Ă���A�h���X
function kaiten(image, x, y, address_juji, address_timer)
	gui.image(4,y-3,image)

	juji_up = bitReturn(memory.readbyte(address_juji),0)
	juji_down = bitReturn(memory.readbyte(address_juji),1)
	juji_right = bitReturn(memory.readbyte(address_juji),2)
	juji_left = bitReturn(memory.readbyte(address_juji),3)
	
	--����������͍ς݂ł����
	if juji_up == 1 then
		gui.image(x+48,y-12,arrow_up3)
	else
		gui.image(x+48,y-12,arrow_up1)
	end
	
	--�����������͍ς݂ł����
	if juji_down == 1 then
		gui.image(x+24,y-12,arrow_down3)
	else
		gui.image(x+24,y-12,arrow_down1)
	end
	
	--�E���������͍ς݂ł����
	if juji_right == 1 then
		gui.image(x+72,y-12,arrow_right3)
	else
		gui.image(x+72,y-12,arrow_right1)
	end
	
	--�����������͍ς݂ł����
	if juji_left == 1 then
		gui.image(x,y-12,arrow_left3)
	else
		gui.image(x,y-12,arrow_left1)
	end
	
	gui.drawbox(x,y+12,x+96,y+18,0x00000000,0x000000FF)
	gui.drawbox(x,y+12,x+(memory.readbyte(address_timer)*3),y+18,0x00C080FF,0x000000FF)
end


--********�S��r�̃{�^���A�C�R����\������֐�********
--@param image			�Z���A�C�R���̉摜
--@param image_button1	�����ꂽ�Ƃ��̃{�^���A�C�R��
--@param image_button2	������Ă��Ȃ��Ƃ��̃{�^���A�C�R��
--@param x				����x���W
--@param y				����y���W
--@param address_count	�{�^�����������񐔂��Ǘ����Ă���A�h���X
function hyakuretsu(image, image_button1, image_button2, x, y, address_count)
	gui.image(4,y-3,image)
	
	for i = 1, memory.readbyte(address_count), 1 do
		gui.image(x,y-3,image_button1)
		x = x + 24
	end
	
	for i = 1, 4-memory.readbyte(address_count), 1 do
		gui.image(x,y-3,image_button2)
		x = x + 24
	end
end



--*******�L�[�f�B�X�v���C���̂P*******
function keyDisplay(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, buttonAddress,startAddress)
	--���͂̓��e���A���ꂼ��̕ϐ��ɕ����Ă킩��₷������
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
	
	--���͏�Ԃɂ���āA�\������摜�ԍ������肷��
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
	
	--�摜�̓ǂݍ��݂ƕ\���𓯎��ɍs���Ă���
	reba = gd.createFromPng("resources/command/reba"..reba_num..".png"):gdStr()
	
	gui.image(x, y, reba)
	
	x = x + 24
	
	--���͂ɉ����ă{�^�������点��
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





--*******�L�[�f�B�X�v���C���̂Q�̂Q*******
function keyDisplay2_2(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, player)
	dispNumber=16
	offsetX1P2P = 270
	
	if player == 1 then
	--�Q�[�������Ԃ̂悤�Ȃ���
		before_time_in_game1P = time_in_game1P
		time_in_game1P = memory.readbyte(0x020157CF)
	
		--�Q�[�����Ŏ��Ԃ��o���Ă�����A���͗������X�V������
		if before_time_in_game1P ~= time_in_game1P then
			reba_flame_from_before_input1P = reba_flame_from_before_input1P+1
			button_flame_from_before_input1P = button_flame_from_before_input1P+1
			
			buttonAddress = 0x0202564B
			startAddress = 0x0206AA8C
			dirAddress = 0x2068C77
			
			--�L�����̌���
			direction1P = memory.readbyte(dirAddress)
			
			--���͂̓��e���A���ꂼ��̕ϐ��ɕ����Ă킩��₷�����Ă���
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
			
			--���݂̏�Ԃ���͂��ꎞ�I�Ɋi�[���Ă������߂̔�
			input_temp = {0,0,"",0}
			input_temp[1] = reba_flame_from_before_input1P
			input_temp[4] = button_flame_from_before_input1P
			input_temp[2] = direction1P
			input_temp[3] = reba1P..input_lp..input_mp..input_hp..input_lk..input_mk..input_hk
			
			--���������͂��ꂽ��A�z����P���炷
			if (reba1P ~= before_reba1P and reba1P ~= 5)
				or input_lp1P > before_input_lp1P
				or input_mp1P > before_input_mp1P
				or input_hp1P > before_input_hp1P
				or input_lk1P > before_input_lk1P
				or input_mk1P > before_input_mk1P
				or input_hk1P > before_input_hk1P then
				for i = dispNumber, 2, -1 do
					keyDisplay2_box1P[i] = keyDisplay2_box1P[i-1]
				end
				
				--���o�[�̓��͂�����Ă�����
				if (reba1P ~= before_reba1P and reba1P ~= 5) then
					reba_flame_from_before_input1P = 0
				end
				--�{�^���̓��͂�����Ă�����
				if input_lp1P > before_input_lp1P
				or input_mp1P > before_input_mp1P
				or input_hp1P > before_input_hp1P
				or input_lk1P > before_input_lk1P
				or input_mk1P > before_input_mk1P
				or input_hk1P > before_input_hk1P then
					button_flame_from_before_input1P = 0
				end
				
				--�z��̂P�ڂɁA���݂̓��͂��i�[����
				keyDisplay2_box1P[1] = input_temp
				if reba_flame_from_before_input1P ~= 0 then
					keyDisplay2_box1P[1][1] = 0
				end
				if button_flame_from_before_input1P ~= 0 then
					keyDisplay2_box1P[1][4] = 0
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
				--�������͂���Ă��Ȃ���΁A�����͎��Ԃ𑝂₷
				no_input_time1P = no_input_time1P+1
				if no_input_time1P > no_input_limit then
					for i = 1, dispNumber-1, 1 do
						keyDisplay2_box1P[i]={"","","0000000"}
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
	
	
		--�撣���ĕ`��
		offsetY=46
	
		if direction1P == 0 then
			gui.image(42,36,keyDisp2_dir0_real)
		else
			gui.image(42,36,keyDisp2_dir1_real)
		end
		for i = 1, dispNumber-1, 1 do
			reba1P = string.sub(keyDisplay2_box1P[i][3],1,1)+0
			--���͗�������������
			if reba1P ~= 0 then
			
				offsetX=2
				if keyDisplay2_box1P[i][1] ~= 0 then
					gui.text(offsetX,offsetY+6,numSpaceLeft(keyDisplay2_box1P[i][1],4))
				end
				
				offsetX=offsetX+16
				if keyDisplay2_box1P[i][4] ~= 0 then
					gui.text(offsetX,offsetY+6,numSpaceLeft(keyDisplay2_box1P[i][4],4))
				end
				
				offsetX=offsetX+16
				if keyDisplay2_box1P[i][2] == 0 then
					gui.image(offsetX,offsetY,keyDisp2_dir0)
				else
					gui.image(offsetX,offsetY,keyDisp2_dir1)
				end
				
				offsetX=offsetX+16
				gui.image(offsetX,offsetY,keyDisp2Reba[reba1P])
				
				offsetX=offsetX+12
				
				if string.sub(keyDisplay2_box1P[i][3],2,2)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_lp1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box1P[i][3],3,3)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_mp1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box1P[i][3],4,4)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_hp1)
					offsetX=offsetX+8
				end
				
				
				if string.sub(keyDisplay2_box1P[i][3],5,5)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_lk1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box1P[i][3],6,6)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_mk1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box1P[i][3],7,7)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_hk1)
					offsetX=offsetX+8
				end
				offsetY=offsetY+9
			end
		end
	else
	--�Q�[�������Ԃ̂悤�Ȃ���
		before_time_in_game2P = time_in_game2P
		time_in_game2P = memory.readbyte(0x020157CF)
	
		--�Q�[�����Ŏ��Ԃ��o���Ă�����A���͗������X�V������
		if before_time_in_game2P ~= time_in_game2P then
			reba_flame_from_before_input2P = reba_flame_from_before_input2P+1
			button_flame_from_before_input2P = button_flame_from_before_input2P+1
			
			buttonAddress = 0x0202568F
			startAddress = 0x0206AA90
			dirAddress = 0x0206910F
			
			--�L�����̌���
			direction2P = memory.readbyte(dirAddress)
			
			--���͂̓��e���A���ꂼ��̕ϐ��ɕ����Ă킩��₷�����Ă���
			input_up = bitReturn(memory.readbyte(buttonAddress),0)
			input_down = bitReturn(memory.readbyte(buttonAddress),1)
			input_left = bitReturn(memory.readbyte(buttonAddress),2)
			input_right = bitReturn(memory.readbyte(buttonAddress),3)
			input_lp2P = bitReturn(memory.readbyte(buttonAddress),4)
			input_mp2P = bitReturn(memory.readbyte(buttonAddress),5)
			input_hp2P = bitReturn(memory.readbyte(buttonAddress),6)
			input_lk2P = bitReturn(memory.readbyte(buttonAddress-1),0)
			input_mk2P = bitReturn(memory.readbyte(buttonAddress-1),1)
			input_hk2P = bitReturn(memory.readbyte(buttonAddress-1),2)
			
			input_s = (memory.readbyte(startAddress) - (memory.readbyte(startAddress) % 16)) / 16
			
			if input_down==1 and input_right==0 and input_left==1 then
				reba2P = 1
			end
			if input_down==1 and input_right==0 and input_left==0 then
				reba2P = 2
			end
			if input_down==1 and input_right==1 and input_left==0 then
				reba2P = 3
			end
			if input_up==0 and input_down==0 and input_left==1 then
				reba2P = 4
			end
			if input_up==0 and input_down==0 and input_right==0 and input_left==0 then
				reba2P = 5		
			end
			if input_down==0 and input_right==1 and input_left==0 then
				reba2P = 6
			end
			if input_up==1 and input_right==0 and input_left==1 then
				reba2P = 7
			end
			if input_up==1 and input_right==0 and input_left==0 then
				reba2P = 8
			end
			if input_up==1 and input_right==1 and input_left==0 then
				reba2P = 9
			end
			if input_down==1 and input_right==1 and input_left==1 then
				reba2P = 3
			end
			
			--���݂̏�Ԃ���͂��ꎞ�I�Ɋi�[���Ă������߂̔�
			input_temp = {0,0,"",0}
			input_temp[1] = reba_flame_from_before_input2P
			input_temp[4] = button_flame_from_before_input2P
			input_temp[2] = direction2P
			input_temp[3] = reba2P..input_lp..input_mp..input_hp..input_lk..input_mk..input_hk
			
			--���������͂��ꂽ��A�z����P���炷
			if (reba2P ~= before_reba2P and reba2P ~= 5)
				or input_lp2P > before_input_lp2P
				or input_mp2P > before_input_mp2P
				or input_hp2P > before_input_hp2P
				or input_lk2P > before_input_lk2P
				or input_mk2P > before_input_mk2P
				or input_hk2P > before_input_hk2P then
				for i = dispNumber, 2, -1 do
					keyDisplay2_box2P[i] = keyDisplay2_box2P[i-1]
				end
				
				--���o�[�̓��͂�����Ă�����
				if (reba2P ~= before_reba2P and reba2P ~= 5) then
					reba_flame_from_before_input2P = 0
				end
				--�{�^���̓��͂�����Ă�����
				if input_lp2P > before_input_lp2P
				or input_mp2P > before_input_mp2P
				or input_hp2P > before_input_hp2P
				or input_lk2P > before_input_lk2P
				or input_mk2P > before_input_mk2P
				or input_hk2P > before_input_hk2P then
					button_flame_from_before_input2P = 0
				end
				
				--�z��̂P�ڂɁA���݂̓��͂��i�[����
				keyDisplay2_box2P[1] = input_temp
				if reba_flame_from_before_input2P ~= 0 then
					keyDisplay2_box2P[1][1] = 0
				end
				if button_flame_from_before_input2P ~= 0 then
					keyDisplay2_box2P[1][4] = 0
				end
				no_input_time2P = 0
			end
			
			if reba2P == 5
			and input_lp2P == 0
			and input_mp2P == 0
			and input_hp2P == 0
			and input_lk2P == 0
			and input_mk2P == 0
			and input_hk2P == 0 then
				--�������͂���Ă��Ȃ���΁A�����͎��Ԃ𑝂₷
				no_input_time2P = no_input_time2P+1
				if no_input_time2P > no_input_limit then
					for i = 1, dispNumber-1, 1 do
						keyDisplay2_box2P[i]={"","","0000000"}
					end
					no_input_time2P = 0
				end
			end
			
			before_reba2P = reba2P
			before_input_lp2P = input_lp2P
			before_input_mp2P = input_mp2P
			before_input_hp2P = input_hp2P
			before_input_lk2P = input_lk2P
			before_input_mk2P = input_mk2P
			before_input_hk2P = input_hk2P
		end
	
	
		--�撣���ĕ`��
		offsetY=46
	
		if direction2P == 0 then
			gui.image(42+offsetX1P2P,36,keyDisp2_dir0_real)
		else
			gui.image(42+offsetX1P2P,36,keyDisp2_dir1_real)
		end
		for i = 1, dispNumber-1, 1 do
			reba2P = string.sub(keyDisplay2_box2P[i][3],1,1)+0
			--���͗�������������
			if reba2P ~= 0 then
			
				offsetX=2+offsetX1P2P
				if keyDisplay2_box2P[i][1] ~= 0 then
					gui.text(offsetX,offsetY+6,numSpaceLeft(keyDisplay2_box2P[i][1],4))
				end
				
				offsetX=offsetX+16
				if keyDisplay2_box2P[i][4] ~= 0 then
					gui.text(offsetX,offsetY+6,numSpaceLeft(keyDisplay2_box2P[i][4],4))
				end
				
				offsetX=offsetX+16
				if keyDisplay2_box2P[i][2] == 0 then
					gui.image(offsetX,offsetY,keyDisp2_dir0)
				else
					gui.image(offsetX,offsetY,keyDisp2_dir1)
				end
				
				offsetX=offsetX+16
				gui.image(offsetX,offsetY,keyDisp2Reba[reba2P])
				
				offsetX=offsetX+12
				
				if string.sub(keyDisplay2_box2P[i][3],2,2)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_lp1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box2P[i][3],3,3)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_mp1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box2P[i][3],4,4)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_hp1)
					offsetX=offsetX+8
				end
				
				
				if string.sub(keyDisplay2_box2P[i][3],5,5)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_lk1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box2P[i][3],6,6)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_mk1)
					offsetX=offsetX+8
				end
				
				if string.sub(keyDisplay2_box2P[i][3],7,7)+0 == 1 then
					gui.image(offsetX,offsetY,keyDisp2_hk1)
					offsetX=offsetX+8
				end
				offsetY=offsetY+9
			end
		end	
	end
end





--����������ƁA�w�肵�����ŉE�񂹂ɂ��Ă����
function numSpaceLeft(val,keta)
	temp=""
	for i = 1, keta-#(val..""), 1 do
		temp = temp.." "
	end
	temp = temp..val
	return temp
end







--********�w�肵���A�h���X�̐��l������t�H���g�ŕ\������֐�********
--@param nums	�����̓������z��
--@param x			x���W
--@param y			y���W
--@param value		���l
--@param keta		�����B�]�����ꍇ�͂O���t�������B
--@param offsetX	�����Ɛ����Ƃ̉��̊Ԋu�B
function drawOriginNum(nums, x, y, value, keta, offsetX)

	for i = keta, 1, -1 do

		--�܂��A���ׂ������ȊO�̌����O�ɂ���
		num_pinpoint = ((value%(10^i))-(value%10^(i-1)))

		--�����Ĉꌅ�ɂ���
		num_hitoketa = num_pinpoint / (10^(i-1))
	
		--�e�[�u���͔z��ƈ���ėv�f�̔ԍ����P����Ȃ̂ŁA�P����
		gui.image(x, y, nums[num_hitoketa+1])
		
		value = value % (10^(i-1))
		x = x + offsetX
	end
end


function training()
	if startButton == 1 then
		if trainingModeCount == 0 then
			trainingModeCount = 20
		else
			memory.writebyte(0x02011377,0x64)
			memory.writebyte(0x02011379,0x00)
			memory.writebyte(0x02010D61,0x00)
			memory.writebyte(0x020691A3,0xA0)
			memory.writebyte(0x02069611,0x00)
			memory.writebyte(0x02069612,0x00)
			if stunMax == 1 then
				memory.writebyte(0x02069611,0xFF)
			end
		end
	end
	
	if trainingModeCount > 0 then
		trainingModeCount = trainingModeCount - 1
	end
	
	if maxDamagevalue < memory.readbyte(0x02010D61) then
		maxDamagevalue = memory.readbyte(0x02010D61)
	end
	
	if maxCombovalue < memory.readbyte(0x020696C5) then
		maxCombovalue = memory.readbyte(0x020696C5)
	end
	
	
	
	offsetX = 200
	offsetY = 60
	
	gui.image(offsetX, offsetY, totalDamage)
	drawOriginNum(nums0, offsetX+124, offsetY, memory.readbyte(0x02010D61), 3, 10)
	offsetY = offsetY + 20
	gui.image(offsetX, offsetY, maxDamage)
	drawOriginNum(nums0, offsetX+124, offsetY, maxDamagevalue, 3, 10)
	offsetY = offsetY + 20
	gui.image(offsetX, offsetY, combo)
	drawOriginNum(nums0, offsetX+124, offsetY, memory.readbyte(0x020696C5), 3, 10)
	offsetY = offsetY + 20
	gui.image(offsetX, offsetY, maxCombo)
	drawOriginNum(nums0, offsetX+124, offsetY, maxCombovalue, 3, 10)

end


--- Returns HEX representation of num
--10�V����16�V���ɕϊ����Ă����֐��B
--hitbox��lua����q�؁B
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





--�D���ȃo�C�g����������ł����֐�
function write(addr,num,byte)
	for i=1,byte,1 do
		memory.writebyte(addr,num)
		addr = addr + 1
		num = ((num-(num%0x100)) / 0x100)
	end
end

--�D���ȃo�C�g���t�����ɏ�������ł����֐�
function writeReverse(addr,num,byte)
	for i=1,byte,1 do
			memory.writebyte(addr,(num % 0x100))
		addr = addr - 1
		num = ((num-(num%0x100)) / 0x100)
	end
end

--�D���ȃo�C�g���ǂ݂���ł����֐�
function read(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = (value + memory.readbyte(addr+i-1)) * 0x100
	end
	return value / 0x100
end

--�D���ȃo�C�g���t�����ɓǂݍ���ł����֐�
function readReverse(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = value + (memory.readbyte(addr-(i-1)) * (0x100^(i-1)))
	end
	return value
end

--���������̒l�����A���^�C���������Ƃ��Ɏg���B
--�A�h���X�����ɁA�������A�h���X�̒l����͂���ƁA���̎��ӂ̒l��������B
function viewMemory(addr)
	for i=0,20,1 do
		gui.text(10,14+i*8,num2hex(addr+(i*0x10)))
		for j=0,15,1 do
			gui.text(48+j*16,4,num2hex(j))
			gui.text(48+j*16,14+i*8,num2hex(memory.readbyte((addr)+j+(i*0x10))))
		end	
	end
end

function hex2keta(hexval,keta)
	baseKeta = #hexval
	for i=1,keta-baseKeta,1 do
		hexval ="0"..hexval
		i = i+1
	end
	return hexval
end

--�ʒu���W�𐔒l�ŕ\�����Ă����B
function viewPosition()
		--1P�̍��W��16�i���ŕ\��
		offsetX1 = 52
		offsetY1 = 32
		if readReverse(0x02068CD1,2) < 0x100 then
			gui.text(offsetX1,offsetY1,"X: "..num2hex(readReverse(0x02068CD1,2)))
		else
			gui.text(offsetX1,offsetY1,"X:"..num2hex(readReverse(0x02068CD1,2)))
		end
		if (readReverse(0x02068CD2,1)) == 0 then
			gui.text(offsetX1+20,offsetY1,".00")
		else
			gui.text(offsetX1+20,offsetY1,"."..num2hex(readReverse(0x02068CD2,1)))
		end
		
		gui.text(offsetX1,offsetY1+8,"Y:")
		gui.text(offsetX1+20-string.len(readReverse(0x02068CD5,2))*4,offsetY1+8,readReverse(0x02068CD5,2))
		if (readReverse(0x02068CD6,1)) == 0 then
			gui.text(offsetX1+20,offsetY1+8,".00")
		else
			gui.text(offsetX1+20,offsetY1+8,"."..num2hex(readReverse(0x02068CD6,1)))
		end
		
		gui.text(offsetX1,offsetY1+8,"Y:")
		gui.text(offsetX1+20-string.len(readReverse(0x02068CD5,2))*4,offsetY1+8,readReverse(0x02068CD5,2))
		if (readReverse(0x02068CD6,1)) == 0 then
			gui.text(offsetX1+20,offsetY1+8,".00")
		else
			gui.text(offsetX1+20,offsetY1+8,"."..num2hex(readReverse(0x02068CD6,1)))
		end
		
		
		
		--1P�̑��x��16�i���ŕ\��
		VX1 = readReverse(0x02068CEA,3)
		if VX1 < 0x800000 then
			gui.text(offsetX1-4,offsetY1+16,"VX: "..hex2keta(num2hex((VX1-(VX1%0x100))/0x100),2))
			
		else
			VX1 = 0x1000000 - VX1
			gui.text(offsetX1-4,offsetY1+16,"VX:-"..hex2keta(num2hex((VX1-(VX1%0x100))/0x100),2))
		end
		if VX1%0x100 == 0 then
			gui.text(offsetX1+20,offsetY1+16,".00")
		else
			gui.text(offsetX1+20,offsetY1+16,"."..hex2keta(num2hex(VX1%0x100),2))
		end
		
		VY1 = readReverse(0x02068CEE,3)
		if VY1 < 0x800000 then
			gui.text(offsetX1-4,offsetY1+24,"VY: "..hex2keta(num2hex((VY1-(VY1%0x100))/0x100),2))
			
		else
			VY1 = 0x1000000 - VY1
			gui.text(offsetX1-4,offsetY1+24,"VY:-"..hex2keta(num2hex((VY1-(VY1%0x100))/0x100),2))
		end
		if VY1%0x100 == 0 then
			gui.text(offsetX1+20,offsetY1+24,".00")
		else
			gui.text(offsetX1+20,offsetY1+24,"."..hex2keta(num2hex(VY1%0x100),2))
		end
		
		
		
		
		
		
		--2P�̍��W��16�i���ŕ\��
		offsetX2 = 256
		offsetY2 = 32
		if readReverse(0x02069169,2) < 0x100 then
			gui.text(offsetX2,offsetY2,"X: "..num2hex(readReverse(0x02069169,2)))
		else
			gui.text(offsetX2,offsetY2,"X:"..num2hex(readReverse(0x02069169,2)))
		end
		if (readReverse(0x0206916A,1)) == 0 then
			gui.text(offsetX2+20,offsetY2,".00")
		else
			gui.text(offsetX2+20,offsetY2,"."..num2hex(readReverse(0x0206916A,1)))
		end
		
		gui.text(offsetX2,offsetY2+8,"Y:")
		gui.text(offsetX2+20-string.len(readReverse(0x0206916D,2))*4,offsetY2+8,readReverse(0x0206916D,2))
		if (readReverse(0x0206916E,1)) == 0 then
			gui.text(offsetX2+20,offsetY2+8,".00")
		else
			gui.text(offsetX2+20,offsetY2+8,"."..num2hex(readReverse(0x0206916E,1)))
		end
		
		
		--2P�̑��x��16�i���ŕ\��
		VX2 = readReverse(0x02069182,3)
		if VX2 < 0x800000 then
			gui.text(offsetX2-4,offsetY2+16,"VX: "..hex2keta(num2hex((VX2-(VX2%0x100))/0x100),2))
			
		else
			VX2 = 0x1000000 - VX2
			gui.text(offsetX2-4,offsetY2+16,"VX:-"..hex2keta(num2hex((VX2-(VX2%0x100))/0x100),2))
		end
		if VX2%0x100 == 0 then
			gui.text(offsetX2+20,offsetY2+16,".00")
		else
			gui.text(offsetX2+20,offsetY2+16,"."..hex2keta(num2hex(VX2%0x100),2))
		end
		
		VY2 = readReverse(0x02069186,3)
		if VY2 < 0x800000 then
			gui.text(offsetX2-4,offsetY2+24,"VY: "..hex2keta(num2hex((VY2-(VY2%0x100))/0x100),2))
			
		else
			VY2 = 0x1000000 - VY2
			gui.text(offsetX2-4,offsetY2+24,"VY:-"..hex2keta(num2hex((VY2-(VY2%0x100))/0x100),2))
		end
		if VY2%0x100 == 0 then
			gui.text(offsetX2+20,offsetY2+24,".00")
		else
			gui.text(offsetX2+20,offsetY2+24,"."..hex2keta(num2hex(VY2%0x100),2))
		end
		
		
		
		
		
		
		
		
		--������x���W��16�i���ŕ\��
		offsetX3 = 180
		offsetY3 = 34
		
		x1P = readReverse(0x02068CD1,2)
		x2P = readReverse(0x02069169,2)
		if x2P > x1P then
			if x2P < 0x100 then
				gui.text(offsetX3,offsetY3,"2P:  "..num2hex(x2P))
			else
				gui.text(offsetX3,offsetY3,"2P: "..num2hex(x2P))
			end
			
			if x1P < 0x100 then
				gui.text(offsetX3,offsetY3+8,"1P:  "..num2hex(x1P))
			else
				gui.text(offsetX3,offsetY3+8,"1P: "..num2hex(x1P))
			end
			
			gui.drawbox(offsetX3-10,offsetY3+15,offsetX3+28,offsetY3+17,0xFFFFFFFF,0x000000FF)
			
			if x2P-x1P < 0x100 then
				gui.text(offsetX3-8,offsetY3+19,"DIFF:  "..num2hex(x2P-x1P))
			else
				gui.text(offsetX3-8,offsetY3+19,"DIFF: "..num2hex(x2P-x1P))
			end
		else
			if x1P < 0x100 then
				gui.text(offsetX3,offsetY3,"1P:  "..num2hex(x1P))
			else
				gui.text(offsetX3,offsetY3,"1P: "..num2hex(x1P))
			end
			
			if x2P < 0x100 then
				gui.text(offsetX3,offsetY3+8,"2P:  "..num2hex(x2P))
			else
				gui.text(offsetX3,offsetY3+8,"2P: "..num2hex(x2P))
			end
		
			gui.drawbox(offsetX3-10,offsetY3+15,offsetX3+28,offsetY3+17,0xFFFFFFFF,0x000000FF)

			if x1P-x2P < 0x100 then
				gui.text(offsetX3-8,offsetY3+19,"DIFF:  "..num2hex(x1P-x2P))
			else
				gui.text(offsetX3-8,offsetY3+19,"DIFF: "..num2hex(x1P-x2P))
			end
		end
end



gui.register(function()

	--************************************************************
	--************************************************************
	--************************************************************
	--�����Ƀt���[�������̒��O�Ɏ��s�������������������Ă�������
	--************************************************************
	--************************************************************
	--************************************************************
	
	--���Ԃ��~�߂Ă�����������
	--memory.writebyte(0x020691A3,0xA0)
	--writeReverse(0x2068AB7,0x1080,0x02)
	--writeReverse(0x2068AB9,0x1080,0x02)
	--writeReverse(0x2068ABB,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--memory.writebyte(0x02011377,0x64)
	
	
	
	--memory.writebyte(0x20695BF,0x04)
	
	--���[�V�����֌W�c�B�_�E���ǂ��ł��̒����Ɏg�����B
	--writeReverse(0x02068D1B,0x030005,0x03)
	--writeReverse(0x02068C95,0x010014,0x03)
	--viewMemory(0x02068C00)
		
--�A���b�N�X�̃X���[�p�[�z�[���h�ő���������`�[�g
--memory.writebyte(0x02068D27,0x10)
--memory.writebyte(0x02068DED,0x3B)
--memory.writebyte(0x02069285,0x00)

		--write(0x20259E7,0x01,1)--���C���̑��R�}���h
		--write(0x2025A1F,0x01,1)--�����̑��R�}���h
		--write(0x2025AAB,0x01,1)--�S�S�P�̑��R�}���h
		
		--viewMemory(0x02025A00)
		--write(0x2069547,0x10,1)
		--write(0x202635F,0x10,1)
		--viewMemory(0x02015400)
		--�W���b�W���[���g
		--write(0x203A22B,0x01,1)
		--viewPosition()

--		write(0x0206A0A0,0x003,0x02)
--		write(0x0206A0B0,0x003,0x02)
--		write(0x0206A0C0,0x003,0x02)
--		write(0x0206A0D0,0x003,0x02)
--		write(0x0206A110,0x000,0x02)
--		write(0x0206A120,0x000,0x02)
--			
--			
--		writeReverse(0x206A10D,0x000,0x02)
--			
--		write(0x200DCD2,0x00000000,0x04)
		
		--SA���o�����[�h�ɂ��Ă����B�������Ȃ��Ɖ�ʈʒu���Œ�ł��Ȃ�
		--write(0x2026BD0,0x111101,0x03)
		--SA���o���̉�ʂ̈ړ��
		--write(0x200DCD2,0x0000,2)
		
		--��ʃY�[��
		--write(0x200DCBB,0x40,0x01)
		--�J�����ʒu�ύX
		--write(0x200DCD2,00000000,0x04)
		--writeReverse(0x200DCD5,0x00,0x02)


	--2P����ɋ��H�炢��
	--memory.writebyte(0x02069312,0x10)


	--��~���Ԃ�\��
	STOP1 = read(0x2068CB1,1)
	if STOP1 > 127 then
		STOP1 = 256 - STOP1
	end
	--gui.text(140,40,"STOP:"..STOP1)
	
	STOP2 = read(0x2069149,1)
	if STOP2 > 127 then
		STOP2 = 256 - STOP2
	end
	--gui.text(220,40,"STOP:"..STOP2)
	
	
	
	--�s���莞�̃��o�K�`�����胂�[�h
	if startButton == 1 then
		writeReverse(0x20695F9,149,2)
		TIME = 0
	end
	
	if readReverse(0x20695F9,2) > 0 then
		writeReverse(0x020695F9,readReverse(0x20695F9,2),2)
	end
	--drawOriginNum(nums0, 10, 40, readReverse(0x20695F9,2), 4, 10)
	
	--�c��̃s�����^�C�}�[��\��
	--memory.writebyte(0x02011377,0x64)
	
	if readReverse(0x20695F9,2) == 0 then
		TIME = TIME
	else
		 if readReverse(0x20695F9,2) < 149 then
			TIME = TIME + 1
		else
			TIME = TIME
		end
	end
	
	--�s�������A�܂łɂ����������Ԃ�\��
	--drawOriginNum(nums0, 10, 60, TIME, 4, 10)
	
	
	
	--BGM����
	memory.writebyte(0x02078D06,0x00)
		
	--��Ƀu���b�L���O�\
	--�n��O
	--memory.writebyte(0x02026335,0x0A)
	--�n�㉺
	--memory.writebyte(0x02026337,0x0A)
	--��
	--memory.writebyte(0x02026339,0x07)
	--�΋�
	--memory.writebyte(0x02026347,0x05)
	
	--1P�̑̂̌���
	--memory.writebyte(0x02068C76,0x01)
	--2P�̑̂̌���
	--memory.writebyte(0x0206910E,0x00)
	
	
	--�M�����g�������ꍇ�͂����00�ɂ��ď���
	--memory.writebyte(0x02011387,0x00)
	--memory.writebyte(0x02011388,0x00)
	
	--�X�e�[�W���G���i�X�e�[�W�ɂ������Ƃ��͂��������
	--memory.writebyte(0x020154F5,0x08)
	
	--�̗͂�160�Œ�ɂ������Ƃ��͂��������
	--memory.writebyte(0x020691A3,0xA0)
	
	
	
	--����F�������������ꍇ
	if memory.readbyte(0x020154A7) == 1 or  memory.readbyte(0x020154A7) == 2 or  memory.readbyte(0x020154A7) == 6 
	or memory.readbyte(0x020154A7) == 3 or  memory.readbyte(0x020154A7) == 7 or  memory.readbyte(0x020154A7) == 8 then
		
		
			--�X�^�[�g�{�^����������Ă�����
		if memory.readbyte(0x206AA8C) == 16 then
		
			--�팸�l���O��	
			--memory.writebyte(0x020694C9,0)
		
			startButton = startButton + 1
			--writeReverse(0x02068CD2,0xF2,1)
			X1P = readReverse(0x02068CD2,2)
			--writeReverse(0x02068CD2,X1P+2,2)
			--writeReverse(0x02069169,X1P-0x50,2)
			if startButton == 1 then
				--writeReverse(0x0206916A,0x80,1)
			end
		else
			startButton = 0
		end
			
		--�X�^�[�g�{�^����30F�ԉ����ꂽ��
		if startButton == 30 then
			--�`�[�g���[�h��0�̂Ƃ���1�ɁA0�ȏ�̂Ƃ���0�ɂ���
			if cheatModeNum == 0 then
				cheatModeNum = 1
			elseif cheatModeNum >= 1 then
				cheatModeNum = 0
				startButton = 0
			end
			print("cheatModeNum = "..cheatModeNum)
		elseif  startButton == 60 then
			--�`�[�g���[�h��2�ɂ���
				cheatModeNum = 2
			print("cheatModeNum = "..cheatModeNum)
		
		
		end
		
		
		if cheatModeNum == 2 then
			memory.writebyte(0x02068CB1,0x01)
			memory.writebyte(0x02069149,0x01)
			gachaTrainingMode()
		end
		
		if cheatModeNum == 1 then
			memory.writebyte(0x02068CB1,0x01)
			memory.writebyte(0x02069149,0x01)
			cheatMode()
		end
	
		gui.image(blank2)

		if cheatModeNum == 0 then

			if inputView == 1 then
			
				
				--�L�[�f�B�X�v���C���̂P�i�PP���j
				keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 0x206AA8D, 0x206AA8C)
				
				--�L�[�f�B�X�v���C���̂Q �J�v���X���i�PP���j
				keyDisplay2_2(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 1)
				
				
				--�L�[�f�B�X�v���C���̂P�i�QP���j
				keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 280, 184, 0x0202568F, 0x0206AA90)
				--�L�[�f�B�X�v���C���̂Q �J�v���X���i�QP���j
				keyDisplay2_2(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 2)

			end
			
			
			
			
			--����F�g�p�L�������M����������
			if memory.readbyte(0x2011387) == 0x00 then
			
				--�����ɏ������L�q����
			
			
			end


			--����F�g�p�L�������A���b�N�X��������
			if memory.readbyte(0x2011387) == 0x01 then

				--�Q�[�W��摜��\�����邽�߂̍��W
				offsetX = 30
				offsetY = 50
			
				if tameView == 1 then
				
					--�X���b�V���G���{�[
					tameGauge(alex_1, offsetX, offsetY, 0x02025A49, 0x02025A47)
				
					offsetY = offsetY + 28
					
					--�G�A�X�^���s�[�g
					tameGauge(alex_2, offsetX, offsetY, 0x02025A2D, 0x02025A2B)
					
					offsetY = offsetY + 28
					
				end
				----------------------�n�C�p�[�{��----------------------
				
				if kaitenView == 1 then
					--�n�C�p�[�{����I�����Ă�����
					if memory.readbyte(0x020154D3) == 0 then
						
						kaiten(alex_3, offsetX, offsetY, 0x0202590F, 0x020258F7)
					end
				end
				
			end
			
			--����F�g�p�L����������������
			if memory.readbyte(0x2011387) == 0x02 then

				offsetX = 30
				offsetY = 50
				
				if denjinView == 1 then
				
					--�d�n�g������I�����Ă�����
					if memory.readbyte(0x020154D3) == 2 then
					
						gui.image(4,offsetY,ryu_1)
						
						drawOriginNum(nums0,offsetX,offsetY,memory.readbyte(0x02068D27),2,10)
						
						offsetX = offsetX + 3
						offsetY = offsetY + 16
						
						gui.drawbox(offsetX,offsetY,offsetX+16,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+48,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+96,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+160,offsetY+6,0x00000000,0x000000FF)
						
						--�d�n�̃��x���ɉ����Ēl���ς��ϐ�
						--							��
						denjin = memory.readbyte(0x02068D2D)
						
						if denjin == 3 then
							gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x02068D27)*2),offsetY+6,0x0080FFFF,0x000000FF)
						elseif denjin == 9 then
							gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x02068D27)*2),offsetY+6,0x00FFFFFF,0x000000FF)
						elseif denjin == 14 then
							gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x02068D27)*2),offsetY+6,0x80FFFFFF,0x000000FF)
						elseif denjin == 19 then
							gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x02068D27)*2),offsetY+6,0xFFFFFFFF,0x000000FF)
						end
						

						
						if memory.readbyte(0x02068D27) ~= 0 then
							--�d�n�̗��߂����ԂŌ���Ȃ��悤�ɂ���Ƃ��͂�����g��
							--memory.writebyte(0x02068D27,memory.readbyte(0x02068D27)+1)
						end
					end
				end
			end
			
			--����F�g�p�L������������������
			if memory.readbyte(0x2011387) == 0x03 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������_�b�h���[��������
			if memory.readbyte(0x2011387) == 0x04 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������l�N����������
			if memory.readbyte(0x2011387) == 0x05 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������q���[�S�[��������
			if memory.readbyte(0x2011387) == 0x06 then
			
				offsetX = 30
				offsetY = 50
				
				if kaitenView == 1 then
				
					--���[���T���g�v���X
					kaiten(hugo_1, offsetX, offsetY, 0x020259EF, 0x020259D7)
					
					offsetY = offsetY + 30
					
					--�~�[�g�X�J�b�V���[
					kaiten(hugo_2, offsetX, offsetY, 0x02025A0B, 0x020259F3)
					
					offsetY = offsetY + 30
					
					----------------------�M�K�X�u���[�J�[----------------------
					--�M�K�X�u���[�J�[��I�����Ă�����
					if memory.readbyte(0x020154D3) == 0 then
						
						gui.image(4,offsetY-3,hugo_3)
						
						juji_up = bitReturn(memory.readbyte(0x0202590F),0);
						juji_down = bitReturn(memory.readbyte(0x0202590F),1);
						juji_right = bitReturn(memory.readbyte(0x0202590F),2);
						juji_left = bitReturn(memory.readbyte(0x0202590F),3);
						
						--�P��]�ڂł����
						if memory.readbyte(0x020258FF) == 48 then
							
							--����������͍ς݂ł����
							if juji_up == 1 then
								gui.image(offsetX+48,offsetY-12,arrow_up3)
							else
								gui.image(offsetX+48,offsetY-12,arrow_up1)
							end
							
							--�����������͍ς݂ł����
							if juji_down == 1 then
								gui.image(offsetX+24,offsetY-12,arrow_down3)
							else
								gui.image(offsetX+24,offsetY-12,arrow_down1)
							end
							
							--�E���������͍ς݂ł����
							if juji_right == 1 then
								gui.image(offsetX+72,offsetY-12,arrow_right3)
							else
								gui.image(offsetX+72,offsetY-12,arrow_right1)
							end
							
							--�����������͍ς݂ł����
							if juji_left == 1 then
								gui.image(offsetX,offsetY-12,arrow_left3)
							else
								gui.image(offsetX,offsetY-12,arrow_left1)
							end

						else
										--����������͍ς݂ł����
							if juji_up == 1 then
								gui.image(offsetX+48,offsetY-12,arrow_up2)
							else
								gui.image(offsetX+48,offsetY-12,arrow_up3)
							end
							
							--�����������͍ς݂ł����
							if juji_down == 1 then
								gui.image(offsetX+24,offsetY-12,arrow_down2)
							else
								gui.image(offsetX+24,offsetY-12,arrow_down3)
							end
							
							--�E���������͍ς݂ł����
							if juji_right == 1 then
								gui.image(offsetX+72,offsetY-12,arrow_right2)
							else
								gui.image(offsetX+72,offsetY-12,arrow_right3)
							end
							
							--�����������͍ς݂ł����
							if juji_left == 1 then
								gui.image(offsetX,offsetY-12,arrow_left2)
							else
								gui.image(offsetX,offsetY-12,arrow_left3)
							end
						end	
						
						gui.drawbox(offsetX,offsetY+12,offsetX+96,offsetY+18,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY+12,offsetX+(memory.readbyte(0x020258F7)*3),offsetY+18,0x00C080FF,0x000000FF)

						
					end
					----------------------�M�K�X�u���[�J�[----------------------
				end
			end
			
			--����F�g�p�L���������Ԃ���������
			if memory.readbyte(0x2011387) == 0x07 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������G���i��������
			if memory.readbyte(0x2011387) == 0x08 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������I����������
			if memory.readbyte(0x2011387) == 0x09 then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
					--���֏�
					tameGauge(oro_1, offsetX, offsetY, 0x02025A11, 0x02025A0F)
					
					offsetY = offsetY + 28
					
					--�S�����}
					tameGauge(oro_2, offsetX, offsetY, 0x020259D9, 0x020259D7)
				end
			end
			
			--����F�g�p�L������������������
			if memory.readbyte(0x2011387) == 0x0A then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L����������������
			if memory.readbyte(0x2011387) == 0x0B then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������V���[����������
			if memory.readbyte(0x2011387) == 0x0C then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�����������A����������
			if memory.readbyte(0x2011387) == 0x0D then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
					
					--�`�����I�b�g�^�b�N��
					tameGauge(urien_1, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
					offsetY = offsetY + 28
					
					--�o�C�I�����X�j�[�h���b�v
					tameGauge(urien_2, offsetX, offsetY, 0x02025A2D, 0x02025A2B)
					
					offsetY = offsetY + 28
					
					--�f���W�����X�w�b�h�o�b�g
					tameGauge(urien_3, offsetX, offsetY, 0x020259F5, 0x020259F3)
					
				end
			end
			
			--����F�g�p�L���������S��������
			if memory.readbyte(0x2011387) == 0x0E then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������^���S��������
			if memory.readbyte(0x2011387) == 0x0F then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L�������t�킾������
			if memory.readbyte(0x2011387) == 0x10 then
			
				--�Q�[�W��摜��\�����邽�߂̍��W
				offsetX = 30
				offsetY = 50
				
				if rendaView == 1 then
					
					--��S��r
					hyakuretsu(chun_1, kick_1, kick_1_2, offsetX, offsetY, 0x02025A03)
					
					offsetY = offsetY + 28
					
					----------------------���S��r----------------------
					hyakuretsu(chun_2, kick_2, kick_2_2, offsetX, offsetY, 0x02025A05)
					
					offsetY = offsetY + 28
					
					----------------------���S��r----------------------
					hyakuretsu(chun_3, kick_3, kick_3_2, offsetX, offsetY, 0x02025A07)
					
					offsetY = offsetY + 28
					
					
					----------------------�A�Ń^�C�}�[----------------------
					if memory.readbyte(0x02025A2D) ~= 0xFF then
						gui.drawbox(offsetX,offsetY,offsetX+98,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x020259f3)),offsetY+6,0xFF8080FF,0x000000FF)
					else
						gui.drawbox(offsetX,offsetY,offsetX+98,offsetY+6,0x00000000,0xFFFFFFFF)
					end
					----------------------�A�Ń^�C�}�[----------------------
					
				offsetY = offsetY + 28
				
				end
				
				if tameView == 1 then
				
					--�X�s�j���O�o�[�h�L�b�N
					tameGauge(chun_4, offsetX, offsetY, 0x020259D9, 0x020259D7)
			
				end
			
			end
			
			--����F�g�p�L�������܂��Ƃ�������
			if memory.readbyte(0x2011387) == 0x11 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L������Q��������
			if memory.readbyte(0x2011387) == 0x12 then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
				
					--�ːi�����Ō��i���j
					tameGauge(q_1, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
					offsetY = offsetY + 28
					
					--�ːi�����Ō��i���j
					tameGauge(q_2, offsetX, offsetY, 0x020259F5, 0x020259F3)
				
				end
			
			end
			
			--����F�g�p�L�������g�D�G������������
			if memory.readbyte(0x2011387) == 0x13 then
			
				--�����ɏ������L�q����
			
			
			end
			
			--����F�g�p�L���������~�[��������
			if memory.readbyte(0x2011387) == 0x14 then
			
				offsetX = 30
				offsetY = 50
							
				if tameView == 1 then
					
					--���F���e���̎c���E�I�b�g
					tameGauge(remy_1, offsetX, offsetY, 0x020259F5, 0x020259F3)
					
					offsetY = offsetY + 28
					
					--���F���e���̎c���E�o�X
					tameGauge(remy_2, offsetX, offsetY, 0x02025A11, 0x02025A0F)
					
					offsetY = offsetY + 28
					
					--�}�E�V�F���̔߈�
					tameGauge(remy_3, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
				end
				
			end
			
			----------------------�팸�l----------------------
			
			offsetX = 240
			offsetY = 50
			
			if airTimerView == 1 then
			
				gui.drawtext(offsetX,offsetY,tostring(memory.readbyte(0x020694C9)))
				
				offsetX = offsetX + 8
				
					gui.drawbox(offsetX,offsetY,offsetX+121,offsetY+6,0x00000000,0x000000FF)
					gui.drawline(offsetX+101,offsetY,offsetX+101,offsetY+6,0x000000FF)
					gui.drawline(offsetX+81,offsetY,offsetX+81,offsetY+6,0x000000FF)
					gui.drawline(offsetX+61,offsetY,offsetX+61,offsetY+6,0x000000FF)
					gui.drawline(offsetX+41,offsetY,offsetX+41,offsetY+6,0x000000FF)
					gui.drawline(offsetX+21,offsetY,offsetX+21,offsetY+6,0x000000FF)
					gui.drawline(offsetX+11,offsetY,offsetX+11,offsetY+6,0x000000FF)
					gui.drawline(offsetX+5,offsetY,offsetX+5,offsetY+6,0x000000FF)
					gui.drawline(offsetX+2,offsetY,offsetX+2,offsetY+6,0x000000FF)
					gui.drawline(offsetX+1,offsetY,offsetX+1,offsetY+6,0x000000FF)
					
				if memory.readbyte(0x020694C7) ~= 0xFF then
					gui.drawbox(offsetX,offsetY,offsetX+((memory.readbyte(0x020694C7)+1)/2),offsetY+6,0x00C080FF,0x000000FF)
					if memory.readbyte(0x020694C7) > 0 then
						gui.drawtext(offsetX+((memory.readbyte(0x020694C7)+1)/2),offsetY+12,((memory.readbyte(0x020694C7)+1)/2))
					end

				end
				----------------------�팸�l----------------------
			end
			
			--�X�^���l��MAX�ɂ������Ƃ��͂�����g��
			--memory.writebyte(0x02069611,0xFF)
			
			--�g���[�j���O���[�h
			if trainingMode == 1 then
				training()
			end
			
			
			
			--�`�[�g�g�p���̓A�C�R�����\�������
			if gaugeMax == 1 or airComboInf == 1 or longHitStop == 1 or zeroHitStop == 1 then
				--gui.image(284,204,cheat_on)
			end
			
			--�Q�[�WMAX�`�[�g
			if gaugeMax == 1 then
				gauge = memory.readbyte(0x020286AD)
				memory.writebyte(0x02028695,0xFF)
				memory.writebyte(0x020695B5,0xFF)
				
				memory.writebyte(0x020286AB,gauge)
				memory.writebyte(0x020695BF,gauge)
				memory.writebyte(0x020695BD,gauge)
				
				
				gauge2 = memory.readbyte(0x020286E1)
				memory.writebyte(0x020695E1,0xFF)
				
				memory.writebyte(0x020286DF,gauge2)
				memory.writebyte(0x0206940D,gauge2)
				memory.writebyte(0x020695EB,gauge2)
				
				
			end
			
			--�󒆒ǌ����Ԗ����`�[�g
			if airComboInf == 1 then
				memory.writebyte(0x020694C7,0xFF)
			end
			
			
			--�q�b�g�X�g�b�v����`�[�g
			if longHitStop == 1 then
				
				--2P���Z����������
				if memory.readbyte(0x0206914B) > 0x00 then
					hitStopCount = hitStopCount + 1
				end
	
				if hitStopCount == 1 then
					memory.writebyte(0x02069149,0x80)
				end
	
				if memory.readbyte(0x0206914B) == 0x00 then 
					hitStopCount = 0
				end
			end
			
			--�q�b�g�X�g�b�v�[���`�[�g
			if zeroHitStop == 1 then
			
				--2P���Z����������
				if memory.readbyte(0x0206914B) > 0x00 then
					zeroStopCount = zeroStopCount + 1
				end
				
				if zeroStopCount == 1 then
					memory.writebyte(0x02068CB3,0)
					if memory.readbyte(0x02068CB1) > 80 then
						memory.writebyte(0x02068CB1,0xFF)
					else
						memory.writebyte(0x02068CB1,0x00)
					end
					
					if longHitStop ~= 1 then
					
						memory.writebyte(0x0206914B,0x00)
						if memory.readbyte(0x02069149) > 80 then
							memory.writebyte(0x02069149,0xFF)
						elseif memory.readbyte(0x02069149) > 0 then
							memory.writebyte(0x02069149,0x01)
						end
					end
				end
				
				if memory.readbyte(0x02069149) == 0x00 then 
					zeroStopCount = 0
				end
				
			end
			
			if BLView == 1 then
			
				--write(0x02026335,0x0A,1)
				--write(0x02026337,0x0A,1)
				--�u����t���ԕ\��
				BLY = 50
				BLoffsetY = 6
				gui.drawtext(18,BLY-1,"FRONT")
				yokoGauge2(nil, 40, BLY, 40, 4, memory.readbyte(0x02026335), 10, 0, 0x00C0FFFF)
				if memory.readbyte(0x02025731) ~= 0xFF then
					yokoGauge2(nil, 40, BLY+BLoffsetY, 84, 4, memory.readbyte(0x02025731), 21, 0, 0xFF8000FF)
				else
					yokoGauge2(nil, 40, BLY+BLoffsetY, 84, 4, -1, 21, 0, 0xFF800000)
				end
				
				gui.drawtext(14,BLY-1+BLoffsetY*3,"BOTTOM")
				yokoGauge2(nil, 40, BLY+BLoffsetY*3, 40, 4, memory.readbyte(0x02026337), 10, 0, 0x00C0FFFF)
				if memory.readbyte(0x0202574D) ~= 0xFF then
					yokoGauge2(nil, 40, BLY+BLoffsetY*4, 84, 4, memory.readbyte(0x0202574D), 21, 0, 0xFF8000FF)
				else
					yokoGauge2(nil, 40, BLY+BLoffsetY*4, 84, 4, -1, 21, 0, 0xFF800000)
				end
				
				gui.drawtext(26,BLY-1+BLoffsetY*6,"AIR")
				yokoGauge2(nil, 40, BLY+BLoffsetY*6, 28, 4, memory.readbyte(0x02026339), 7, 0, 0x00C0FFFF)
				if memory.readbyte(0x02025769) ~= 0xFF then
					yokoGauge2(nil, 40, BLY+BLoffsetY*7, 72, 4, memory.readbyte(0x02025769), 18, 0, 0xFF8000FF)
				else
					yokoGauge2(nil, 40, BLY+BLoffsetY*7, 72, 4, -1, 18, 0, 0xFF800000)
				end
				
				gui.drawtext(5,BLY-1+BLoffsetY*9,"ANTI-AIR")
				yokoGauge2(nil, 40, BLY+BLoffsetY*9, 20, 4, memory.readbyte(0x02026347), 5, 0, 0x00C0FFFF)
				if memory.readbyte(0x0202582D) ~= 0xFF then
					yokoGauge2(nil, 40, BLY+BLoffsetY*10, 64, 4, memory.readbyte(0x0202582D), 16, 0, 0xFF8000FF)
				else
					yokoGauge2(nil, 40, BLY+BLoffsetY*10, 64, 4, -1, 16, 0, 0xFF800000)
				end
				
			end
			
		end
	
	
	--�������łȂ����
	else
		--�ォ�瓧���ȉ摜�����Ԃ���B
		--��������Ȃ��ƁA�o�[��摜�������Ă���Ȃ��悤���B
		gui.image(0,0,blank2)
	
	end
	
end)