//
//  Message.swift
//  DynamicCellSize
//
//  Created by Marcelo on 04/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation


struct Message {
    var text: String?
    var isLeftSide: Bool?
    
    init(){
        self.text = String()
        self.isLeftSide = Bool()
    }
    
    init(text: String, isLeftSide: Bool) {
        self.text = text
        self.isLeftSide = isLeftSide
    }
    
}
