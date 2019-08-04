//
//  ViewController.swift
//  ProtocolApp
//
//  Created by Pavel Ivanov on 3/20/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bob: Human?
    let userService: UserService = UserServiceImpl()
    let userServiceAdmin: (UserService & UserServiceAdmin) = UserServiceImpl()

    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var uiImageAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bob = Human(hp: 22, mp: 100, avatar: "cherry", armor: 50)
        refreshInfo()
        
       // userService.login()
       // userServiceAdmin.delete()
        
        let note1 = TextNote(text: "textNote")
        let note2 = ImageNote(text: "imageNote", image: nil)
        let items:[NoteProtocol] = [note1,note2]
        
        for note in items {
            print(note.text)
        }
        
        
    }
    
    func refreshInfo() {
        guard let hp = bob?.hp else { return }
        guard let mp = bob?.mp else { return }
        guard let avatar = bob?.avatar else { return }
       // DispatchQueue.main.async {
            self.lb1.text = String(hp)
            self.lb2.text = String(mp)
            self.uiImageAvatar.image = UIImage(named: avatar)
       // }
        
    }

    @IBAction func btClick(_ sender: UIButton) {
        bob?.ShowArmor()
    }
    
   
    
}

