//
//  SecondViewController.swift
//  backToTheFuture
//
//  Created by ahmed kamel on 11/5/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        let utils = utilities()
        let year = utilities().getRandomYear()
        
        lab1.text = utils.getLetterAtIndex(str: year, location: 0)
        lab2.text = utils.getLetterAtIndex(str: year, location: 1)
        lab3.text = utils.getLetterAtIndex(str: year, location: 2)
        lab4.text = utils.getLetterAtIndex(str: year, location: 3)
        
        animateView(duration: 1, delay: 0, object: lab1)
        animateView(duration: 1, delay: 0.2, object: lab2)
        animateView(duration: 1, delay: 0.4, object: lab3)
        animateView(duration: 1, delay: 0.6, object: lab4)
        
    }
    
    func animateView (duration: Double, delay: Double, object: UIView){
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
            //in this scobe you set end state it will animate to  start state
        }) { (true) in
            
        }
    }
    
    

}

