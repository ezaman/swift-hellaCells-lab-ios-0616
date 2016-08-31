//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Ehsan Zaman on 8/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    var arrayOfNumber: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var number1 = 1
        //var arrayOfNumber: [Int]
        
        for number in 1...100 {
            number1 = number + 1
            arrayOfNumber.append(number)
        }
        print(arrayOfNumber)
        
    }
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfNumber.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Table", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = String(arrayOfNumber[indexPath.item])
        
        return cell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailSegue" {
            let destinationVC = segue.destinationViewController as! HellaDetailViewController
            let path = tableView.indexPathForSelectedRow
            //print(path)
            let cell = tableView.cellForRowAtIndexPath(path!)
            destinationVC.numberText = (cell?.textLabel?.text!)!
            
            
        }
        
    }
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
}



