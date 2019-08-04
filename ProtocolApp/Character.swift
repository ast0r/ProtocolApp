//
//  Character.swift
//  ProtocolApp
//
//  Created by Pavel Ivanov on 3/20/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import Foundation

fileprivate protocol Character {
    var hp: Int? { get }
    var mp: Int? { get }
    var avatar: String? { get }
    var armor: Int? { get }
    
    
    func ShowArmor()
}

fileprivate protocol Fireball {
    
    var fireball : String? { get }
    
    func UseFireball()
}

class Human: Character {
    public var hp: Int?
    public var mp: Int?
    public var avatar: String?
    fileprivate var armor: Int?
    
    init(hp : Int? , mp : Int?, avatar: String?, armor: Int?) {
        self.hp = hp
        self.mp = mp
        self.avatar = avatar
        self.armor = armor
    }
    
    func ShowArmor(){
        if let armor = armor {
            print("\(armor)")
        }
    }
}
