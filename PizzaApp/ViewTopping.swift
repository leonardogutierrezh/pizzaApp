//
//  ViewTopping.swift
//  PizzaApp
//
//  Created by Leonardo Gutierre Hernandez on 2/1/16.
//  Copyright © 2016 Uzeke Digital. All rights reserved.
//

import UIKit

class ViewTopping: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var configuracion: [String: String]!
    @IBOutlet weak var toppingLabel: UILabel!
    @IBOutlet weak var toppingPicker: UIPickerView!
    let toppingData = ["...", "jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        toppingPicker.dataSource = self
        toppingPicker.delegate = self
        nextButton.enabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return toppingData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return toppingData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        toppingLabel.text = "Quiero masa de tipo: " + toppingData[row]
        if toppingData[row] == "..."{
            nextButton.enabled = false
        }else{
            nextButton.enabled = true
            configuracion["topping"] = toppingData[row]
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ViewResultado
        sigVista.configuracion = configuracion
    }

}
