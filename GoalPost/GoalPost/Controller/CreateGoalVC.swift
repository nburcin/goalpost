//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Nicholas Burcin on 10/24/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
