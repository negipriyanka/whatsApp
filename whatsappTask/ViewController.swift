//
//  ViewController.swift
//  whatsappTask
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher
import ContactsUI
import Contacts




class ViewController: UIViewController  , CNContactPickerDelegate{
    
    var selectedNames:Int = 0
    var profileName : String!
    var profileImage: URL!
    
    @IBOutlet var tblOutletSecond: UITableView!
    @IBOutlet var tblOutlet: UITableView!
    var array = [
        [TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0Df0FRiv8VKNV07oV69Yk358trA-og959auQfMrQ-g-wr_Or") , name:"John" , message: "Yesterday,16:11" , time:"" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU4WadnKqZknEs0YgJ7mA9_Ebm6ll-6eGy8MEWJz_y9ymbod5fAQ") , name:"Deniel" , message: "Yesterday,13:42" ,time:""),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhQwhYqoqyxY4eokXYnwQe0s-OBIrMSux7t9pNpMeUm0KVdLB3") , name:"Kate" , message: "14 February,15:20" ,time:""),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU4WadnKqZknEs0YgJ7mA9_Ebm6ll-6eGy8MEWJz_y9ymbod5fAQ") , name:"Deniel" , message: "(2) 13 February,19:37" ,time:""),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR_41cnZ3-7HZB1a-ZN2hiGN48psjWrf9enzd49WpAP7rLujbXt") , name:"Anna" , message: "21 January,23:11" ,time:"" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0Df0FRiv8VKNV07oV69Yk358trA-og959auQfMrQ-g-wr_Or") , name:"John" , message: "(3) 12 January,15:03" ,time:"" )
            
            
        ],
        [TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0Df0FRiv8VKNV07oV69Yk358trA-og959auQfMrQ-g-wr_Or") , name:"John" , message: "hi!! hoe r u?" , time:"08:15" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhQwhYqoqyxY4eokXYnwQe0s-OBIrMSux7t9pNpMeUm0KVdLB3") , name:"Kate" , message: "hey wasuuppp" , time:"01:17" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR_41cnZ3-7HZB1a-ZN2hiGN48psjWrf9enzd49WpAP7rLujbXt") , name:"Anna" , message: "are u there? i need a favour plzz text me ASAP" , time:"00:17" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU4WadnKqZknEs0YgJ7mA9_Ebm6ll-6eGy8MEWJz_y9ymbod5fAQ") , name:"Daniel" , message: "good morming" , time:"Yesterday" ),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5rUH36AdYyV2uS2b0mkmBkrBkkI3d0zLF-I4Y5qzL_Q9WjGwy") , name:"David" , message: "okey i will send u later" , time:"Yesterday"),
         
         TableClass(imgIcon:URL(string:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRFxYH_7bFPixEzDj_lu0vsyDRfdPanqgzDmAWndPMJ2Hux-1Yy") , name:"Hank" , message: "gn" , time:"14/02/2017" )
            
            
        ]

    ]
    
    let arrayOfUrl = [("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0Df0FRiv8VKNV07oV69Yk358trA-og959auQfMrQ-g-wr_Or"),
      ("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhQwhYqoqyxY4eokXYnwQe0s-OBIrMSux7t9pNpMeUm0KVdLB3"),
      ("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR_41cnZ3-7HZB1a-ZN2hiGN48psjWrf9enzd49WpAP7rLujbXt"),
      ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU4WadnKqZknEs0YgJ7mA9_Ebm6ll-6eGy8MEWJz_y9ymbod5fAQ"),
      ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5rUH36AdYyV2uS2b0mkmBkrBkkI3d0zLF-I4Y5qzL_Q9WjGwy"),
      ("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRFxYH_7bFPixEzDj_lu0vsyDRfdPanqgzDmAWndPMJ2Hux-1Yy")]

    
    
    let nameArray = ["CALLS" , "CHATS" , "CONTACTS"]
       // CollectionClass(name : "CALLS"),
        //CollectionClass(name : "CHATS"),
       // CollectionClass(name : "CONTACTS")
        
    

    
    let moreArray = [
       LabelClass(label : "New group"),
       LabelClass(label : "New broadcast"),
        LabelClass(label : "WhatsApp Web"),
        LabelClass(label : "Starred messages"),
        LabelClass(label : "Status"),
        LabelClass(label : "Setting")
    ]
    
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        tblOutletSecond.isHidden = false
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
       let contacts: [CNContact] = {
            let contactStore = CNContactStore()
            let keysToFetch = [
                CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
                CNContactEmailAddressesKey,
                CNContactPhoneNumbersKey,
                CNContactImageDataAvailableKey,
                CNContactThumbnailImageDataKey] as [Any]
            
            // Get all the containers
            var allContainers: [CNContainer] = []
            do {
                allContainers = try contactStore.containers(matching: nil)
            } catch {
                print("Error fetching containers")
            }
            
            var results: [CNContact] = []
            
            // Iterate all containers and append their contacts to our results array
            for container in allContainers {
                let fetchPredicate = CNContact.predicateForContactsInContainer(withIdentifier: container.identifier)
                
                do {
                    let containerResults = try contactStore.unifiedContacts(matching: fetchPredicate, keysToFetch: keysToFetch as! [CNKeyDescriptor])
                    results.append(contentsOf: containerResults)
                } catch {
                    print("Error fetching results for container")
                }
            }
            
            return results
        }()
         var contact: [TableClass] = []
        contacts.enumerated().forEach{ index,cont in
            contact.append(TableClass(imgIcon:URL(string:"\(arrayOfUrl[index])"), name:cont.givenName, message: "" ,time: ""))
        }
            //print("Name",cont.givenName)
            
            array.append(contact)
        }
    
        
        
          }




   extension ViewController: UICollectionViewDataSource ,UICollectionViewDelegate  {
        
        public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
        {
            return nameArray.count
        }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell:CollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionIdentifier", for: indexPath) as?CollectionViewCell)!
        
        cell.lblOutlet.text = nameArray[indexPath.item]
        
        if(selectedNames == indexPath.item)
        {
            cell.viewOutlet.isHidden = false
        }
        else{
            cell.viewOutlet.isHidden = true

       
            }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    /*    selectedNames = indexPath.item
        
        if(selectedNames == 2){
        let cnPicker = CNContactPickerViewController()
        cnPicker.delegate = self
        self.present(cnPicker, animated: true, completion: nil)
    }*/
        selectedNames = indexPath.item
         tblOutlet.reloadData()
        collectionView.reloadData()
    }


}

/*func contactPicker(picker: CNContactPickerViewController, didSelectContacts contacts: [CNContact]){
    contacts.forEach { contact in
        for number in contact.phoneNumbers {
            let phoneNumber = number.value 
            print("number is = \(phoneNumber)")
        }
    }
}

func contactPickerDidCancel(picker: CNContactPickerViewController){
    print("Cancel Contact Picker")
}*/



extension ViewController: UITableViewDataSource ,UITableViewDelegate  {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tblOutletSecond.isHidden = true
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
       if(tableView == tblOutlet) {
        
            return array[selectedNames].count
        } else {
            return moreArray.count
        }
        
       //return (array[selectedNames].count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        if(tableView == tblOutlet)
        {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableIdentifier", for: indexPath) as!TableViewCell
        
            
             cell.object = array[selectedNames][indexPath.row]
                
        cell.imageOutlet.layer.cornerRadius = 30
        cell.imageOutlet.layer.borderWidth = 1
         cell.imageOutlet.layer.borderColor = UIColor.white.cgColor
        
            
        return cell
       }
        else if(tableView == tblOutletSecond){
            
            let cell:MoreTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MoreCellIdentifier", for: indexPath) as!MoreTableViewCell
           cell.objectTwo = moreArray[indexPath.row]
        
        return cell
            
    }
        
         return UITableViewCell()
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
     let indexPath = tableView.indexPathForSelectedRow
        
        
        let selectedCell = tableView.cellForRow(at: indexPath!) as! TableViewCell
        
        
         profileImage = selectedCell.imageOutlet.kf.webURL!
         profileName = selectedCell.lblName.text!
        self.performSegue(withIdentifier: "SegueIdentifier", sender: self)
        
        
        tableView.deselectRow(at: indexPath!, animated: true)
        
        
          }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SegueIdentifier")
            
            
        {
            let destination = segue.destination as! ChatViewController
            destination.images = profileImage
            destination.names = profileName
         
 
        }
         
        
        
    }
    
}




//contact.append(TableClass(imgIcon:URL(string:"\(arrayOfUrl[index])"), name:cont.givenName, message: ""))




// let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ChatControllerIdentifier") as! ChatViewController
/*self.navigationController?.pushViewController(viewController, animated: true)*/



