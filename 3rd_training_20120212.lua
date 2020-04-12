-- 3rd_training.lua
-- auther crystal_cube99
	TIME = 0

--[[
更新履歴
2012/02/12(Sun) カプ○ス２風キーディスプレイを改良。２P対応＆時間経過で消えるように。
2012/02/09(Thu) 02/07のキーディスプレイを削除。02/08の仕様に合わせて作りなおす予定。
2012/02/08(Wed) カプ○ス２っぽいキーディスプレイを実装。分岐が面倒臭くてやっぱり１P側だけ。
2012/02/07(Tue) キーディスプレイ２を実装、とりあえず１P側だけ。入力状況をかなり詳細まで表示。
2011/05/16(Mon) BGMの音量を下げられるチート追加。使わない場合はコメントアウト。
2011/05/15(Sun) 2P側のキーディスプレイが、キャラの向きによっては逆になっていたので修正。
2011/04/23      忘れました
2011/03/06(Sun) メモリ内の値が見える機能を再搭載。普段はコメントアウト。
2011/02/19(Sat) レバガチャ練習モードを改良。
2011/02/14(Mon) レバガチャ練習モードを実装。まだ簡易版と言ったところ。コメント増やす予定。
2010/10/04(Mon) スタートボタン２回で２Pスタン値が満タンになるチートを追加。

2010/10/03(Sun) ヒットストップがゼロになるチートを修正。
                ロングヒットストップとゼロヒットストップを両方使えるように修正。
                トレーニングモードを追加。スタートボタン２回で２P体力満タンに。
2010/10/02(Sat) ヒットストップがゼロになるチートを追加。
2010/10/01(Fli) ヒットストップの長くなるチートを追加。
                チートモード中、とりあえずキャラの動きだけは止まるように修正（ヒットストップを応用）。
2010/09/26(Mon) 空中追撃時間無限のチートを追加。
2010/09/25(Sat) drawOriginNum関数の中身を修正
                チートモード搭載。スタートボタン長押しで起動＆終了し、チートを選択してオンオフできる。
                １PのゲージをMAXにするチートを追加。
2010/09/24(Fri) 数値を自作フォントで表示できる関数drawOriginNumを実装。
                隆の電刃波動拳の溜めゲージを可視化。
2010/09/21(Tue) 同じような処理が多かったので、関数を使い回すようにして行数を削減した。
                ２P側にもキーディスプレイ機能を追加。
2010/09/19(Sun) ユリアン、Q、レミー、オロの溜め技の溜め非溜めゲージを可視化。
                追撃可能時間のゲージに目盛りを追加。
2010/09/18(Sat) ヒューゴーの、ムーンサルトプレスとミートスカッシャー及びギガスブリーカーの
                キー入力と回転タイマーを可視化。ギガスは選択時のみ表示する。
                アレックスのハイパーボムのキー入力と回転タイマーも可視化。こちらも選択時のみ。
                追撃可能時間のゲージ付近に数値も表示するようにした。
2010/09/17(Fli) 春麗の、百裂脚の連打回数と連打タイマー、スピバの溜め非溜めゲージを可視化。
                削減値と、追撃可能時間を可視化。
2010/09/15(Wed) アレックスの、スラッシュエルボーとエアスタンピートの溜め非溜めゲージを可視化。
                キーディスプレイ機能を追加。スト４やカプエスの奴とは違う。
]]


--他のluaファイルと連携したいときはこれを使うらしい
--dofile("ファイル名","r")


--画像表示の為に必要な記述っぽい
require "gd"

--画像を読み込んでおく
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

--数字フォントその０
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

--キーディスプレイ２のレバー
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



--入力の向きを表す変数
local input_dir

--前の入力から経過したフレームを表す変数
local reba_flame_from_before_input1P = 0
local button_flame_from_before_input1P = 0
local reba_flame_from_before_input2P = 0
local button_flame_from_before_input2P = 0

--
before_time_in_game1P = 1234
before_time_in_game2P = 1234
time_in_game1P = 5678
time_in_game2P = 5678


--レバーの入力状態を表す変数
local input_up, input_down, input_right, input_left

--ボタンの入力状態を表す変数
local input_lp, input_mp, input_hp, input_lk, input_mk, input_hk
--1フレーム前の入力を保存しておく変数
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
--レバーの画像ファイル名に使う変数
local reba_num

--スタートボタンが何秒押されたか
startButton = 0

--チートセレクト画面かどうか
cheatModeNum = 0

--各々のチートフラグ。初期のオンオフはここで切り替えましょう
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

--チートメニュー項目
menu = {
	{inputView_off,		trainingMode_off,	0},
	{tameView_off,		stunMax_off,		gaugeMax_off},
	{rendaView_off,		0,					airComboInf_off},
	{kaitenView_off,	0,					longHitStop_off},
	{denjinView_off,	0,					zeroHitStop_off},
	{BLView_off,		0,					0},
	{airTimerView_off,	0,					0}
}

--チートの説明
cheatText = {
	{inputView_text,	trainingMode_text,	0},
	{tameView_text,		stunMax_text,		gaugeMax_text},
	{rendaView_text,	0,					airComboInf_text},
	{kaitenView_text,	0,					longHitStop_text},
	{denjinView_text,	0,					zeroHitStop_text},
	{BLView_text,		0,					0},
	{airTimerView_text,	0,					0}
}

--チートモードのカーソル
cursorX = 1
cursorY = 1

--各ボタンを押している時間の長さ
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

--そのフレームでのレバガチャ値（無入力のときに毎フレーム１減る為、初期値を１にしている）
gachaValue1 = 1
gachaValue2 = 1
gachaValue3 = 1
gachaValue4 = 1

--過去31フレームのレバガチャ値。
--１Fあたりの平均レバガチャ値をとる為に使う
previousGachaValue1s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
previousGachaValue2s = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
previousGachaValue3s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
previousGachaValue4s = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}


--トレーニングモードのチートに使うカウンターとか
trainingModeCount = 0
maxDamagevalue = 0
maxCombovalue = 0


--ヒットストップのチートに使うカウンター
hitStopCount = 0
zeroStopCount = 0


--キーディスプレイ２の入力履歴入れ
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

--キーディスプレイ２の無入力時間
no_input_time1P = 0
no_input_time2P = 0
no_input_limit = 3000

--そのボタンが押されていると、カウントを１増やして返すだけの関数
function buttonCount(button, count)
	if button == 1 then
		count = count + 1
	else
		count = 0
	end
	return count
end

--カーソルの位置に応じてチートをオンオフしつつチート状態を返す関数
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



--レバガチャ練習の処理をする関数
function gachaTrainingMode()
	--網みたいな画像を表示
	gui.image(0,0,blank3)
	
	--現在の入力状態を、1個1個の変数に分ける
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
	
	--画像を表示するときとかの基準座標をセット
	offsetX = 40
	offsetY = 80
	
	--各ボタンのカウンター。押し続けていると増え、離すと０になる。
	--つまり、カウンターが１の時が＝ボタンを押した時という事になる。
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
	
	
	--そのフレームでのレバガチャ値。
	--もともとピヨりタイマーや電刃タイマーは毎フレーム１減っているので、デフォで１にしている。
	gachaValue1 = 1
	gachaValue2 = 0
	gachaValue3 = 1
	gachaValue4 = 1
	
	--過去３１フレームのレバガチャ値合計。
	--平均値を出すために使う。
	sumGachaValue1 = 0
	sumGachaValue2 = 0
	sumGachaValue3 = 0
	sumGachaValue4 = 0
	
	--レバー上が押されたら、レバガチャ値を増やす
	--電刃のみ、同時方向入力時の処理を行う。
	if up_count == 1 then
		gachaValue1 = gachaValue1 + 2
		gachaValue2 = gachaValue2 + 4
		
		--横方向も同時に入力したときは増加量３、単体のときは２。
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
		
		--単体で入力されたときのみ増加量２。
		--同時入力時の処理は上の方でやっているので、もうやらない
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
	
	
	--パンチボタンが押されたら、レバガチャ値を増やす
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
	
	--小キックが単体で押されたとき
	if lk_count == 1 then
		
		--他のキックと同時に押されたとき
		if mk_count == 1 or hk_count == 1 then
			gachaValue1 = gachaValue1 + 1
			gachaValue3 = gachaValue3 + 1
		end	
		
		gachaValue2 = gachaValue2 + 1
	
	else
		--小キックが押されておらず、他のキックが２つ同時に押されたとき
		if mk_count == 1 and hk_count == 1 then
			gachaValue1 = gachaValue1 + 1
			gachaValue3 = gachaValue3 + 1
		end	
	end
	
	--中キックが単体で押されたとき
	if mk_count == 1 then
		if lk_count ~=1 and hk_count ~= 1 then
			gachaValue2 = gachaValue2 + 1
		end
	end
	
	--強キックが単体で押されたとき
	if hk_count == 1 then
		if lk_count ~=1 and mk_count ~= 1 then
			gachaValue2 = gachaValue2 + 1
		end
	end
	
	
	
	
	--過去のレバガチャ値の総和を出す。
	for i=1,31,1 do
		sumGachaValue1 = sumGachaValue1 + previousGachaValue1s[i]
		sumGachaValue2 = sumGachaValue2 + previousGachaValue2s[i]
		sumGachaValue3 = sumGachaValue3 + previousGachaValue3s[i]
	end
	
	--最後に、現在のレバガチャ値を足す。
	sumGachaValue1 = sumGachaValue1 + gachaValue1
	sumGachaValue2 = sumGachaValue2 + gachaValue2
	sumGachaValue3 = sumGachaValue3 + gachaValue3

	--パンチボタンが１つも押しっぱなしでなかったら、電刃は無効
	if lp_count <= 1 and mp_count <= 1 and hp_count <= 1 then
		sumGachaValue3 = 32
		for i=1,31,1 do
			previousGachaValue3s[i] = 1
		end
		gachaValue3 = 1
	end


	--レバガチャ値に応じてゲージを表示する。
	tateGauge(alex_1,80,160,16,120,(sumGachaValue1/32)-1,2,1,0xFFFF00FF)
	tateGauge(alex_1,160,160,16,120,(sumGachaValue2/32),4,0,0xFF4444FF)
	tateGauge(alex_1,240,160,16,120,(sumGachaValue3/32)-1,2,1,0x00FFFFFF)
			
	--レバガチャ値１が１より大きい（無入力でない）ときは、レバガチャ値を表示
	if gachaValue1 > 1 then
		drawOriginNum(nums0, 80-4, 20, gachaValue1, 2, 10)
	end
	
	if gachaValue2 > 0 then
		drawOriginNum(nums0, 160-4, 20, gachaValue2, 2, 10)
	end
	
	if gachaValue3 > 1 then
		drawOriginNum(nums0, 240-4, 20, gachaValue3, 2, 10)
	end

	--過去のレバガチャ値を格納している配列の中身を後ろに１個ずらし、
	--現在のレバガチャ値を先頭に格納する。
	for i=31,2,-1 do
		previousGachaValue1s[i] = previousGachaValue1s[i-1]
		previousGachaValue2s[i] = previousGachaValue2s[i-1]
		previousGachaValue3s[i] = previousGachaValue3s[i-1]
	end
		previousGachaValue1s[1] = gachaValue1
		previousGachaValue2s[1] = gachaValue2
		previousGachaValue3s[1] = gachaValue3
end


--チートモードの処理をする関数
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
	
	--カーソルの位置に応じて、チート項目を赤で囲む
	gui.drawbox(offsetX-2+108*(cursorX-1),offsetY-2+24*(cursorY-1),offsetX+100+1+108*(cursorX-1),offsetY+20+1+24*(cursorY-1),0xFF0000FF,0xFF0000FF)

	--チート項目画像をすべて表示する
	--配列名の前に#がつくと、配列の要素数という意味になる。
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
	
	--インプットチェック
	up_count = buttonCount(input_up, up_count)
	down_count = buttonCount(input_down, down_count)
	right_count = buttonCount(input_right, right_count)
	left_count = buttonCount(input_left, left_count)
	if input_lp == 1 or input_mp == 1 or input_hp == 1 or input_lk == 1 or input_mk == 1 or input_hk == 1 then
		button_count = button_count + 1
	else
		button_count = 0
	end
	
	--上を押したらor押しっぱなしだったら
	if up_count == 1 or (up_count >= 20 and up_count % 6 == 0) then
	
		--カーソルを上に移動
		cursorY = cursorY - 1
		--一番上を越えたら一番下に移動
		if cursorY == 0 then
			cursorY = #menu
		end
		
		--移動先に項目が存在しなければ
		while menu[cursorY][cursorX] == 0 do
			--更に一つ先へ移動する
			cursorY = cursorY - 1
			
			--一番上を越えたら一番下に移動
			if cursorY == 0 then
				cursorY = #menu
			end
		end	
	end
	
	--下を押したらor押しっぱなしだったら
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
	
	--右を押したらor押しっぱなしだったら
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
	
	--左を押したらor押しっぱなしだったら
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







--********数値valueの、bitnum番目のビットを返す関数********
--@param value	調べたい変数
--@param bitnum	何番目を調べたいか（最下位桁は0）
function bitReturn(value,bitnum)
	re = value
	
	--bitnumより上位桁を切り捨てる
	re = SHIFT(re,bitnum-31)

	--bitnumより下位桁を切り捨てる
	re = SHIFT(re,31)
	
	return re
end

--********溜め非溜めゲージを表示する関数********
--@param image			ゲージの左に表示する画像（技名アイコン）
--@param x				初期x座標
--@param y				初期y座標
--@param address_tame	溜めフレームを管理しているアドレス
--@param address_timer	非溜めフレームを管理しているアドレス
function tameGauge(image, x, y, address_tame, address_timer)

	--画像を表示（x座標, y座標, 画像の入った変数名）。
	gui.image(4,y-3,image)

	--分岐：溜めフレームがFFでなければ
	if memory.readbyte(address_tame) ~= 0xFF then
		
		--四角形を表示（始点のx座標, 始点のy座標, 終点のx座標, 終点のy座標, 中身の色, 枠の色）。
		--色は左から２桁ずつ「赤」「緑」「青」「不透明度」。
		--不透明度を00かFF以外にすると、動作が極端に重くなるので注意。
		--中身を黒の透明、枠を黒の不透明にしているので、この四角はバーの枠部分。
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
		
		--四角形を表示。
		--中身を水色の不透明、枠を黒の透明にしているので、この四角はバーの中身部分。
		gui.drawbox(x,y,x+(memory.readbyte(address_tame)*2),y+6,0x0080FFFF,0x000000FF)
		
	--溜めフレームがFFであれば
	else
		--白い枠だけ表示する。
		gui.drawbox(x,y,x+84,y+6,0x00000000,0xFFFFFFFF)
		
	end
	
	--次は非溜めフレームの分も描画したいので、縦座標を8ドットずらす
	y = y + 8

	--分岐：非溜めフレームがFFでなければ
	if memory.readbyte(address_timer) ~= 0xFF then
		
		--四角形を表示。
		--中身を黒の透明、枠を黒の不透明にしているので、この四角はバーの枠部分。
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
		
		--四角形を表示。
		--中身をオレンジ色の不透明、枠を黒の透明にしているので、この四角はバーの中身部分。
		gui.drawbox(x,y,x+(memory.readbyte(address_timer)*2),y+6,0xFF8000FF,0x000000FF)
		
	--エルボーの非溜めフレームがFFであれば
	else
		--白い枠だけ表示する。
		gui.drawbox(x,y,x+84,y+6,0x00000000,0x000000FF)
	end
end



--********縦型のゲージを表示する関数********
--@param image			ゲージの近くに表示する画像
--@param x				初期x座標
--@param y				初期y座標
--@param xLen			x長さ
--@param yLen			y長さ
--@param value			値
--@param maxValue		最大値
--@param offset			値のズレ
--@param color			色（赤、緑、青、不透明度）
function tateGauge(image, x, y, xLen, yLen, value, maxValue, offset, color)

		gui.drawbox(x-1,y+1,x+xLen+1,y-yLen-1,0x00000000,0xFFFFFFFF)
		gui.drawbox(x,y,x+xLen,y-yLen,0x00000000,0x000000FF)
		
		gui.drawbox(x,y,x+xLen,y-(yLen*(value/maxValue)),color,0x00000000)
		gui.drawtext(x+xLen+4,y-(yLen*(value/maxValue)),value+offset)
	
end


--********横型のゲージを表示する関数********
--@param image			ゲージの近くに表示する画像
--@param x				初期x座標
--@param y				初期y座標
--@param xLen			x長さ
--@param yLen			y長さ
--@param value			値
--@param maxValue		最大値
--@param offset			値のズレ
--@param color			色（赤、緑、青、不透明度）
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

--********レバー一回転技の矢印とタイマーを表示する関数********
--@param image			技名アイコンの画像
--@param x				初期x座標
--@param y				初期y座標
--@param address_juji	レバー入力を管理しているアドレス
--@param address_timer	タイマーを管理しているアドレス
function kaiten(image, x, y, address_juji, address_timer)
	gui.image(4,y-3,image)

	juji_up = bitReturn(memory.readbyte(address_juji),0)
	juji_down = bitReturn(memory.readbyte(address_juji),1)
	juji_right = bitReturn(memory.readbyte(address_juji),2)
	juji_left = bitReturn(memory.readbyte(address_juji),3)
	
	--上方向が入力済みであれば
	if juji_up == 1 then
		gui.image(x+48,y-12,arrow_up3)
	else
		gui.image(x+48,y-12,arrow_up1)
	end
	
	--下方向が入力済みであれば
	if juji_down == 1 then
		gui.image(x+24,y-12,arrow_down3)
	else
		gui.image(x+24,y-12,arrow_down1)
	end
	
	--右方向が入力済みであれば
	if juji_right == 1 then
		gui.image(x+72,y-12,arrow_right3)
	else
		gui.image(x+72,y-12,arrow_right1)
	end
	
	--左方向が入力済みであれば
	if juji_left == 1 then
		gui.image(x,y-12,arrow_left3)
	else
		gui.image(x,y-12,arrow_left1)
	end
	
	gui.drawbox(x,y+12,x+96,y+18,0x00000000,0x000000FF)
	gui.drawbox(x,y+12,x+(memory.readbyte(address_timer)*3),y+18,0x00C080FF,0x000000FF)
end


--********百裂脚のボタンアイコンを表示する関数********
--@param image			技名アイコンの画像
--@param image_button1	押されたときのボタンアイコン
--@param image_button2	押されていないときのボタンアイコン
--@param x				初期x座標
--@param y				初期y座標
--@param address_count	ボタンを押した回数を管理しているアドレス
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



--*******キーディスプレイその１*******
function keyDisplay(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, buttonAddress,startAddress)
	--入力の内容を、それぞれの変数に分けてわかりやすくする
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
	
	--入力状態によって、表示する画像番号を決定する
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
	
	--画像の読み込みと表示を同時に行っている
	reba = gd.createFromPng("resources/command/reba"..reba_num..".png"):gdStr()
	
	gui.image(x, y, reba)
	
	x = x + 24
	
	--入力に応じてボタンを光らせる
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





--*******キーディスプレイその２の２*******
function keyDisplay2_2(image_l1, image_l2, image_m1, image_m2, image_h1, image_h2, image_s1, image_s2, x, y, player)
	dispNumber=16
	offsetX1P2P = 270
	
	if player == 1 then
	--ゲーム内時間のようなもの
		before_time_in_game1P = time_in_game1P
		time_in_game1P = memory.readbyte(0x020157CF)
	
		--ゲーム内で時間が経っていたら、入力履歴を更新したい
		if before_time_in_game1P ~= time_in_game1P then
			reba_flame_from_before_input1P = reba_flame_from_before_input1P+1
			button_flame_from_before_input1P = button_flame_from_before_input1P+1
			
			buttonAddress = 0x0202564B
			startAddress = 0x0206AA8C
			dirAddress = 0x2068C77
			
			--キャラの向き
			direction1P = memory.readbyte(dirAddress)
			
			--入力の内容を、それぞれの変数に分けてわかりやすくしておく
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
			
			--現在の状態や入力を一時的に格納しておくための箱
			input_temp = {0,0,"",0}
			input_temp[1] = reba_flame_from_before_input1P
			input_temp[4] = button_flame_from_before_input1P
			input_temp[2] = direction1P
			input_temp[3] = reba1P..input_lp..input_mp..input_hp..input_lk..input_mk..input_hk
			
			--何かが入力されたら、配列を１個ずらす
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
				
				--レバーの入力がされていたら
				if (reba1P ~= before_reba1P and reba1P ~= 5) then
					reba_flame_from_before_input1P = 0
				end
				--ボタンの入力がされていたら
				if input_lp1P > before_input_lp1P
				or input_mp1P > before_input_mp1P
				or input_hp1P > before_input_hp1P
				or input_lk1P > before_input_lk1P
				or input_mk1P > before_input_mk1P
				or input_hk1P > before_input_hk1P then
					button_flame_from_before_input1P = 0
				end
				
				--配列の１個目に、現在の入力を格納する
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
				--何も入力されていなければ、無入力時間を増やす
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
	
	
		--頑張って描画
		offsetY=46
	
		if direction1P == 0 then
			gui.image(42,36,keyDisp2_dir0_real)
		else
			gui.image(42,36,keyDisp2_dir1_real)
		end
		for i = 1, dispNumber-1, 1 do
			reba1P = string.sub(keyDisplay2_box1P[i][3],1,1)+0
			--入力履歴があったら
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
	--ゲーム内時間のようなもの
		before_time_in_game2P = time_in_game2P
		time_in_game2P = memory.readbyte(0x020157CF)
	
		--ゲーム内で時間が経っていたら、入力履歴を更新したい
		if before_time_in_game2P ~= time_in_game2P then
			reba_flame_from_before_input2P = reba_flame_from_before_input2P+1
			button_flame_from_before_input2P = button_flame_from_before_input2P+1
			
			buttonAddress = 0x0202568F
			startAddress = 0x0206AA90
			dirAddress = 0x0206910F
			
			--キャラの向き
			direction2P = memory.readbyte(dirAddress)
			
			--入力の内容を、それぞれの変数に分けてわかりやすくしておく
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
			
			--現在の状態や入力を一時的に格納しておくための箱
			input_temp = {0,0,"",0}
			input_temp[1] = reba_flame_from_before_input2P
			input_temp[4] = button_flame_from_before_input2P
			input_temp[2] = direction2P
			input_temp[3] = reba2P..input_lp..input_mp..input_hp..input_lk..input_mk..input_hk
			
			--何かが入力されたら、配列を１個ずらす
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
				
				--レバーの入力がされていたら
				if (reba2P ~= before_reba2P and reba2P ~= 5) then
					reba_flame_from_before_input2P = 0
				end
				--ボタンの入力がされていたら
				if input_lp2P > before_input_lp2P
				or input_mp2P > before_input_mp2P
				or input_hp2P > before_input_hp2P
				or input_lk2P > before_input_lk2P
				or input_mk2P > before_input_mk2P
				or input_hk2P > before_input_hk2P then
					button_flame_from_before_input2P = 0
				end
				
				--配列の１個目に、現在の入力を格納する
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
				--何も入力されていなければ、無入力時間を増やす
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
	
	
		--頑張って描画
		offsetY=46
	
		if direction2P == 0 then
			gui.image(42+offsetX1P2P,36,keyDisp2_dir0_real)
		else
			gui.image(42+offsetX1P2P,36,keyDisp2_dir1_real)
		end
		for i = 1, dispNumber-1, 1 do
			reba2P = string.sub(keyDisplay2_box2P[i][3],1,1)+0
			--入力履歴があったら
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





--数字を入れると、指定した桁で右寄せにしてくれる
function numSpaceLeft(val,keta)
	temp=""
	for i = 1, keta-#(val..""), 1 do
		temp = temp.." "
	end
	temp = temp..val
	return temp
end







--********指定したアドレスの数値を自作フォントで表示する関数********
--@param nums	数字の入った配列名
--@param x			x座標
--@param y			y座標
--@param value		数値
--@param keta		桁数。余った場合は０が付加される。
--@param offsetX	数字と数字との横の間隔。
function drawOriginNum(nums, x, y, value, keta, offsetX)

	for i = keta, 1, -1 do

		--まず、調べたい桁以外の桁を０にする
		num_pinpoint = ((value%(10^i))-(value%10^(i-1)))

		--そして一桁にする
		num_hitoketa = num_pinpoint / (10^(i-1))
	
		--テーブルは配列と違って要素の番号が１からなので、１足す
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
--10新数を16新数に変換してくれる関数。
--hitboxのluaから拝借。
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





--好きなバイト分書きこんでくれる関数
function write(addr,num,byte)
	for i=1,byte,1 do
		memory.writebyte(addr,num)
		addr = addr + 1
		num = ((num-(num%0x100)) / 0x100)
	end
end

--好きなバイト分逆向きに書き込んでくれる関数
function writeReverse(addr,num,byte)
	for i=1,byte,1 do
			memory.writebyte(addr,(num % 0x100))
		addr = addr - 1
		num = ((num-(num%0x100)) / 0x100)
	end
end

--好きなバイト分読みこんでくれる関数
function read(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = (value + memory.readbyte(addr+i-1)) * 0x100
	end
	return value / 0x100
end

--好きなバイト分逆向きに読み込んでくれる関数
function readReverse(addr,byte)
	value = 0
	for i=1,byte,1 do
		value = value + (memory.readbyte(addr-(i-1)) * (0x100^(i-1)))
	end
	return value
end

--メモリ内の値をリアルタイム見たいときに使う。
--アドレス部分に、見たいアドレスの値を入力すると、その周辺の値が見える。
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

--位置座標を数値で表示してくれる。
function viewPosition()
		--1Pの座標を16進数で表示
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
		
		
		
		--1Pの速度を16進数で表示
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
		
		
		
		
		
		
		--2Pの座標を16進数で表示
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
		
		
		--2Pの速度を16進数で表示
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
		
		
		
		
		
		
		
		
		--差分のx座標を16進数で表示
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
	--ここにフレーム処理の直前に実行させたい処理を書いてください
	--************************************************************
	--************************************************************
	--************************************************************
	
	--時間を止めておかしくする
	--memory.writebyte(0x020691A3,0xA0)
	--writeReverse(0x2068AB7,0x1080,0x02)
	--writeReverse(0x2068AB9,0x1080,0x02)
	--writeReverse(0x2068ABB,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--writeReverse(0x2068ABD,0x1080,0x02)
	--memory.writebyte(0x02011377,0x64)
	
	
	
	--memory.writebyte(0x20695BF,0x04)
	
	--モーション関係…。ダウン追い打ちの調査に使った。
	--writeReverse(0x02068D1B,0x030005,0x03)
	--writeReverse(0x02068C95,0x010014,0x03)
	--viewMemory(0x02068C00)
		
--アレックスのスリーパーホールドで即死させるチート
--memory.writebyte(0x02068D27,0x10)
--memory.writebyte(0x02068DED,0x3B)
--memory.writebyte(0x02069285,0x00)

		--write(0x20259E7,0x01,1)--阿修羅の第一コマンド
		--write(0x2025A1F,0x01,1)--昇竜の第一コマンド
		--write(0x2025AAB,0x01,1)--百鬼襲の第一コマンド
		
		--viewMemory(0x02025A00)
		--write(0x2069547,0x10,1)
		--write(0x202635F,0x10,1)
		--viewMemory(0x02015400)
		--ジャッジメーント
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
		
		--SA演出時モードにしておく。こうしないと画面位置が固定できない
		--write(0x2026BD0,0x111101,0x03)
		--SA演出時の画面の移動具合
		--write(0x200DCD2,0x0000,2)
		
		--画面ズーム
		--write(0x200DCBB,0x40,0x01)
		--カメラ位置変更
		--write(0x200DCD2,00000000,0x04)
		--writeReverse(0x200DCD5,0x00,0x02)


	--2Pが常に屈食らいに
	--memory.writebyte(0x02069312,0x10)


	--停止時間を表示
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
	
	
	
	--ピヨり時のレバガチャ測定モード
	if startButton == 1 then
		writeReverse(0x20695F9,149,2)
		TIME = 0
	end
	
	if readReverse(0x20695F9,2) > 0 then
		writeReverse(0x020695F9,readReverse(0x20695F9,2),2)
	end
	--drawOriginNum(nums0, 10, 40, readReverse(0x20695F9,2), 4, 10)
	
	--残りのピヨリタイマーを表示
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
	
	--ピヨリ復帰までにかかった時間を表示
	--drawOriginNum(nums0, 10, 60, TIME, 4, 10)
	
	
	
	--BGM音量
	memory.writebyte(0x02078D06,0x00)
		
	--常にブロッキング可能
	--地上前
	--memory.writebyte(0x02026335,0x0A)
	--地上下
	--memory.writebyte(0x02026337,0x0A)
	--空中
	--memory.writebyte(0x02026339,0x07)
	--対空
	--memory.writebyte(0x02026347,0x05)
	
	--1Pの体の向き
	--memory.writebyte(0x02068C76,0x01)
	--2Pの体の向き
	--memory.writebyte(0x0206910E,0x00)
	
	
	--ギルを使いたい場合はこれを00にして書く
	--memory.writebyte(0x02011387,0x00)
	--memory.writebyte(0x02011388,0x00)
	
	--ステージをエレナステージにしたいときはこれを書く
	--memory.writebyte(0x020154F5,0x08)
	
	--体力を160固定にしたいときはこれを書く
	--memory.writebyte(0x020691A3,0xA0)
	
	
	
	--分岐：試合中だった場合
	if memory.readbyte(0x020154A7) == 1 or  memory.readbyte(0x020154A7) == 2 or  memory.readbyte(0x020154A7) == 6 
	or memory.readbyte(0x020154A7) == 3 or  memory.readbyte(0x020154A7) == 7 or  memory.readbyte(0x020154A7) == 8 then
		
		
			--スタートボタンが押されていたら
		if memory.readbyte(0x206AA8C) == 16 then
		
			--削減値を０に	
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
			
		--スタートボタンが30F間押されたら
		if startButton == 30 then
			--チートモードが0のときは1に、0以上のときは0にする
			if cheatModeNum == 0 then
				cheatModeNum = 1
			elseif cheatModeNum >= 1 then
				cheatModeNum = 0
				startButton = 0
			end
			print("cheatModeNum = "..cheatModeNum)
		elseif  startButton == 60 then
			--チートモードを2にする
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
			
				
				--キーディスプレイその１（１P側）
				keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 0x206AA8D, 0x206AA8C)
				
				--キーディスプレイその２ カプ○ス風（１P側）
				keyDisplay2_2(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 1)
				
				
				--キーディスプレイその１（２P側）
				keyDisplay(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 280, 184, 0x0202568F, 0x0206AA90)
				--キーディスプレイその２ カプ○ス風（２P側）
				keyDisplay2_2(button_l1, button_l2, button_m1, button_m2, button_h1, button_h2, button_s1, button_s2, 40, 184, 2)

			end
			
			
			
			
			--分岐：使用キャラがギルだったら
			if memory.readbyte(0x2011387) == 0x00 then
			
				--ここに処理を記述する
			
			
			end


			--分岐：使用キャラがアレックスだったら
			if memory.readbyte(0x2011387) == 0x01 then

				--ゲージや画像を表示するための座標
				offsetX = 30
				offsetY = 50
			
				if tameView == 1 then
				
					--スラッシュエルボー
					tameGauge(alex_1, offsetX, offsetY, 0x02025A49, 0x02025A47)
				
					offsetY = offsetY + 28
					
					--エアスタンピート
					tameGauge(alex_2, offsetX, offsetY, 0x02025A2D, 0x02025A2B)
					
					offsetY = offsetY + 28
					
				end
				----------------------ハイパーボム----------------------
				
				if kaitenView == 1 then
					--ハイパーボムを選択していたら
					if memory.readbyte(0x020154D3) == 0 then
						
						kaiten(alex_3, offsetX, offsetY, 0x0202590F, 0x020258F7)
					end
				end
				
			end
			
			--分岐：使用キャラが隆だったら
			if memory.readbyte(0x2011387) == 0x02 then

				offsetX = 30
				offsetY = 50
				
				if denjinView == 1 then
				
					--電刃波動拳を選択していたら
					if memory.readbyte(0x020154D3) == 2 then
					
						gui.image(4,offsetY,ryu_1)
						
						drawOriginNum(nums0,offsetX,offsetY,memory.readbyte(0x02068D27),2,10)
						
						offsetX = offsetX + 3
						offsetY = offsetY + 16
						
						gui.drawbox(offsetX,offsetY,offsetX+16,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+48,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+96,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+160,offsetY+6,0x00000000,0x000000FF)
						
						--電刃のレベルに応じて値が変わる変数
						--							↓
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
							--電刃の溜めを時間で減らないようにするときはこれを使う
							--memory.writebyte(0x02068D27,memory.readbyte(0x02068D27)+1)
						end
					end
				end
			end
			
			--分岐：使用キャラがユンだったら
			if memory.readbyte(0x2011387) == 0x03 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがダッドリーだったら
			if memory.readbyte(0x2011387) == 0x04 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがネクロだったら
			if memory.readbyte(0x2011387) == 0x05 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがヒューゴーだったら
			if memory.readbyte(0x2011387) == 0x06 then
			
				offsetX = 30
				offsetY = 50
				
				if kaitenView == 1 then
				
					--ムーンサルトプレス
					kaiten(hugo_1, offsetX, offsetY, 0x020259EF, 0x020259D7)
					
					offsetY = offsetY + 30
					
					--ミートスカッシャー
					kaiten(hugo_2, offsetX, offsetY, 0x02025A0B, 0x020259F3)
					
					offsetY = offsetY + 30
					
					----------------------ギガスブリーカー----------------------
					--ギガスブリーカーを選択していたら
					if memory.readbyte(0x020154D3) == 0 then
						
						gui.image(4,offsetY-3,hugo_3)
						
						juji_up = bitReturn(memory.readbyte(0x0202590F),0);
						juji_down = bitReturn(memory.readbyte(0x0202590F),1);
						juji_right = bitReturn(memory.readbyte(0x0202590F),2);
						juji_left = bitReturn(memory.readbyte(0x0202590F),3);
						
						--１回転目であれば
						if memory.readbyte(0x020258FF) == 48 then
							
							--上方向が入力済みであれば
							if juji_up == 1 then
								gui.image(offsetX+48,offsetY-12,arrow_up3)
							else
								gui.image(offsetX+48,offsetY-12,arrow_up1)
							end
							
							--下方向が入力済みであれば
							if juji_down == 1 then
								gui.image(offsetX+24,offsetY-12,arrow_down3)
							else
								gui.image(offsetX+24,offsetY-12,arrow_down1)
							end
							
							--右方向が入力済みであれば
							if juji_right == 1 then
								gui.image(offsetX+72,offsetY-12,arrow_right3)
							else
								gui.image(offsetX+72,offsetY-12,arrow_right1)
							end
							
							--左方向が入力済みであれば
							if juji_left == 1 then
								gui.image(offsetX,offsetY-12,arrow_left3)
							else
								gui.image(offsetX,offsetY-12,arrow_left1)
							end

						else
										--上方向が入力済みであれば
							if juji_up == 1 then
								gui.image(offsetX+48,offsetY-12,arrow_up2)
							else
								gui.image(offsetX+48,offsetY-12,arrow_up3)
							end
							
							--下方向が入力済みであれば
							if juji_down == 1 then
								gui.image(offsetX+24,offsetY-12,arrow_down2)
							else
								gui.image(offsetX+24,offsetY-12,arrow_down3)
							end
							
							--右方向が入力済みであれば
							if juji_right == 1 then
								gui.image(offsetX+72,offsetY-12,arrow_right2)
							else
								gui.image(offsetX+72,offsetY-12,arrow_right3)
							end
							
							--左方向が入力済みであれば
							if juji_left == 1 then
								gui.image(offsetX,offsetY-12,arrow_left2)
							else
								gui.image(offsetX,offsetY-12,arrow_left3)
							end
						end	
						
						gui.drawbox(offsetX,offsetY+12,offsetX+96,offsetY+18,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY+12,offsetX+(memory.readbyte(0x020258F7)*3),offsetY+18,0x00C080FF,0x000000FF)

						
					end
					----------------------ギガスブリーカー----------------------
				end
			end
			
			--分岐：使用キャラがいぶきだったら
			if memory.readbyte(0x2011387) == 0x07 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがエレナだったら
			if memory.readbyte(0x2011387) == 0x08 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがオロだったら
			if memory.readbyte(0x2011387) == 0x09 then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
					--日輪掌
					tameGauge(oro_1, offsetX, offsetY, 0x02025A11, 0x02025A0F)
					
					offsetY = offsetY + 28
					
					--鬼ヤンマ
					tameGauge(oro_2, offsetX, offsetY, 0x020259D9, 0x020259D7)
				end
			end
			
			--分岐：使用キャラがヤンだったら
			if memory.readbyte(0x2011387) == 0x0A then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラが拳だったら
			if memory.readbyte(0x2011387) == 0x0B then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがショーンだったら
			if memory.readbyte(0x2011387) == 0x0C then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがユリアンだったら
			if memory.readbyte(0x2011387) == 0x0D then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
					
					--チャリオットタックル
					tameGauge(urien_1, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
					offsetY = offsetY + 28
					
					--バイオレンスニードロップ
					tameGauge(urien_2, offsetX, offsetY, 0x02025A2D, 0x02025A2B)
					
					offsetY = offsetY + 28
					
					--デンジャラスヘッドバット
					tameGauge(urien_3, offsetX, offsetY, 0x020259F5, 0x020259F3)
					
				end
			end
			
			--分岐：使用キャラが豪鬼だったら
			if memory.readbyte(0x2011387) == 0x0E then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラが真豪鬼だったら
			if memory.readbyte(0x2011387) == 0x0F then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラが春麗だったら
			if memory.readbyte(0x2011387) == 0x10 then
			
				--ゲージや画像を表示するための座標
				offsetX = 30
				offsetY = 50
				
				if rendaView == 1 then
					
					--弱百裂脚
					hyakuretsu(chun_1, kick_1, kick_1_2, offsetX, offsetY, 0x02025A03)
					
					offsetY = offsetY + 28
					
					----------------------中百裂脚----------------------
					hyakuretsu(chun_2, kick_2, kick_2_2, offsetX, offsetY, 0x02025A05)
					
					offsetY = offsetY + 28
					
					----------------------強百裂脚----------------------
					hyakuretsu(chun_3, kick_3, kick_3_2, offsetX, offsetY, 0x02025A07)
					
					offsetY = offsetY + 28
					
					
					----------------------連打タイマー----------------------
					if memory.readbyte(0x02025A2D) ~= 0xFF then
						gui.drawbox(offsetX,offsetY,offsetX+98,offsetY+6,0x00000000,0x000000FF)
						gui.drawbox(offsetX,offsetY,offsetX+(memory.readbyte(0x020259f3)),offsetY+6,0xFF8080FF,0x000000FF)
					else
						gui.drawbox(offsetX,offsetY,offsetX+98,offsetY+6,0x00000000,0xFFFFFFFF)
					end
					----------------------連打タイマー----------------------
					
				offsetY = offsetY + 28
				
				end
				
				if tameView == 1 then
				
					--スピニングバードキック
					tameGauge(chun_4, offsetX, offsetY, 0x020259D9, 0x020259D7)
			
				end
			
			end
			
			--分岐：使用キャラがまことだったら
			if memory.readbyte(0x2011387) == 0x11 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがQだったら
			if memory.readbyte(0x2011387) == 0x12 then
			
				offsetX = 30
				offsetY = 50
				
				if tameView == 1 then
				
					--突進頭部打撃（仮）
					tameGauge(q_1, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
					offsetY = offsetY + 28
					
					--突進下肢打撃（仮）
					tameGauge(q_2, offsetX, offsetY, 0x020259F5, 0x020259F3)
				
				end
			
			end
			
			--分岐：使用キャラがトゥエルヴだったら
			if memory.readbyte(0x2011387) == 0x13 then
			
				--ここに処理を記述する
			
			
			end
			
			--分岐：使用キャラがレミーだったら
			if memory.readbyte(0x2011387) == 0x14 then
			
				offsetX = 30
				offsetY = 50
							
				if tameView == 1 then
					
					--ヴェルテュの残光・オット
					tameGauge(remy_1, offsetX, offsetY, 0x020259F5, 0x020259F3)
					
					offsetY = offsetY + 28
					
					--ヴェルテュの残光・バス
					tameGauge(remy_2, offsetX, offsetY, 0x02025A11, 0x02025A0F)
					
					offsetY = offsetY + 28
					
					--マ・シェリの悲哀
					tameGauge(remy_3, offsetX, offsetY, 0x020259D9, 0x020259D7)
					
				end
				
			end
			
			----------------------削減値----------------------
			
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
				----------------------削減値----------------------
			end
			
			--スタン値をMAXにしたいときはこれを使う
			--memory.writebyte(0x02069611,0xFF)
			
			--トレーニングモード
			if trainingMode == 1 then
				training()
			end
			
			
			
			--チート使用時はアイコンが表示される
			if gaugeMax == 1 or airComboInf == 1 or longHitStop == 1 or zeroHitStop == 1 then
				--gui.image(284,204,cheat_on)
			end
			
			--ゲージMAXチート
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
			
			--空中追撃時間無限チート
			if airComboInf == 1 then
				memory.writebyte(0x020694C7,0xFF)
			end
			
			
			--ヒットストップ増大チート
			if longHitStop == 1 then
				
				--2Pが技を喰らったら
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
			
			--ヒットストップゼロチート
			if zeroHitStop == 1 then
			
				--2Pが技を喰らったら
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
				--ブロ受付時間表示
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
	
	
	--試合中でなければ
	else
		--上から透明な画像をかぶせる。
		--これをやらないと、バーや画像が消えてくれないようだ。
		gui.image(0,0,blank2)
	
	end
	
end)