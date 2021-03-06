# Ruby on Rails チュートリアルのサンプルアプリケーション

Webアプリ開発の学習のため、Railsチュートリアル第6版を一周してできた成果物です。

普段は組込ソフトの開発に携わっており、Rubyに触れるのは初めてでしたが、約3週間でなんとか完走できました。

セキュリティの考え方など幅広い分野に応用できる内容になっており、Web開発者でなくても一度実践してみると多くの学びがあると思います。

一応、コピペはせずに理解しながら進めたつもりですが、一部間違った実装になっている箇所がある可能性があります。ご了承ください。

## 教材

以下は本成果物の作成にあたり使用した教材です。

[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
（第6版）
[Michael Hartl](https://www.michaelhartl.com/) 著

## ライセンス

[Ruby on Rails チュートリアル](https://railstutorial.jp/)内にある
ソースコードはMITライセンスとBeerwareライセンスのもとで公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## 動作環境

Rubyは学習開始時の最新版を使用しています。Rubyのバージョンが教材と異なる影響で一部gemのバージョンも上がっています。

また、Railsは7系になるとWebPacker周りなどが変わっているため、教材のバージョンに合わせています。

* Ruby: 3.1.1
* Rails: 6.0.4

## 留意事項

* rubocopを導入しているため、本家のコードとは書き方が異なる箇所があります。
* 演習問題は全て対応したつもりですが、本番環境向けなど一部不足している可能性があります。
* 本家とはrubyやgemのバージョンが異なるため、一部のテストが完全には動作していません。(テストは通ります)
