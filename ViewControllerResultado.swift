//
//  ViewControllerResultado.swift
//  MediaNaranja
//
//  Created by g216 DIT UPM on 5/11/14.
//  Copyright (c) 2014 g216 DIT UPM. All rights reserved.
//

import UIKit

class ViewControllerResultado: UIViewController {
    
    var msg = ""
    
    var dNace: NSDate?
    var dAmor: NSDate?
    var dMuere: NSDate?
    
    @IBOutlet weak var porcentaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let c = NSString(format: "%.2f", calcula())
        porcentaje.text = "\(c) %"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "orange-wall.png")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calcula() ->Double {
        let m = getIntervalo(dMuere!)
        let a = getIntervalo(dAmor!)
        let n = getIntervalo(dNace!)
        let d = (m-a)/(m-n)*100
        return d
    }
    func getIntervalo(midate: NSDate)->Double{
        let t = midate.timeIntervalSinceNow
        return t
    }

}