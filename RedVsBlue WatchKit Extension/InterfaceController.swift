//
//  InterfaceController.swift
//  RedVsBlue WatchKit Extension
//
//  Created by Clint on 2/8/15.
//  Copyright (c) 2015 Republic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var bgGroup: WKInterfaceGroup!
    
    @IBOutlet weak var alphaSlider: WKInterfaceSlider!
    
    @IBOutlet weak var coolSwitch: WKInterfaceSwitch!
    
    @IBOutlet weak var titleField: WKInterfaceLabel!
    
    //create our colors
    var redColor = UIColor.redColor()
    var blueColor = UIColor.blueColor()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        //set all initial values
        setInitialValues()
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //function for the switch
    @IBAction func switchTapped(value: Bool) {
        
        if value == true {
            
            self.titleField.setText("Cool")
            self.bgGroup.setBackgroundColor(blueColor)
            
        } else {
            
            self.titleField.setText("Hot")
            self.bgGroup.setBackgroundColor(redColor)
        }
        
    }
    
    
    //function for the slider
    @IBAction func sliderDidSlide(value: Float) {
        
        
        println(value)
        
        switch value {
            
        case 1.0:
            bgGroup.setAlpha(0.2)
        case 2.0:
            bgGroup.setAlpha(0.4)
        case 3.0:
            bgGroup.setAlpha(0.6)
        case 4.0:
            bgGroup.setAlpha(0.8)
        case 5.0:
            bgGroup.setAlpha(1.0)
        default:
            println("Default value printed")
        }
        
        
    }
    
    
    //function for resetbutton
    @IBAction func resetButton() {
        
        println("pressed reset")
        setInitialValues()
        

    }
    
    //helper function to reset to default values
    func setInitialValues () {
        
        println("call to setInitialValues")
        //set everything to default values
        self.bgGroup.setBackgroundColor(blueColor)
        self.bgGroup.setAlpha(1.0)
        self.alphaSlider.setValue(5.0)
        self.coolSwitch.setOn(true)
        self.titleField.setText("Cool")
        
        
    }
    
    
    
    
    
}
