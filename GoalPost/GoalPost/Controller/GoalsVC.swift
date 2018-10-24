//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Nicholas Burcin on 10/24/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button Was Pressed!")
    }
    
}

