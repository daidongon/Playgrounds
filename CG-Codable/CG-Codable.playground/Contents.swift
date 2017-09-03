//: Playground - noun: a place where people can play

import UIKit

let encoder = JSONEncoder()
let decoder = JSONDecoder()

// CGPoint
let point = CGPoint(x: 120, y: 260)
if let encodedPoint = try? encoder.encode(point) {
    String(data: encodedPoint, encoding: .utf8)
}

let size = CGSize(width: 50, height: 80)

// CGRect
let rect = CGRect(origin: point, size: size)
if let encodedRect = try? encoder.encode(rect) {
    String(data: encodedRect, encoding: .utf8)
    
    if let decodedRect = try? decoder.decode(CGRect.self, from: encodedRect) {
        print(decodedRect)
    }
}

// CGSize, CGVector, CGAffineTransform
