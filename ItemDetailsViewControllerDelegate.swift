//
//  ItemDetailsViewControllerDelegate.swift
//  BucketList
//
//  Created by munira almallki on 06/03/1443 AH.
//

import UIKit
protocol SomeViewControllerDelegate: class {
    func someViewControllerDelegate(_ controller: ItemDetailsViewController, editedSomeThing thing: String, at indexPath: NSIndexPath?)
    // .. Any other methods delegate should handle
}
