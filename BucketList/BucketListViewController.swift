//
//  ViewController.swift
//  BucketList
//
//  Created by munira almallki on 05/03/1443 AH.
//

import UIKit

class BucketListViewController: UITableViewController , AddItemTableViewControllerDelegate {
  
    

var name = ["Munira","Khaled","Banan","Arwa"]
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MissionCell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
           performSegue(withIdentifier: "EditItemSegue", sender: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        name.remove(at: indexPath.row)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "AddNewMission" {
                let navigationController = segue.destination as! UINavigationController
                let controller = navigationController.topViewController as! AddItemTableViewController
                controller.delegate = self
            }
        else if segue.identifier == "EditItemSegue" {
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! AddItemTableViewController
            controller.delegate = self
            let indexPath = sender as! NSIndexPath
            let item = name[indexPath.row]
           controller.item = item
          controller.indexPath = indexPath
        }
       
        }
    func someViewControllerDelegate(_ controller: AddItemTableViewController, text: String, at indexPath: NSIndexPath?) {
        if let ip = indexPath{
             name[ip.row] = text
         }else {
             name.append(text)
         }
     
         tableView.reloadData()
    }
    func saveButtonPressed(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?) {
       if let ip = indexPath{
            name[ip.row] = text
        }else {
            name.append(text)
        }
    
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    func cancelButtonPressed(by controller: AddItemTableViewController) {
        dismiss(animated: true, completion: nil)
    }
    
}

