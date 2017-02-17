//
//  Data+CoreDataProperties.swift
//  
//
//  Created by Sierra 4 on 15/02/17.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Data {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Data> {
        return NSFetchRequest<Data>(entityName: "Data");
    }

    @NSManaged public var sender: String?
    @NSManaged public var receiver: String?

}
