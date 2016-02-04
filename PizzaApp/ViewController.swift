//
//  ViewController.swift
//  PizzaApp
//
//  Created by Leonardo Gutierre Hernandez on 1/30/16.
//  Copyright © 2016 Uzeke Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var configuracion: [String: String] = ["tam": "", "masa": "", "queso": "", "topping": ""]
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var sizePicker: UIPickerView!
    @IBOutlet weak var nextButton: UIButton!
    let pickerData = ["...", "chica", "mediana", "grande"]
    override func viewDidLoad() {
        super.viewDidLoad()
        sizePicker.dataSource = self
        sizePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        nextButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sizeLabel.text = "Quiero una pizza de tamaño: " + pickerData[row]
        if pickerData[row] != "..."{
            nextButton.enabled = true
            configuracion["tam"] = pickerData[row]
        } else {
            nextButton.enabled = false
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ViewMasa
        sigVista.configuracion = configuracion
    }
}

