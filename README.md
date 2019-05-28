# SwiftのCompilationModeによる差異を検証

## 条件

1. 親クラスAがObj-Cのオプショナル実装可能なプロトコルX(例: UITableViewDelegate)を実装している
1. 子クラスBが親クラスAを継承し、プロトコルXの関数mを実装している
1. 全く関連性の無いクラスCがAnyObject型変数oの関数、または、プロパティを利用している
1. Swift5
1. Compilation ModeがWhole Module になっている

## 事象

本来呼び出される事が期待されるクラスBの関数mが呼び出されない

## 備考

Compilation ModeがIncrementalだったり、クラスCの変数oが関数(または、プロパティ)を呼び出していいる箇所をコメントアウトすると、本事象は発生しない。

## 関連Issue

- https://bugs.swift.org/browse/SR-10257
- https://bugs.swift.org/browse/SR-10498

## まとめ

Swift5のバグ
Swift5.1で対応される。

対応チケットは[こちら](https://github.com/apple/swift/pull/24256)
