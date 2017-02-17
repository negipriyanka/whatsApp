//
//  TableClass.swift
//  whatsappTask
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation


class  TableClass {
    
    var imgIcon : URL?
    var name: String?
    var message: String?
    var time: String?
    
    
    
    
    
    init(imgIcon : URL? , name : String? , message: String? , time: String?) {
        self.imgIcon = imgIcon
        self.name = name
        self.message = message
        self.time = time        
    }
}
