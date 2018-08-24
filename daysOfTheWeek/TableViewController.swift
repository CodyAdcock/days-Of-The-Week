//
//  TableViewController.swift
//  daysOfTheWeek
//
//  Created by Cody on 8/21/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var days: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return days.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        let day = days[indexPath.row]
        cell.textLabel?.text = day        
        return cell
    }
 

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //check if it's the right segue
        if segue.identifier == "toDetailVC"{
            //
            let destinationVC = segue.destination as? DayViewController
            //
            guard let indexPath = tableView.indexPathForSelectedRow else{return}
            //
            let day = days[indexPath.row]
            //
            destinationVC?.day = day
        }
    }
    

}
