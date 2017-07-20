//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let view1 = UIView()
view1.backgroundColor = UIColor.green
let view2 = UIView()
view2.backgroundColor = UIColor.blue
let view3 = UIView()
view3.backgroundColor = UIColor.red
let view4 = UIView()
view4.backgroundColor = UIColor.yellow

let stackView = UIStackView(arrangedSubviews: [view1, view2, view3, view4])
stackView.frame = CGRect(x: 0, y: 0, width: 150, height: 200)
stackView.axis = .vertical
stackView.distribution = .fillEqually
stackView.alignment = .fill
stackView.spacing = 10.0
stackView.setCustomSpacing(30.0, after: view2)

PlaygroundPage.current.liveView = stackView

