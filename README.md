# アプリ名
気分指数グラフ化日記 Fuwaly (うつ病患者さん向け復帰お手伝いアプリ)

# 概要
日付、気分指数、睡眠時間、幸福度、服薬の有無をそれそれストレスフリーのワンクリックで入力できます。
入力すると、気分の変動、睡眠時間の推移、幸福度の推移をグラフ化して表示してくれます。
また服薬率を計算して表示してくれます。

# 制作背景
自分自身がうつになって休職した経験から、うつ病の患者さんが回復し、社会復帰するのを支援したいと思ったことがきっかけ。
休職中、私は会社に毎日の活動日記を提出するよう求められました。見るのも辛い会社のパソコンを立ち上げ、エクセルにちまちま入力していかなければなりませんでした。（毎日つけることが大切と言われましたが、それに見合わない精神的疲労と手間がかかります。そんなことができるなら、日記などつけて自己把握しなくても復職できているわと突っ込みたくなるほど。）
また、エクセルのシートなので社員によっては操作に慣れ・不慣れがあります。したがって書き方の個人差が大きく、会社としても休職した社員のデータの収集ができないという状況でした。
そこで、私はうつできつい時でもスマホのワンタッチで入力できる、またはパソコンを持ち運ばなくていい（実家に帰る時など）といった手軽さが必要と感じ、Fuwaly開発を始めました。

# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒できている範囲で貼り付けましょう。

# 実装予定の内容

# DB設計

## users テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| name           | string | null: false |
| password       | string | null: false |

### Association

- has_many :statuses


##  statusesテーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| date           | string | null: false |
| feeling        | string | null: false |
| sleeping       | string | null: false |
| happiness      | string | null: false |
| taking         | string | null: false |
| stability      | string |             |
| living         | string |             |
| adherence      | string |             |

### Association

- belongs_to :user
