//
//  ViewFinal.swift
//  PizzaApp
//
//  Created by Leonardo Gutierre Hernandez on 2/3/16.
//  Copyright © 2016 Uzeke Digital. All rights reserved.
//

import UIKit

class ViewFinal: UIViewController {
    var configuracion: [String: String]!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ViewController
        sigVista.configuracion = ["tam": "", "masa": "", "queso": "", "topping": ""]
    }

}
