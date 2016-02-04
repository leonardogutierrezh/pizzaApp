//
//  ViewResultado.swift
//  PizzaApp
//
//  Created by Leonardo Gutierre Hernandez on 2/2/16.
//  Copyright © 2016 Uzeke Digital. All rights reserved.
//

import UIKit

class ViewResultado: UIViewController {

    var configuracion: [String:String]!
    @IBOutlet weak var labelConf: UILabel!
    
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
    
    override func viewWillAppear(animated: Bool) {
        var resultado = "Pizza " + configuracion["tam"]!
        resultado =  resultado + " con masa " + configuracion["masa"]!
        resultado = resultado + ", queso " + configuracion["queso"]!
        resultado = resultado + " y topping de " + configuracion["topping"]!
        labelConf.text = resultado
    }

}
