//
//  ViewController.swift
//  EventInWeek
//
//  Created by imac on 5/4/17.
//  Copyright © 2017 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DayinWeek: UILabel!
    @IBOutlet weak var TitleEvent: UILabel!
    @IBOutlet weak var detailEvent: UILabel!
    var day = String()
    var title1 = String()
    var detail = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        DayinWeek.text = day
        TitleEvent.text = title1
        detailEvent.text = detail
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

