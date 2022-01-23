//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by munira almallki on 05/03/1443 AH.
//

import UIKit
protocol AddItemTableViewControllerDelegate : AnyObject {
    func saveButtonPressed(by controller : AddItemTableViewController, with text:String , at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller : AddItemTableViewController)
    func someViewControllerDelegate(_ controller: AddItemTableViewController, text: String, at indexPath: NSIndexPath?)
    
    
}
