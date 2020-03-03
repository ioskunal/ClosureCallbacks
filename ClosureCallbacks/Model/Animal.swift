//
//  Animal.swift
//  ClosureCallbacks
//
//  Created by Kunal Gupta on 01/03/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import Foundation

struct Animal {
    
    var emoji: String?
    var name: String?
    var sound: String?

    static func getAnimals() -> [Animal] {
        let dog = Animal(emoji: "🐶", name: "Dog", sound: "Bark")
        let cat = Animal(emoji: "🐱", name: "Cat", sound: "Meow")
        let cow = Animal(emoji: "🐮", name: "Cow", sound: "Moo")
        let panda = Animal(emoji: "🐼", name: "Panda", sound: "Bleat")
        let pig = Animal(emoji: "🐷", name: "Pig", sound: "Snort")
        let fox = Animal(emoji: "🦊", name: "Fox", sound: "Bark")
        let lion = Animal(emoji: "🦁", name: "Lion", sound: "Roar")
        
        return [dog,cat,cow,panda,pig,fox,lion]
    }
}

