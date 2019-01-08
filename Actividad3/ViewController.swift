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
    var porcentaje:Double = 0;
    @IBOutlet weak var txtTotalTotal: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Prueba de comit");
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnDiez(_ sender: UIButton) {
        porcentaje = 0.10;
    }
    @IBAction func btnCinco(_ sender: UIButton) {
        porcentaje = 0.05
    }
    
    @IBAction func btnQuince(_ sender: UIButton) {
        porcentaje = 0.15
    }
    @IBAction func btnVeinte(_ sender: Any) {
        porcentaje = 0.20;
    }
    @IBAction func btnCalcular(_ sender: UIButton) {
    }
}

