//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Nicholas Burcin on 10/25/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit
import CoreData

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
        if pointsTxt.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxt.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save \(error)")
            completion(false)
        }
    }
}
