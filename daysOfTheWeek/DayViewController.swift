//
//  DayViewController.swift
//  daysOfTheWeek
//
//  Created by Cody on 8/21/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class DayViewController: UIViewController {

    var day: String?
    @IBOutlet weak var dayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        if let day = day{
            dayLabel.text = "It is \(day) my dudes."
        }
    }
        


}
