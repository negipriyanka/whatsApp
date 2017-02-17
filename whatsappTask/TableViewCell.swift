//
//  TableViewCell.swift
//  whatsappTask
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var imageOutlet: UIImageView!
    
    @IBOutlet var lblMessage: UILabel!
    @IBOutlet var lblTime: UILabel!
    
    var object : TableClass? {
        
        didSet{
            updateUI()
        }
        
    }
    
    fileprivate func updateUI(){
        
        // We have to all the logic here to calculate
        
        imageOutlet.kf.setImage(with:object?.imgIcon)
        lblName?.text = object?.name
        lblMessage?.text = object?.message
        lblTime?.text = object?.time

        
        
        
        
        
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        
          }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
