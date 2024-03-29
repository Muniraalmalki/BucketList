//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by munira almallki on 05/03/1443 AH.
//

import UIKit

class AddItemTableViewController: UITableViewController {
     
    weak var delegate :AddItemTableViewControllerDelegate?
    var item : String?
    var indexPath:NSIndexPath?
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = textField.text!
        delegate?.saveButtonPressed(by: self, with: text , at: indexPath)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = item
       
    }

    
}
