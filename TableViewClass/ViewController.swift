//
//  ViewController.swift
//  TableViewClass
//
//  Created by miceli on 4/22/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DayinWeek: UILabel!
    @IBOutlet weak var Event1: UILabel!
    var title1 = String()
    var even1 = String()
    var even2 = String()
    
    @IBOutlet weak var Event2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        DayinWeek.text = title1
        Event1.text = even1
        Event2.text = even2
       // let indexPath = EventTheWeek.indexPathForSelectedRow!
//        let currentCellValue = EventTheWeek.cellForRowAtIndexPath(IndexPath)! as UITableViewCell
//        NSLog(currentCellValue)
        
       // let item = EventTheWeek.cellForRowAtIndexPath(IndexPath)!.textLabel!.text!
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

