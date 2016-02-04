//
//  ViewQueso.swift
//  PizzaApp
//
//  Created by Leonardo Gutierre Hernandez on 1/31/16.
//  Copyright © 2016 Uzeke Digital. All rights reserved.
//

import UIKit

class ViewQueso: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var configuracion: [String: String]!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var quesoPicker: UIPickerView!
    let quesoData = ["...", "mozarela", "cheddar", "parmesano", "sin queso"]
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quesoPicker.dataSource = self
        quesoPicker.delegate = self
        nextButton.enabled = false
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
        return quesoData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesoData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoLabel.text = "Quiero masa de tipo: " + quesoData[row]
        if quesoData[row] == "..."{
            nextButton.enabled = false
        }else{
            nextButton.enabled = true
            configuracion["queso"] = quesoData[row]
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ViewTopping
        sigVista.configuracion = configuracion
    }
    
}
