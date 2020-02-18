//
//  ViewController.swift
//  PM2_storyboardCalculadora
//
//  Created by Gerardo on 17/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var operador1=0
    var operador2=0
    
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var lblOperador1: UILabel!
    @IBOutlet weak var lblSigno: UILabel!
    @IBOutlet weak var lblOperador2: UILabel!
    
    @IBOutlet weak var btnMas: UIButton!
    @IBOutlet weak var btnMenos: UIButton!
    @IBOutlet weak var btnMultiplicar: UIButton!
    @IBOutlet weak var btnDividir: UIButton!
    @IBOutlet weak var btnIgual: UIButton!
    @IBOutlet weak var btnBorrar: UIButton!
    
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn0: UIButton!
    
    
    
    @IBAction func agregarNumero9(_ sender: Any) {
        agregarNumero(operador: 9)
    }
    @IBAction func agregarNumero8(_ sender: Any) {
        agregarNumero(operador: 8)
    }
    @IBAction func agregarNumero7(_ sender: Any) {
        agregarNumero(operador: 7)
    }
    @IBAction func agregarNumero6(_ sender: Any) {
        agregarNumero(operador: 6)
    }
    @IBAction func agregarNumero5(_ sender: Any) {
        agregarNumero(operador: 5)
    }
    @IBAction func agregarNumero4(_ sender: Any) {
        agregarNumero(operador: 4)
    }
    @IBAction func agregarNumero3(_ sender: Any) {
        agregarNumero(operador: 3)
    }
    @IBAction func agregarNumero2(_ sender: Any) {
        agregarNumero(operador: 2)
    }
    @IBAction func agregarNumero1(_ sender: Any) {
        agregarNumero(operador: 1)
    }
    @IBAction func agregarNumero0(_ sender: Any) {
        agregarNumero(operador: 0)
    }
    
    @IBAction func sumar(_ sender: Any) {
        lblSigno.text = "+"
    }
    @IBAction func restar(_ sender: Any) {
        lblSigno.text = "-"
    }
    @IBAction func multiplicar(_ sender: Any) {
        lblSigno.text = "*"
    }
    @IBAction func dividir(_ sender: Any) {
        lblSigno.text = "/"
    }
    @IBAction func hacerOperacion(_ sender: Any) {
        
        var res=0
        switch lblSigno.text {
        case "+":
            res = operador1 + operador2
            break
        case "-":
            res = operador1 - operador2
            break
        case "*":
            res = operador1 * operador2
            break
        default:
            res = operador1 / operador2
            break
        }
        lblResultado.text = String(res)
    }
    
    @IBAction func borrar(_ sender: Any) {
        lblResultado.text = ""
        lblOperador1.text = ""
        lblSigno.text = ""
        lblOperador2.text = ""
    }
    
    
    func agregarNumero(operador :Int) {
        if lblSigno.text == "" {
            lblOperador1.text = lblOperador1.text! + String(operador)
            operador1 = Int(lblOperador1.text!) ?? 0
        }
        else {
            lblOperador2.text = lblOperador2.text! + String(operador)
            operador2 = Int(lblOperador2.text!) ?? 0
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnBorrar.tintColor = UIColor.red
    }


}

