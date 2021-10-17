# joycon-gimx
## ツールたち
- GIMX
    - https://github.com/matlo/GIMX
- riking/joycon
    - github.com/riking/joycon
    - 左右をまとめるjoy-conドライバ
    - 左右バラバラでもGIMXに認識されるが、マクロとの相性が悪かったため使用

## 使ったもの
- Raspberry Pi 3 Model B
- DIY USB adapter for GIMX
    - KEYESTUDIO 5V Leonardo R3
        - Arduino Leonardo 互換機
    - DSD TECH SH-U09C (FT232RL)
        - USB-シリアル変換
- BUFFALO BSBT4D205BK
    - Bluetoothドングル
    - Pi3の内蔵Bluetoothが調子悪かったため。

## 用法
1. bluetoothctlでJoy-Conを接続
2. riking/joyconを起動しLRを同時押し
    - 左右合体したJoy-Conが /dev/input/js2 などとして認識される
3. DISPLAY=:0.0 gimx --config joycon_driver_ps4.xml -p /dev/ttyUSB0 --window-events
    - --window-events としなければ riking/joycon のコントローラが認識されない
    - その場合、DISPLAY=:0.0 と環境変数を設定する必要がある
