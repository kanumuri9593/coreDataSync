//
//  Event+CoreDataProperties.swift
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

extension Event {

    @NSManaged var borough: String?
    @NSManaged var city: String?
    @NSManaged var contactEmail: String?
    @NSManaged var contactName: String?
    @NSManaged var contactPhone: String?
    @NSManaged var emailAddress: String?
    @NSManaged var eventDate: String?
    @NSManaged var eventDescription: String?
    @NSManaged var eventID: String?
    @NSManaged var eventName: String?
    @NSManaged var eventPhone: String?
    @NSManaged var formattedEventDate: String?
    @NSManaged var fromDateTill: String?
    @NSManaged var fromTime: String?
    @NSManaged var houseNo: String?
    @NSManaged var id: String?
    @NSManaged var name: String?
    @NSManaged var organization: String?
    @NSManaged var phoneExt: String?
    @NSManaged var source: String?
    @NSManaged var state: String?
    @NSManaged var street: String?
    @NSManaged var toDateTill: String?
    @NSManaged var toTime: String?
    @NSManaged var website: String?
    @NSManaged var zip: String?
    @NSManaged var calendar: Calendar?

}
