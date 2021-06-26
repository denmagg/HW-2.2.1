//
//  ViewController.swift
//  HW 2.2.1
//
//  Created by Denis Medvedev on 26/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func redSlider() {
        redLabel.text = String(redSliderOutlet.value)
        redTF.text = String(redSliderOutlet.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                          green: CGFloat(greenSliderOutlet.value),
                                          blue: CGFloat(blueSliderOutlet.value),
                                          alpha: 1.0)
    }
    @IBAction func greenSlider() {
        greenLabel.text = String(greenSliderOutlet.value)
        greenTF.text = String(greenSliderOutlet.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                          green: CGFloat(greenSliderOutlet.value),
                                          blue: CGFloat(blueSliderOutlet.value),
                                          alpha: 1.0)
    }
    
    @IBAction func blueSlider() {
        blueLabel.text = String(blueSliderOutlet.value)
        blueTF.text = String(blueSliderOutlet.value)
        rgbView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                          green: CGFloat(greenSliderOutlet.value),
                                          blue: CGFloat(blueSliderOutlet.value),
                                          alpha: 1.0)
    }
    
    
    
}

