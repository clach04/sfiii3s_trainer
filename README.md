# sfiii3s_trainer

English of crystal_cube 99's Street Fighter III 3rd Strike Trainer.

Original code is Shift-JIS encoded, this branch is utf8 encoded and English
(Japanese comments preserved in source code).

crystal_cube 99's sites:

  * Blog https://ameblo.jp/3fv/
  * https://twitter.com/crystal_cube99
  * https://www.youtube.com/channel/UCuhrs1TDAAhCMxFfMjPtJgw


## Getting started

Need fbarr. Also need lua-gd.

Extract fbarr and extract the dlls from lua-gd into the same directory as `fba.exe`.

  * https://code.google.com/archive/p/fbarr/downloads fba-rr-v007.7z
  * http://ittner.github.io/lua-gd/ has links to Sourceforge with pre-built DLLs (lua-gd-2.0.33r2-win32.zip).

Load ROM, Load lua script, press and hold Player 1 START button to bring up training menu.


## TODO

Link to some tutorial videos.

Add support for picking `en_*.png` or `jp_*.png` menu text explanations/help for:

  * airComboInf_text.png
  * airTimerView_text.png
  * BLView_text.png
  * denjinView_text.png
  * gaugeMax_text.png
  * inputView_text.png
  * kaitenView_text.png
  * longHitStop_text.png
  * rendaView_text.png
  * stunMax_text.png
  * stunView_text.png
  * tameView_text.png
  * trainingMode_text.png
  * zeroHitStop_text.png

Alternatively replace with text display instead of image (see branch
https://github.com/clach04/sfiii3s_trainer/tree/menu_translation ).
