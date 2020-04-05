//
//  ViewController.swift
//  clickCounter
//
//  Created by Simon Wells on 2020/4/5.
//  Copyright © 2020 Simon Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel! //implicity unwrapped optional properties can be nil and still compile. it is nil at at compile time because it hasn't been intialised//
    var label2: UILabel!
    var decrementLabel: UILabel!
    var colourCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view.
        // label//
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label // taking the object referece stored in a local variable in viewDidLoad and giving that value a more permanent place in our property- this connection will enable view controller  to set the labels text when the button is pressed//
        
        let label2 = UILabel()
        label2.frame = CGRect (x: 180, y: 180, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        let decrementLabel = UILabel()
        decrementLabel.frame = CGRect (x:100, y:100, width: 60, height: 60)
        decrementLabel.text = "0"
        view.addSubview(decrementLabel)
        self.decrementLabel = decrementLabel
        
            
    
    //button
    let button = UIButton()
    button.frame = CGRect (x: 150, y:250, width: 60, height: 60)
    button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect (x:50, y:50, width: 60, height: 60)
        decrementButton.setTitle("click", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
       decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    let colourButton = UIButton()
    colourButton.frame = CGRect (x: 75, y:75, width: 60, height: 50)
    colourButton.setTitle("click", for: .normal)
    colourButton.setTitleColor(UIColor.blue, for: .normal)
    view.addsubview(colourButton)
    
    colourButton.addTarget(self, action: #selector(ViewController.changeColour), for: UIControl.Event.touchupInside)
    
    
    @objc func incrementCount() {
       self.count += 1
       self.label.text = "\(self.count)"
           self.label2.text = "\(self.count)"
       }
       
       @objc func decrementCount() {
           self.count -= 1
           self.decrementLabel.text = "\(self.count)"
    
    
   func changeColour() {
    switch colourCount {
    case 0: view.backgroundColor = UIColor.red; self.colourCount += 1
    case 1: view.backgroundColor = UIColor.blue; self.colourCount += 1
    case 2: view.backgroundColor = UIColor.yellow; self.colourCount += 1
    default: print("Cannot change view.backgroundColor property.")
    }
    
    
    }
}

}

