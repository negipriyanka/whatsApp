//
//  CollectionViewCell.swift
//  whatsappTask
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var lblOutlet: UILabel!
    
    @IBOutlet var viewOutlet: UIView!
    
    var names : CollectionClass? {
        
        didSet{
            updateUI()
        }
        
    }
    
    fileprivate func updateUI(){
        
        // We have to all the logic here to calculate
        
        
        lblOutlet?.text = names?.name
        
        
        
        
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
}

    

