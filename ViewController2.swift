//
//  ViewController2.swift
//  MediaNaranja
//
//  Created by g216 DIT UPM on 5/11/14.
//  Copyright (c) 2014 g216 DIT UPM. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
    
    var dNace: NSDate?
    var amor: NSDate?
    var comparaModel: ComparaModel!
    @IBOutlet weak var enamorar: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comparaModel = ComparaModel()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "orange-wall.png")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Show Info VC" {
            
            let ivc = segue.destinationViewController as ViewController3
            
            amor = enamorar.date

            ivc.dAmor = amor
            ivc.dNace = dNace
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        
        if identifier == "Show Info VC" {
            amor = enamorar.date
            if comparaModel.comparaFechas(dNace!, last: amor!) {
                
                let mensaje = "No puedes enamorarte antes de nacer"
                // Presentar el Alert Controller:
                presentViewController(comparaModel.showActionSheet(mensaje), animated: true, completion: nil)
                return false
            }
                
            else {
                return true
            }
        }
        
        
        // by default, transition
        return true
    }
    
    
}