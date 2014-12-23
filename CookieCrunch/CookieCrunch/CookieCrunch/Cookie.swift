//
//  Cookie.swift
//  CookieCrunch
//
//  Created by Alan Liang on 12/22/14.
//  Copyright (c) 2014 fsa. All rights reserved.
//

import Foundation
import SpriteKit

enum CookieType: Int, Printable {
    case Unknown = 0, Croissant, Cupcake, Danish, Donut, Macaroon, SUgarCookie
    
    var spriteName: String {
        let spriteNames = [
            "Croissant",
            "Cupcake",
            "Danish",
            "Donut",
            "Macaroon",
            "SugarCookie"]
        return spriteNames[rawValue - 1]
    }
    
    var highlightedSpriteName: String {
        return spriteName + "-Highlighted"
    }
    static func random() -> CookieType {
        return CookieType(rawValue: Int(arc4random_uniform(6)) + 1)!  // what does this exclamation mean?
    }
    
    var description: String {
        return spriteName
    }
}

class Cookie: Printable {
    var column: Int
    var row: Int
    let cookieType: CookieType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, cookieType: CookieType) {
        self.column = column
        self.row = row
        self.cookieType = cookieType
    }
    
    var description: String {
        return "type:\(cookieType) square:(\(column),\(row))"
    }
}