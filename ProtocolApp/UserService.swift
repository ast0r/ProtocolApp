//
//  UserService.swift
//  ProtocolApp
//
//  Created by Pavel Ivanov on 3/21/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import Foundation

@objc protocol UserService {
    
   func login()
   func logout()
   @objc optional func user()
}

protocol UserServiceAdmin {
    
    func delete()
}

class UserServiceImpl : UserService, UserServiceAdmin {
    
    init() {
        
    }
    
    func delete() {
        print("delete")
    }
    
    func login() {
        print("login")
    }
    
    func logout() {
        print("logout")
    }
    
    
}
