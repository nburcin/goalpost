//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Nicholas Burcin on 10/24/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    // Outlets
    
    
    
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button Was Pressed!")
    }
    
}

