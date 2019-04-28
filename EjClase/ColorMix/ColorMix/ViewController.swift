//
//  ViewController.swift
//  ColorMix
//
//  Created by macbook on 3/11/19.
//  Copyright © 2019 Sharon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var blueSlide: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var redSlide: UISlider!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var greenSlide: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ya me cargue")
        colorView.layer.borderWidth=5
        colorView.layer.cornerRadius=20
        colorView.layer.borderColor=UIColor.black.cgColor
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func switchAction(_ sender: Any) {
    }
    
    @IBAction func slideAction(_ sender: Any) {
    }
    
    
    @IBAction func reset(_ sender: Any) {
    }
    
}

