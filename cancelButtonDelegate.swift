//
//  cancelButtonDelegate.swift
//  BucketList
//
//  Created by munira almallki on 05/03/1443 AH.
//

import UIKit

protocol AddItemTableViewControllerDelegate : class {
    func cancelButtonPressed (by controller : UIViewController)
    func saveButtonPressed (by controller : UIViewController)
}
