
import UIKit
import PlaygroundSupport

let point = CGPoint.zero
let size = CGSize(width: 200, height: 50)
let roundedView = UIView(frame: CGRect(origin: point, size: size))

roundedView.clipsToBounds = true
roundedView.backgroundColor = UIColor.lightGray
roundedView.layer.backgroundColor = UIColor.white.cgColor
roundedView.layer.cornerRadius = 10.0
roundedView.layer.maskedCorners = [
    .layerMinXMinYCorner,
    .layerMinXMaxYCorner
//    .layerMaxXMaxYCorner, .layerMaxXMinYCorner
]

PlaygroundPage.current.liveView = roundedView
