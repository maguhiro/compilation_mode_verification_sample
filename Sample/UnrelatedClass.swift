import UIKit

class UnrelatedClass {
  var hoge: AnyObject?

  func foo() {
    // このコードをコメントアウトすると、問題なし
    hoge?.axis
  }
}
