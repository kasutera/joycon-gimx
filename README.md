# joycon-gimx
## ツールたち
- GIMX
    - https://github.com/matlo/GIMX
- ~~riking/joycon~~
    - ~~https://github.com/riking/joycon~~
    - ~~左右をまとめるjoy-conドライバ~~
    - ~~左右バラバラでもGIMXに認識されるが、マクロとの相性が悪かったため使用~~
    - ~~Raspberry Pi 3だとCPUが暴走する (https://github.com/riking/joycon/issues/65) のでforkして適当に修正した~~
        - ~~https://github.com/kasutera/joycon~~
- joycond
    - https://github.com/DanielOgorchock/joycond
    - 左右をまとめるjoy-conドライバ
    - 左右バラバラでもGIMXに認識されるが、マクロとの相性が悪かったため使用

## 使ったもの
- Raspberry Pi 3 Model B
    - Raspberry Pi OS kernel 5.10
    - Legacy (Buster) でなければならない (GIMX for raspbianの関係)
- DIY USB adapter for GIMX
    - KEYESTUDIO 5V Leonardo R3
        - Arduino Leonardo 互換機
    - DSD TECH SH-U09C (FT232RL)
        - USB-シリアル変換
- BUFFALO BSBT4D205BK
    - Bluetoothドングル
    - Pi3の内蔵Bluetoothが調子悪かったため。
    - 以下の手順で内蔵のを無効化
        - /boot/config.txt に dtoverlay=pi3-disable-bt
        - sudo systemctl disable hciuart

## 用法
1. bluetoothctlでJoy-Conを接続
2. DualShock4を繋ぐ
3. joycondを動作させておきLinuxにJoy-Conをつなぐ
    - LR同時押しで左右合体したJoy-Conが認識できる
4. `DISPLAY=:0.0 gimx --config joycond_ps4.xml -p /dev/ttyUSB0 --window-events`
    - `--window-events` としなければコントローラが認識されない
    - その場合、`DISPLAY=:0.0` と環境変数を設定する必要がある

## セットアップ
- `sudo apt update`
- `sudo apt upgrade -y`
- `sudo raspi-config update`
- gimxのインストール
    - `bin/install_gimx.sh`
- Joy-Conドライバのインストール
    - `bin/install_joycond.sh`
    - ~~`bin/install_riking_joycon.sh`~~
- gimx-loader
    - ファームウェアをatmega32u4に読ませる
- gimx-config
    - Joy-Conの各ボタンをDualShock4に対応させる
        - `.gimx/config/joycond_ps4.xml`
