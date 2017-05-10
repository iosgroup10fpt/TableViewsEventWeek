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
    
    @IBAction func ActionSort(_ sender: Any) {
        title1[0] = title1[0].sorted(by: { $0 > $1 } )
        title1[1] = title1[1].sorted(by: { $0 > $1 } )
        title1[2] = title1[2].sorted(by: { $0 > $1 } )
        title1[3] = title1[3].sorted(by: { $0 > $1 } )
        title1[4] = title1[4].sorted(by: { $0 > $1 } )
        title1[5] = title1[5].sorted(by: { $0 > $1 } )
        title1[6] = title1[6].sorted(by: { $0 > $1 } )
        title1[7] = title1[7].sorted(by: { $0 > $1 } )
        NSLog("Up")
        NSLog("\(title1[0])")
    }
    
    var daysInWeek = ["MonDay","TueDay","WednesDay","ThursDay","FriDay","SaturDay","SunDay"]
    var title1 = [
        
        ["title","title2","title3","title4"],
        ["title5","title6","title7","title8"],
        ["title9","title10","title11","title12"],
        ["title13","title14","title15","title16"],
        ["title17","title18","title19","title20"],
        ["title21","title22","title23","title24"],
        ["title25","title26","title27","title28"],
        ["title29","title30","title31","title32"],
        
        ]

    var sectionDetail = [
    
            ["event1","event2","event3","event4"],
            ["event5","event6","event7","event9"],
            ["event10","event11","event12","event13"],
            ["event14","event15","event16","event17"],
            ["event18","event19","event20","event21"],
            ["event22","event23","event24","event25"],
            ["event26","event27","event28","event29"],
            ["event30","event31","event32","event33"],
    
    ]
    var num1 = 3 , num2 = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = editButtonItem
        
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
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]

        }
        if(indexPath.section == 1){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]
        }
        if(indexPath.section == 2){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]
            
        }
        if(indexPath.section == 3){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]
            
        }
        if(indexPath.section == 4){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]        }
        if(indexPath.section == 5){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]
        }
        if(indexPath.section == 6){
            cell.titleEvent?.text = title1[indexPath.section][indexPath.row]
            cell.DetailEvent?.text = sectionDetail[indexPath.section][indexPath.row]
            
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
//            if (indexPath.section==0)
//            {
//                NSLog("\(indexPath.row)")
//               sectionDetail[0].remove(at: indexPath.row)
//                title1[0].remove(at: indexPath.row)
//            }
//            if (indexPath.section==1)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
//            if (indexPath.section==2)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
//            if (indexPath.section==3)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
//            if (indexPath.section==4)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
//            if (indexPath.section==5)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
//            if (indexPath.section==6)
//            {
//                sectionDetail[indexPath.section].remove(at: indexPath.row)
//                title1[indexPath.section].remove(at: indexPath.row)
//
//            }
           // tableView.deleteRows(at: [indexPath], with: .fade)
            // Delete the row from the data source
//            let eventLine = eventLines[indexPath.section]
//            eventLine.events.remove(at: indexPath.row)
            NSLog("\(indexPath.section)")
            NSLog("\(indexPath.row)")
            daysInWeek.remove(at: indexPath.row)
            //title1[indexPath.section].remove(at: indexPath.row)
           // tableView.deleteRows(at: [indexPath], with: .fade)
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
        destinationVC.even2 = temp1
        destinationVC.title1 = temp2
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
