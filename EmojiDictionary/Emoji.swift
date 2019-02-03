//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import Foundation
class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    init(symbol:String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
