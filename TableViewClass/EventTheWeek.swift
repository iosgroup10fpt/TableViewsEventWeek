//
//  EventTheWeek.swift
//  TableViewClass
//
//  Created by miceli on 4/22/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

class EventTheWeek: UITableViewController {
//    let arrayOfString = ["adnjadna", "sdfsff"]
//    var  arrayOfString2 = ["adnjadna", "sdfsff"]
//    
//    var myArray: [String] = []
    
    
    var daysInWeek = ["MonDay","TueDay","WednesDay","ThursDay","FriDay","SaturDay","SunDay"]
    var sectionDetail = [
    
            [],
            [],
            []
    
    ]
    var num1 = 3 , num2 = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
// trả về số section của tableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return daysInWeek.count
    }
// trả về số cột có được trong 1 section của table View
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return num1
        }
        if section == 1 {
            return num2
        }
        if section == 2 {
            return num1
        }
        if section == 3 {
            return num2
        }
        if section == 4 {
            return num1
        }
        if section == 5 {
            return num2
        }
        if section == 6 {
            return num1
        }
        
        return 2
    }

//Hiện dữ liệu lên Table View
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        if(indexPath.section == 0){
            cell.titleEvent?.text = "Thanh 0"
            cell.DetailEvent?.text = "Khoa 0"

        }
        if(indexPath.section == 1){
            cell.titleEvent?.text = "Thanh 1"
            cell.DetailEvent?.text = "Khoa 1"
            
        }
        if(indexPath.section == 2){
            cell.titleEvent?.text = "Thanh 2"
            cell.DetailEvent?.text = "Khoa 2"
            
        }
        if(indexPath.section == 3){
            cell.titleEvent?.text = "Thanh 3"
            cell.DetailEvent?.text = "Khoa 3"
            
        }
        if(indexPath.section == 4){
            cell.titleEvent?.text = "Thanh 4"
            cell.DetailEvent?.text = "Khoa 4"
        }
        if(indexPath.section == 5){
            cell.titleEvent?.text = "Thanh 5"
            cell.DetailEvent?.text = "Khoa 5"
            
        }
        if(indexPath.section == 6){
            cell.titleEvent?.text = "Thanh 6"
            cell.DetailEvent?.text = "Khoa 6"
            
        }
                // Configure the cell...

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            daysInWeek.remove(at: indexPath.row)
            self.tableView.reloadData()
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // set title for Header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return daysInWeek[section]
    }
    
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        temp2 = daysInWeek[indexPath.section]
        if let cell = tableView.cellForRow(at: indexPath) as? TableViewCell {
            temp = cell.titleEvent.text!
            temp1 = cell.DetailEvent.text!
            //print(temp)
//            let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//            destinationVC.even1 = temp
//            destinationVC.even2 = "AVG"
//            self.navigationController?.pushViewController(destinationVC, animated: true)
            performSegue(withIdentifier: "a", sender: self)
        }
    }
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "cell" {
//            var secondViewController : ViewController = segue.destination as! ViewController
//            var indexPath = self.tableView(<#T##tableView: UITableView##UITableView#>, canPerformAction: <#T##Selector#>, forRowAt: <#T##IndexPath#>, withSender: <#T##Any?#>).indexPathForSelectedRow()
//            
//            var indexPath = self.tableview.indexPathForSelectedRow() //get index of data for selected row
//            
//            secondViewController.data = self.dataArray.objectAtIndex(indexPath.row) // get data by index and pass it to second view controller
//        
//        }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let destinationVC = segue.destination as! ViewController
        destinationVC.even1 = temp
        destinationVC.even2 = "AVG"
    }
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
