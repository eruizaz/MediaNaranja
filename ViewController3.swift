//
//  ViewController3.swift
//  MediaNaranja
//
//  Created by g216 DIT UPM on 5/11/14.
//  Copyright (c) 2014 g216 DIT UPM. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var muerte: UIDatePicker!
    var dNace: NSDate?
    var dAmor: NSDate?
    var muere: NSDate?
    var comparaModel: ComparaModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        comparaModel = ComparaModel()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "orange-wall.png")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Show Info VC" {
            
            let ivc = segue.destinationViewController as ViewControllerResultado
            
            muere = muerte.date
            
            ivc.dMuere = muere
            ivc.dNace = dNace
            ivc.dAmor = dAmor
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        
        if identifier == "Show Info VC" {
            muere = muerte.date
            if comparaModel.comparaFechas(dAmor!, last: muere!) {
                let mensaje = "No puedes morir sin enamorarte."
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