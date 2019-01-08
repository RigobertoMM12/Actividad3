//
//  ViewController.swift
//  Actividad3
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtinpFactura: UITextField!
    @IBOutlet weak var txtTotalPropina: UITextField!
    @IBOutlet weak var btcinco: UIButton!
    
    @IBOutlet weak var btDiez: UIButton!
    @IBOutlet weak var btQuince: UIButton!
    @IBOutlet weak var btVeinte: UIButton!
    
    @IBOutlet weak var btbinCinco: UIButton!
    var porcentaje:Double = 0;
    @IBOutlet weak var txtTotalTotal: UITextField!
    @IBOutlet weak var lblErrores: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Prueba de comit");
        btcinco.layer.cornerRadius = 5
        btcinco.layer.borderWidth = 1
        btcinco.layer.borderColor = UIColor.black.cgColor
        btDiez.layer.cornerRadius = 5
        btDiez.layer.borderWidth = 1
        btDiez.layer.borderColor = UIColor.black.cgColor
        btQuince.layer.cornerRadius = 5
        btQuince.layer.borderWidth = 1
        btQuince.layer.borderColor = UIColor.black.cgColor
        
        btVeinte.layer.cornerRadius = 5
        btVeinte.layer.borderWidth = 1
        btVeinte.layer.borderColor = UIColor.black.cgColor
        btbinCinco.layer.cornerRadius = 5
        btbinCinco.layer.borderWidth = 1
        btbinCinco.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnDiez(_ sender: UIButton) {
        porcentaje = 0.10;
    }
    @IBAction func btnCinco(_ sender: UIButton) {
        porcentaje = 0.05;
       
    }
    
    @IBAction func btnQuince(_ sender: UIButton) {
        porcentaje = 0.15
    }
    @IBAction func btnVeinte(_ sender: Any) {
        porcentaje = 0.20;
    }
    
    @IBAction func btnbinCinco(_ sender: Any) {
         porcentaje = 0.20;
    }
    @IBAction func btnCalcular(_ sender: UIButton) {
        if(txtinpFactura.text  != ""){
            if(porcentaje > 0){
                lblErrores.text = "";
                let monto = Double(txtinpFactura.text!);
                txtTotalPropina.text = String(monto!*porcentaje);
                var gTotal  = monto! * porcentaje;
                gTotal = gTotal + monto!;
                txtTotalTotal.text = String( gTotal )
            }else{
                 lblErrores.text = "Selecciona un porcentaje"
            }
           
        }else{
            lblErrores.text = "Ingresa el monto de la factura"
        }
        
    }
}

