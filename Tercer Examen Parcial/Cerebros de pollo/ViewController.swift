//
//  ViewController.swift
//  Cerebros de pollo
//
//  Created by MacBook on 4/29/19.
//  Copyright © 2019 UNAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var pregunta1: UISwitch!
    @IBOutlet weak var pregunta2: UISwitch!
    @IBOutlet weak var pregunta3: UISwitch!
    @IBOutlet weak var textoT: UILabel!
    @IBOutlet weak var codigoT: UITextField!
    @IBOutlet weak var botonE: UIButton!
    @IBAction func enviarT(_ sender: Any) {
        if pregunta1.isOn && !pregunta2.isOn && pregunta3.isOn{
            textoT.text = "Felicidades!, Ganaste"
            codigoT.text = "DSPT56"
            botonE.isHidden = true
        } else {
            textoT.text = "Perdiste!, Intentalo de nuevo"
        }
    }
    @IBOutlet weak var labelCDisco: UITextField!
    @IBOutlet weak var stepperDisco: UIStepper!
    @IBAction func valorStepDisco(_ sender: UIStepper) {
        if 0...10 ~= sender.value{
            labelCDisco.text = Int(sender.value).description
            
        }else{
            stepperDisco.value = 10
        }
    }
    @IBOutlet weak var labelCFigura: UITextField!
    @IBOutlet weak var stepperFigura: UIStepper!
    @IBAction func valorStepFigura(_ sender: UIStepper) {
        if 0...10 ~= sender.value{
            labelCFigura.text = Int(sender.value).description
            
        }else{
            stepperFigura.value = 10
        }
    }
    @IBOutlet weak var labelPromo: UITextField!
    
    @IBAction func comprarB(_ sender: Any) {
        let cantidad = stepperFigura.value + stepperDisco.value
        if cantidad <= 0 {
            let alertError = UIAlertController(title: "Error", message: "Debes agregar al menos un objeto a la compra", preferredStyle: .alert)
            alertError.addAction(UIAlertAction(title: "Aceptar", style: .default))
            self.present(alertError, animated: true, completion: nil)
        }else{
            var total = (stepperDisco.value * 599) + (stepperFigura.value * 250)
            if labelPromo.text == "DSPT56"{
                total = total/2
            }
            let alertController = UIAlertController(title: "Gracias por tu compra", message:
                "Total: $\(total)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
}

