//
//  ChatViewController.swift
//  whatsappTask
//
//  Created by Sierra 4 on 14/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import CoreData

class ChatViewController: UIViewController {
    
   var images: URL!
   var names: String!
    
   
    @IBOutlet var chatTableOutlet: UITableView!
    @IBOutlet var btnSendOutlet: UIButton!
  
    
    @IBOutlet var imageOutlet: UIImageView!
    
    @IBOutlet var lblName: UILabel!
    
   
    @IBOutlet var textFieldOutlet: UITextView!
    var message:[String]=[]

    //var context:[String] = [""]
    
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        
         _=self.navigationController?.popViewController(animated: true)
    }
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        chatTableOutlet.estimatedRowHeight = 150.0
        chatTableOutlet.rowHeight = UITableViewAutomaticDimension
        
        imageOutlet.kf.setImage(with: images)
        lblName.text = names
        
       /* let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let fetchData = NSFetchRequest<NSManagedObject>(entityName: "Data")
        do{
            let finalData = try appDelegate.persistentContainer.viewContext.fetch(fetchData)
            for result in finalData {
                print(result)
                context.append(result.value(forKey: "sender") as! String? ?? "")
            }
            
        } catch let error as NSError {
            print("not fetch \(error), \(error.userInfo)")
        }*/
    
    


        
        
   imageOutlet?.layer.cornerRadius = 14.5
      imageOutlet?.layer.borderWidth = 1
       imageOutlet?.layer.borderColor = UIColor.init(red: 21/255.0, green: 94/255.0, blue: 80/255.0, alpha:1).cgColor
        
        
       
        
        btnSendOutlet?.layer.cornerRadius = 24
        textFieldOutlet?.layer.cornerRadius = 6
        
            

        }

    @IBAction func btnClickAction(_ sender: UIButton) {
        
        message.append(textFieldOutlet.text)
        
        message.append(textFieldOutlet.text)
        
      
        textFieldOutlet.text = ""
        
        chatTableOutlet.reloadData()

        
           
    
       /* let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let messageEntity = NSEntityDescription.entity(forEntityName: "Data",in: appDelegate.persistentContainer.viewContext)
        let context = NSManagedObject(entity: messageEntity!,insertInto: appDelegate.persistentContainer.viewContext)
        context.setValue(textFieldOutlet.text, forKey: "sender")
        context.setValue(textFieldOutlet.text, forKey: "receiver")
      //  context.setValue(txtFieldOutlet.text, forKeyPath:  "sender")
        //context.setValue(txtFieldOutlet.text, forKeyPth:  "receiver")
        
        do{
            try appDelegate.persistentContainer.viewContext.save()
            
        } catch let error as NSError {
            print("failed to save \(error), \(error.userInfo)")
        }*/
        
        
        
        
    }
    
   
}

    
    extension ChatViewController : UITableViewDataSource , UITableViewDelegate{
        
        public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return message.count
        }

        public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            if((indexPath.row) % 2 == 1)
            {
            let cell:SenderTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LabelOneIdentifier", for: indexPath) as!SenderTableViewCell
                
                
           cell.lblSenderOutlet.text = message[indexPath.row]
            
            return cell
            }
            else if((indexPath.row % 2) == 0)
            
            {
                let cell:ReceiverTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LabelTwoIdentifier", for: indexPath) as!ReceiverTableViewCell
                
                
                
                cell.lblReceiverOutlet.text = message[indexPath.row]
                
                return cell

            }
            
               return UITableViewCell()
        
        
      
        }
    }
    
    
  


    



