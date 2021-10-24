
//
//  ViewController.swift
//  SobolevAA_HW2.2
//
//  Created by Андрей Соболев on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ViewOutLet: UIView!
    
    @IBOutlet var RedSlider: UISlider!
    @IBOutlet var GreenSlider: UISlider!
    @IBOutlet var BlueSlider: UISlider!
    
    @IBOutlet var OutRed: UILabel!
    @IBOutlet var OutGreen: UILabel!
    @IBOutlet var OutBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Так удобнее
        RedChanged(self)
    }
    
    @IBAction func RedChanged(_ sender: Any) {
       
        let redValue   = CGFloat(RedSlider.value)
        let greenValue = CGFloat(GreenSlider.value)
        let blueValue  = CGFloat(BlueSlider.value)
               
        ViewOutLet.backgroundColor = UIColor(red: redValue,
                                             green: greenValue,
                                             blue: blueValue,
                                             alpha: 1)
        
        OutRed.text   = String(round(RedSlider.value   * 100) / 100)
        OutGreen.text = String(round(GreenSlider.value * 100) / 100)
        OutBlue.text  = String(round(BlueSlider.value  * 100) / 100)
        
        
    }
    
}

