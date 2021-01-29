//
//  ButtonGenerator.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 04.01.21.
//

import Foundation
import SwiftyJSON
import UIKit

class ButtonGenerator {
    static func generateButton(lambdaFileFormat: JSON) -> UIButton{
        let button = UIButton();
        
        var buttonValue = "Button";
        
        if(lambdaFileFormat["value"].exists()){
            buttonValue = lambdaFileFormat["value"].stringValue;
        }
        
        button.setTitle(buttonValue, for: []);
        
        button.backgroundColor = UIColor.black;
        
        button.frame = CGRect(
            x: CGFloat(lambdaFileFormat["l"].intValue),
            y: CGFloat(lambdaFileFormat["t"].intValue),
            width: CGFloat(lambdaFileFormat["w"].intValue),
            height: CGFloat(lambdaFileFormat["h"].intValue));
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside);
        
        return button;
    }
    
    @objc func buttonAction() {
       //some Action
        //lambdaFileFormat["events"]
        print("button function executed")
    }
}
