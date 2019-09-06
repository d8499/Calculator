//
//  ViewController.swift
//  calculator
//
//  Created by COE-028 on 04/09/19.
//  Copyright © 2019 COE-028. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variable of type double and set to zero
    
    var numberOnScreen :Double = 0
    // display number that is entered using label outlet
    var previousnumber :Double = 0
    //hold the number
    var operationMath = false
        // no operation is selected
    
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    //numbers with action UIbutton
    @IBAction func numbers(_ sender: UIButton) {
       //connect 1 to 9 to Action
        
        
        if operationMath == true
        {//operartion is selected so label
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            
            
         operationMath = false
            
        }
        else
        {
            
        
        
    //using label
        label.text = label.text! + String(sender.tag-1)//1 2
        //12 3 and so on..
        //simply display text on screen
    
        
        //now storing data in var numberOnScreen with converting string label.text into double
        numberOnScreen = Double(label.text!)!
        }
        }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        //if sender.tag ==
        
        
        
     //connect /,*,+,-,= drag
        if  label.text != "" && sender.tag != 11 && sender.tag != 16
        {//before operation previous number have data
            previousnumber = Double(label.text!)!
            if sender.tag == 12//divide
            {
                label.text = "/"
            }
            else if sender.tag == 13//multiply
            {
                label.text = "*"
            }
            else if sender.tag == 14//minus
            {
                label.text = "-"
            }
            else if sender.tag == 15//plus
            {
                label.text = "+"
            }
            
            operation = sender.tag
            
            
            
            //operation is selected
            operationMath = true
            
            
           
            
        }
        else if sender.tag == 16
        { //"= " code

            if operation == 12
            {
                label.text = String(previousnumber/numberOnScreen)

            }
            else if operation == 13
            {
                label.text = String(previousnumber*numberOnScreen)

            }
            else if operation == 14
            {
                label.text = String(previousnumber-numberOnScreen)

            }
            else if operation == 15
            {
label.text = String(previousnumber+numberOnScreen)
            }
            
           
            
        }
            
        else if sender.tag == 11
        {
            //clear
            label.text = ""
            previousnumber=0
            numberOnScreen=0
            operation = 0
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

