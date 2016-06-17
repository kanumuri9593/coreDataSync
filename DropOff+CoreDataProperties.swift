//
//  DropOff+CoreDataProperties.swift
//  
//
//  Created by Yeswanth varma Kanumuri on 6/16/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DropOff {

    @NSManaged var category: Double
    @NSManaged var categoryDescription: String?
    @NSManaged var dropOffSiteName: String?
    @NSManaged var id: String?
    @NSManaged var latitude: Double
    @NSManaged var location: String?
    @NSManaged var locationId: Double
    @NSManaged var longitude: Double

}
