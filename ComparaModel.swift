//
//  ComparaModel.swift
//  MediaNaranja
//
//  Created by g216 on 12/11/14.
//  Copyright (c) 2014 g216 DIT UPM. All rights reserved.
//

import Foundation
import UIKit
class ComparaModel {
    init(){}
    func comparaFechas (current: NSDate, last: NSDate) -> Bool{
        var dateComparisionResult:NSComparisonResult = current.compare(last)
        
        if dateComparisionResult == NSComparisonResult.OrderedAscending
        {
            // Current date is smaller than end date.
            return false
        }
        else if dateComparisionResult == NSComparisonResult.OrderedDescending
        {
            // Current date is greater than end date.
            return true
        }
        else if dateComparisionResult == NSComparisonResult.OrderedSame
        {
            // Current date and end date are same.
            return false
        }
        return true
    }
    
    func showActionSheet(mensaje: String)->UIAlertController {
        
        // Crear un UIAlertController:
        var alert = UIAlertController(title: "Error",
            message: mensaje,
            preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        // Añadir una Action al Alert Controller:
        alert.addAction(
            UIAlertAction(title: "OK",
                style: UIAlertActionStyle.Default,
                handler: {(alert :UIAlertAction!)in
            
            }))
        
        return alert
    }


}