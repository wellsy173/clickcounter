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
        
        let colorLabel = UILabel()
        colorLabel.frame = CGRect(x :150, y: 100, width: 120, height: 60)
        //colorLabel.backgroundColor = UIColor.colorChoice
         //colorLabel.backgroundColor =
        
        UIColor.ColorChoice.RawValue
        //colorLabel.bacvkgrounfColor= ColorChoice.RawValue
        colorLabel.backgroundColor = ColorChoice
        view.addsubview(colorLabel)
        self.colorLabel = colorLabel
        
        enum ColorChoice: Int {
            
            case blue
            case red
            case yellow
            
            var index: Int {
                return rawValue
                
            }
            
            var value = UIColor {
                return [UIColor.blue, UIColor.red, UIColor.yellow]
                [self.rawValue]
            }
        }

    
    //button
    let button = UIButton()
    button.frame = CGRect (x: 150, y:250, width: 60, height: 60)
    button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
       button.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    
    
    
    
    
    
    @objc func incrementCount() {
    self.count += 1
    self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"

    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.decrementLabel.text = "\(self.count)"
    }
}



