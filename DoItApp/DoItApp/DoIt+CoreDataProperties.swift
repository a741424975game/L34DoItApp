//
//  DoIt+CoreDataProperties.swift
//  DoItApp
//
//  Created by GuanZhipeng on 16/3/25.
//  Copyright © 2016年 Dali Lin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DoIt {

    @NSManaged var content: String?
    @NSManaged var title: String?

}
