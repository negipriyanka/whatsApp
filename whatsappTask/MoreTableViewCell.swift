//
//  MoreTableViewCell.swift
//  whatsappTask
//
//  Created by Sierra 4 on 14/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class MoreTableViewCell: UITableViewCell {

    @IBOutlet var lblMoreOutlet: UILabel!
    
    var objectTwo : LabelClass? {
        
        didSet{
            updateUI()
        }
        
    }
    
    fileprivate func updateUI(){
        
        // We have to all the logic here to calculate
        
       
        lblMoreOutlet?.text = objectTwo?.label      
        
        
        
        
        
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
