//
//  ReceiverTableViewCell.swift
//  whatsappTask
//
//  Created by Sierra 4 on 15/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ReceiverTableViewCell: UITableViewCell {

    @IBOutlet var viewTwoOutlet: UIView!
    @IBOutlet var lblReceiverOutlet: UILabel!
 
    @IBOutlet var lblTimeReceiver: UILabel!
    
        override func awakeFromNib() {
        super.awakeFromNib()
            
            let date = Date()
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minutes = calendar.component(.minute, from: date)
            lblTimeReceiver.text = "\(hour):\(minutes)"
            

        
        self.viewTwoOutlet.layer.cornerRadius = 3 //Exact half size of that UIView object's Height/Width
       self.viewTwoOutlet.layer.masksToBounds = true

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
/*let date = Date()
let calendar = Calendar.current

let hour = calendar.component(.hour, from: date)
let minutes = calendar.component(.minute, from: date)
let seconds = calendar.component(.second, from: date)
print("hours = \(hour):\(minutes):\(seconds)")*/
