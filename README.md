[![Image from Gyazo](https://i.gyazo.com/ee01fd563a6506d6ecdc6d1c9ada02ce.gif)](https://gyazo.com/ee01fd563a6506d6ecdc6d1c9ada02ce)

Link→  https://cooing.herokuapp.com/

# Name

COOING

# Overview

お問い合わせ機能を実装した会社のホームページです

# Description

会社の情報（コンセプト、事業内容、会社概要など）の閲覧および、問い合わせができます

実装済みの機能↓

お問い合わせ機能（入力 → 確認 → 送信 or 変更 → thanks!画面 ）

# Background

プログラミングを始めたての頃、フロントエンドの練習がしたいと思い、ホームページを作ろうと思いました。
その後、session についても学びたいと思い、以前作ったホームページにお問い合わせ機能の実装をしました。

# Demo

<img width="1440" alt="0491927ae7fafadcf07e6936aae13065" src="https://user-images.githubusercontent.com/59164751/76203290-b9ea0100-6239-11ea-9e92-4c602c2283e4.png">

<img width="1440" alt="4c06edc3d3a1b9347fed08160b89cd73" src="https://user-images.githubusercontent.com/59164751/76203379-e140ce00-6239-11ea-999e-b985c9bed7e1.png">

<img width="1440" alt="3dabd80ceeb9dd4ce9489fafbbec84a2" src="https://user-images.githubusercontent.com/59164751/76203435-f74e8e80-6239-11ea-9145-2b37ef3225a7.png">


# 使用した技術

Ruby on Rails(version 2.5.1),HTML,CSS,Javascript

mysql2 0.5.3(開発環境)、postgresql(本番環境)

# Usage

会社の情報をご覧になれます、気になる店があれば画像をクリックしていただけると遷移します。

# Author

https://github.com/n-domi

# これから実装したいこと

・Reactなどを使い、今流行のSPIに改造する

・JavaScriptでサイトに動きをつけてより良い体験を提供する 

・レスポンシブデザインの実装（スマートフォンやタブレットでの利用を考慮） 

# DB設計

## contactsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|     #お名前     
|ruby|string|null: false|     #ふりがな
|email|string|null: false|    #メールアドレス            
|item|string|null: false|     #お問い合わせ項目
|content|string|null: false|  #お問い合わせ内容             

