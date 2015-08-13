//
//  ViewController.swift
//  MediaNaranja
//
//  Created by g216 DIT UPM on 4/11/14.
//  Copyright (c) 2014 g216 DIT UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nacimiento: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "orange-wall.png")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "Show Info VC" {
            //let ivc = segue.destinationViewController as ViewControllerResultado
        
            let ivc2 = segue.destinationViewController as ViewController2
            
            let nace = nacimiento.date
            //ivc.dNace = nace
            ivc2.dNace = nace
        }
            
        
    }

    @IBAction func goBackHome(sender: UIStoryboardSegue) {
        
    }

    
}

