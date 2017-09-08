//
//  ViewController.swift
//  ColdCall
//
//  Created by H on 9/7/17.
//  Copyright © 2017 H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let names = ["Jay", "Mom", "Ashu", "Sadhana", "Bhramita"]
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        let randomNum = Int(arc4random_uniform(5) + 1)
        print(randomNum)
        nameLabel.text = names[randomNum - 1]
        numberLabel.text = String(randomNum)
        
        if String(randomNum) == "1" || String(randomNum) == "2" {
            numberLabel.textColor = UIColor.red
        }
        else if String(randomNum) == "3" || String(randomNum) == "4" {
            numberLabel.textColor = UIColor.orange
        }
        else {
            numberLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

