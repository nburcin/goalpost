//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Nicholas Burcin on 10/25/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    
    @IBOutlet weak var pointsTxt: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxt.delegate = self
    }
    
    @IBAction func createGoalPressed(_ sender: Any) {
        // Pass Data into CoreData Goal Model
    }
}
