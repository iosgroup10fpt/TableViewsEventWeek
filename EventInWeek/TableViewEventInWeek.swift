//
//  TableViewEventInWeek.swift
//  EventInWeek
//
//  Created by imac on 5/4/17.
//  Copyright © 2017 imac. All rights reserved.
//

import UIKit

class TableViewEventInWeek: UITableViewController {
    var listevents : [Data] = {
        var listEvent = Data.ListEvent()
        return listEvent
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return listevents.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listevents[section].events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listevents[indexPath.section].events[indexPath.row].title
        cell.detailTextLabel?.text = listevents[indexPath.section].events[indexPath.row].description
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listevents[section].day
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listevents[indexPath.section].events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let eventLine1 = listevents[fromIndexPath.section]
        let eventLine2 = listevents[to.section]
        let event = eventLine1.events[fromIndexPath.row]
        eventLine1.events.remove(at: fromIndexPath.row)
        eventLine2.events.insert(event, at: fromIndexPath.row)
    }
    
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        temp2 = listevents[indexPath.section].day
        if tableView.cellForRow(at: indexPath) != nil {
            temp = listevents[indexPath.section].events[indexPath.row].title
            temp1 = listevents[indexPath.section].events[indexPath.row].description
           
            performSegue(withIdentifier: "detail", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let destinationVC = segue.destination as! ViewController
        destinationVC.day = temp2
        destinationVC.title1 = temp
        destinationVC.detail = temp1
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
