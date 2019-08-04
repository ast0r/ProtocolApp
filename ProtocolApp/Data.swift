//
//  Data.swift
//  ProtocolApp
//
//  Created by Pavel Ivanov on 3/21/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import Foundation
import UIKit

protocol NoteProtocol {
    var text: String? { get set }
    var desc: String?  {get set }
}

class TextNote : NoteProtocol {
    var desc: String?
    var text: String?
    
    init(text: String) {        
        self.text = text
    }
}

class ImageNote : NoteProtocol {
    var desc: String?
    var text: String?
    var image: UIImage?
    
    init(text: String, image: UIImage?) {
        self.text = text
        self.image = image
    }
}
