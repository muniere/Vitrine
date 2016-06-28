//
//  ViewController.swift
//  Charlie
//
//  Created by Hiromune Ito on 2016/06/02.
//  Copyright © 2016年 Muniere. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    print("numberOfRowsInSection")

    return cities.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    print("cellForRowAtIndexPath")

    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
    cell.textLabel?.font = UIFont(name: "HirakakuProN-W3", size: 14.0)
    cell.textLabel?.text = cities[indexPath.row]
    return cell
  }

  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    print("heightForRowAtIndexPath")

    return 44.0
  }

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print("didSelectRowAtIndexPath")

    performSegueWithIdentifier("Detail", sender: self)

    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let detailViewController = segue.destinationViewController as? DetailViewController {
      if let selectedIndexPath = tableView.indexPathForSelectedRow {
        detailViewController.city = cities[selectedIndexPath.row]
      }
    }
  }

  let cities: [String] = [
    "アイウン（西サハラ）",
    "アクラ（ガーナ）",
    "アシガバート（トルクメニスタン）",
    "アスタナ（カザフスタン）",
    "アスマラ（エリトリア）",
    "アスンシオン（パラグアイ）",
    "アディスアベバ（エチオピア）",
    "アテネ（ギリシャ）",
    "アデレード（オーストラリア）",
    "アデン（イエメン）",
    "アトランタ（アメリカ）",
    "アピア（サモア）",
    "アビジャン（コートジボワール）",
    "アブダビ（アラブ首長国連邦）",
    "アムステルダム（オランダ）",
    "アリススプリングス（オーストラリア）",
    "アルジェ（アルジェリア）",
    "アルマトイ（カザフスタン）",
    "アンカラ（トルコ）",
    "アンカレッジ（アラスカ）（アメリカ）",
    "アンタナナリボ（マダガスカル）",
    "アンマン（ヨルダン）",
    "イエローナイフ（カナダ）",
    "イカルイト（カナダ）",
    "イスタンブル（トルコ）",
    "イルクーツク（ロシア）",
    "インディアナポリス（アメリカ）",
    "ウィーン（オーストリア）",
    "ヴィエンチャン（ラオス）",
    "ウィニペグ（カナダ）",
    "ウィントフック（ナミビア）",
    "ヴォルゴグラード（ロシア）",
    "ウラジオストク（ロシア）",
    "ウランバートル（モンゴル）",
    "ウルムチ（中国）",
    "エカテリンブルグ（ロシア）",
    "エディンバラ（イギリス）",
    "エドモントン（カナダ）",
    "サンサルバドル（エルサルバドル）",
    "エル・パソ（アメリカ）",
    "エルサレム（イスラエル）",
    "エレバン（アルメニア）",
    "オークランド（ニュージーランド）",
    "オクラホマシティ（アメリカ）",
    "オスロ（ノルウェー）",
    "オタワ（カナダ）",
    "オムスク（ロシア）",
    "カーディフ（イギリス）",
    "カイロ（エジプト）",
    "ガザ（パレスチナ）",
    "カサブランカ（モロッコ）",
    "カザン（ロシア）",
    "カシュガル（中国）",
    "ガダルカナル島（ソロモン諸島）",
    "カトマンズ（ネパール）",
    "カブール（アフガニスタン）",
    "カムチャッカ（ロシア）",
    "カラカス（ベネズエラ）",
    "カラチ（パキスタン）",
    "カリーニングラード（ロシア）",
    "カルガリー（カナダ）",
    "カンクン（メキシコ）",
    "カンザスシティ（アメリカ）",
    "カンパラ（ウガンダ）",
    "カンポ・グランデ（ブラジル）",
    "キエフ（ウクライナ）",
    "キガリ（ルワンダ）",
    "キシナウ（モルドバ）",
    "キト（エクアドル）",
    "キャンベラ（オーストラリア）",
    "キングストン（ジャマイカ）",
    "キンシャサ（コンゴ民主共和国）",
    "グアヤキル（エクアドル）",
    "グアダラハラ（メキシコ）",
    "グアテマラシティ（グアテマラ）",
    "グアム（グアム）",
    "クアラルンプール（マレーシア）",
    "クイアバ（ブラジル）",
    "クウェート（クウェート）",
    "クチン（マレーシア）",
    "クライストチャーチ（ニュージーランド）",
    "グラスゴー（イギリス）",
    "クリチバ（ブラジル）",
    "グレナダ（グレナダ）",
    "ケアンズ（オーストラリア）",
    "ケープタウン（南アフリカ）",
    "ケルン（ドイツ）",
    "広州（中国）",
    "コナクリ（ギニア）",
    "コペンハーゲン（デンマーク）",
    "モロニ（コモロ）",
    "コルカタ（インド）",
    "コルドバ（アルゼンチン）",
    "コロンボ（スリランカ）",
    "済州島（韓国）",
    "サイパン島（北マリアナ諸島）",
    "ザグレブ（クロアチア）",
    "サハリン（ロシア）",
    "サマーラ（ロシア）",
    "サマルカンド（ウズベキスタン）",
    "サラエヴォ（ボスニア・ヘルツェゴビナ）",
    "サルタ（アルゼンチン）",
    "三亜（ハイナン島）（中国）",
    "サンクトペテルブルク（ロシア）",
    "サンティアゴ（チリ）",
    "サントドミンゴ（ドミニカ共和国）",
    "サントメ（サントメ・プリンシペ）",
    "サンパウロ（ブラジル）",
    "サンフアン（プエルトリコ）",
    "サンフランシスコ（アメリカ）",
    "サンホセ（コスタリカ）",
    "サンマリノ（サンマリノ）",
    "シアトル（アメリカ）",
    "シカゴ（アメリカ）",
    "ジッダ（サウジアラビア）",
    "シドニー（オーストラリア）",
    "ジブチ（ジブチ）",
    "ジブラルタル（ジブラルタル）",
    "ジャカルタ（インドネシア）",
    "上海（中国）",
    "重慶（中国）",
    "シュトゥットガルト（ドイツ）",
    "ジュネーヴ（スイス）",
    "ジュバ（南スーダン）",
    "ジョージタウン（ガイアナ）",
    "シンガポール（シンガポール）",
    "スコピエ（マケドニア共和国）",
    "ストックホルム（スウェーデン）",
    "スバ（フィジー）",
    "西安（中国）",
    "成都（中国）",
    "セブ島（フィリピン）",
    "セントクリストファー島（セントクリストファー・ネービス）",
    "セント・ジョンズ（カナダ）",
    "セントビンセント（セントビンセントおよびグレナディーン諸島）",
    "セントルシア（セントルシア）",
    "ソウル（韓国）",
    "ソチ（ロシア）",
    "ソフィア（ブルガリア）",
    "ソルトレイクシティ（アメリカ）",
    "ダーウィン（オーストラリア）",
    "台北（台湾）",
    "大連（中国）",
    "ダカール（セネガル）",
    "タシュケント（ウズベキスタン）",
    "ダッカ（バングラデシュ）",
    "タヒチ島（フランス領ポリネシア）",
    "ダブリン（アイルランド）",
    "ダマスカス（シリア）",
    "ダラス（アメリカ）",
    "タラワ環礁（キリバス ）",
    "タリン（エストニア）",
    "ダルエスサラーム（タンザニア）",
    "チェンナイ（インド）",
    "チタ（ロシア）",
    "チューク州（ミクロネシア連邦）",
    "チューリッヒ（スイス）",
    "チュニス（チュニジア）",
    "チワワ（メキシコ）",
    "青島（中国）",
    "ティファナ（メキシコ）",
    "ティラナ（アルバニア）",
    "ディリ（東ティモール）",
    "ティンプー（ブータン）",
    "テグシガルパ（ホンジュラス）",
    "デトロイト（アメリカ）",
    "テヘラン（イラン）",
    "テルアビブ（イスラエル）",
    "天津（中国）",
    "デンバー（アメリカ）",
    "ドゥアラ（カメルーン）",
    "東京（日本）",
    "ドゥシャンベ（タジキスタン）",
    "トゥールーズ（フランス）",
    "ドーハ（カタール）",
    "ドバイ（アラブ首長国連邦）",
    "トビリシ（ジョージア）",
    "ドミニカ島（ドミニカ国）",
    "トリポリ（リビア）",
    "ドレスデン（ドイツ）",
    "トロント（カナダ）",
    "トンガタプ島（トンガ）",
    "ナイロビ（ケニア）",
    "ナウル（ナウル）",
    "ナタール（ブラジル）",
    "ナッソー（バハマ）",
    "ナント（フランス）",
    "ニアメ（ニジェール）",
    "ニース（フランス）",
    "ニコシア（キプロス）",
    "ニジニ・ノヴゴロド（ロシア）",
    "ニューデリー（インド）",
    "ニューヨーク（アメリカ）",
    "ヌアクショット（モーリタニア）",
    "ヌーク（グリーンランド）",
    "ノヴォシビルスク（ロシア）",
    "パース（オーストラリア）",
    "バーミンガム（イギリス）",
    "バイーア（サルバドール）（ブラジル）",
    "バクー（アゼルバイジャン）",
    "バグダッド（イラク）",
    "パゴパゴ（アメリカ領サモア）",
    "バチカン（バチカン ）",
    "パナマ市（パナマ）",
    "ハノイ（ベトナム ）",
    "ハノーファー（ドイツ）",
    "ハバナ（キューバ）",
    "ハボローネ（ボツワナ）",
    "バマコ（マリ）",
    "パラオ（パラオ）",
    "パラマリボ（スリナム ）",
    "ハラレ（ジンバブエ）",
    "バリ島（インドネシア）",
    "パリ（フランス）",
    "ハリファックス（カナダ）",
    "バルセロナ（スペイン）",
    "ハルツーム（スーダン）",
    "バルバドス（バルバドス）",
    "ハルビン（中国）",
    "バンガロール（インド）",
    "バンギ（中央アフリカ）",
    "バンクーバー（カナダ）",
    "バンコク（タイ）",
    "バンジュール（ガンビア）",
    "ハンブルク（ドイツ）",
    "ビサウ（ギニアビサウ）",
    "ビシュケク（キルギス）",
    "ヒューストン（アメリカ）",
    "平昌（韓国）",
    "平壌（北朝鮮）",
    "ビリニュス（リトアニア）",
    "ファドゥーツ（リヒテンシュタイン）",
    "フィラデルフィア（アメリカ）",
    "フィレンツェ（イタリア ）",
    "プーケット島（タイ）",
    "フェニックス（アメリカ）",
    "ブエノスアイレス（アルゼンチン）",
    "フォルタレザ（ブラジル）",
    "ブカレスト（ルーマニア）",
    "武漢（中国）",
    "釜山（韓国）",
    "ブジュンブラ（ブルンジ）",
    "ブラザビル（コンゴ共和国）",
    "ブダペスト（ハンガリー）",
    "フナフティ島（ツバル）",
    "プノンペン（カンボジア）",
    "プライア（カーボベルデ）",
    "ブラジリア（ブラジル）",
    "ブラチスラヴァ（スロバキア）",
    "プラハ（チェコ）",
    "フランクフルト（ドイツ）",
    "ブランタイヤ（マラウイ）",
    "フリータウン（シエラレオネ）",
    "ブリュッセル（ベルギー）",
    "ブリスベン（オーストラリア）",
    "ブルネイ（ブルネイ）",
    "ベイルート（レバノン）",
    "ベオグラード（セルビア）",
    "北京（中国）",
    "ベリーズシティ（ベリーズ）",
    "ヘルシンキ（フィンランド）",
    "ベルファスト（イギリス）",
    "ベルリン（ドイツ）",
    "ベレン（ブラジル）",
    "ベロオリゾンテ（ブラジル）",
    "ボア・ヴィスタ（ブラジル）",
    "ホーチミン（ベトナム ）",
    "ポートオブスペイン（トリニダード・トバゴ）",
    "ポートビラ（バヌアツ）",
    "ポートモレスビー（パプアニューギニア）",
    "ポートランド（アメリカ）",
    "ポートルイス（モーリシャス）",
    "ボゴタ（コロンビア）",
    "ボストン（アメリカ）",
    "ポドゴリツァ（モンテネグロ）",
    "ホノルル（ハワイ）（アメリカ）",
    "ホバート（オーストラリア）",
    "ポルトープランス（ハイチ）",
    "ボルドー（フランス）",
    "ポルトノボ（ベナン）",
    "ポルト・アレグレ（ブラジル）",
    "ホワイトホース（カナダ）",
    "香港（香港）",
    "マイアミ（アメリカ）",
    "マウイ島（アメリカ）",
    "マカオ（マカオ）",
    "マガダン（ロシア）",
    "マスカット（オマーン）",
    "マセイオ（ブラジル）",
    "マセル（レソト）",
    "マドリード（スペイン）",
    "マナーマ（バーレーン）",
    "マナウス（ブラジル）",
    "マナグア（ニカラグア）",
    "マニラ（フィリピン）",
    "マプト（モザンビーク）",
    "マヘ島（セーシェル）",
    "マラボ（赤道ギニア）",
    "マルセイユ（フランス）",
    "マルタ（マルタ）",
    "マレ島（モルディブ）",
    "マンチェスター（イギリス）",
    "ミネアポリス（アメリカ）",
    "ミュンヘン（ドイツ）",
    "ミラノ（イタリア ）",
    "ミンスク（ベラルーシ）",
    "ムババーネ（スワジランド）",
    "ムンバイ（インド）",
    "メキシコシティ（メキシコ）",
    "メッカ（サウジアラビア）",
    "メリダ（メキシコ）",
    "メルボルン（オーストラリア）",
    "メンドーサ（アルゼンチン）",
    "メンフィス（アメリカ）",
    "モガディシュ（ソマリア）",
    "モスクワ（ロシア）",
    "モナコ（モナコ）",
    "モンテビデオ（ウルグアイ）",
    "モンテレー（メキシコ）",
    "モントリオール（カナダ）",
    "モンロビア（リベリア）",
    "ヤクーツク（ロシア）",
    "ヤンゴン（ミャンマー）",
    "ヨハネスブルグ（南アフリカ）",
    "ラゴス（ナイジェリア）",
    "ラスベガス（アメリカ）",
    "ラパス（ボリビア）",
    "ラホール（パキスタン）",
    "リーブルヴィル（ガボン）",
    "リール（フランス）",
    "リオデジャネイロ（ブラジル）",
    "リオブランコ（ブラジル）",
    "リガ（ラトビア）",
    "リスボン（ポルトガル）",
    "リヴァプール（イギリス）",
    "リマ（ペルー）",
    "リヤド（サウジアラビア）",
    "リュブリャナ（スロベニア）",
    "リヨン（フランス）",
    "ルアンダ（アンゴラ）",
    "ルイビル（アメリカ）",
    "ルクセンブルク（ルクセンブルク）",
    "ルクソール（エジプト）",
    "ルサカ（ザンビア）",
    "ルブンバシ（コンゴ民主共和国）",
    "レイキャビク（アイスランド）",
    "レシフェ（ブラジル）",
    "レジャイナ（カナダ）",
    "ローマ（イタリア ）",
    "ロサンゼルス（アメリカ）",
    "ロメ（トーゴ）",
    "ロンドン（イギリス）",
    "ワガドゥグー（ブルキナファソ）",
    "ワシントンD.C.（アメリカ）",
    "ワルシャワ（ポーランド）",
    "ンジャメナ（チャド）",
  ]
}
