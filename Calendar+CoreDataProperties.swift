//
//  Calendar+CoreDataProperties.swift
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

extension Calendar {

    @NSManaged var garbageSchedule: String?
    @NSManaged var holiday: String?
    @NSManaged var id: String?
    @NSManaged var recyclingSchedule: String?
    @NSManaged var scheduleDate: String?
    @NSManaged var event: NSSet?

}
