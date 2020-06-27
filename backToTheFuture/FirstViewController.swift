//
//  FirstViewController.swift
//  backToTheFuture
//
//  Created by ahmed kamel on 11/5/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let year = utilities().getCurrentYear()
        
        label1.text = utilities().getLetterAtIndex(str: year, location: 0)
        label2.text = utilities().getLetterAtIndex(str: year, location: 1)
        label3.text = utilities().getLetterAtIndex(str: year, location: 2)
        label4.text = utilities().getLetterAtIndex(str: year, location: 3)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
    }
    @objc func tick (){
        timeLabel.text = utilities().getCurrentTime()
    }
}

