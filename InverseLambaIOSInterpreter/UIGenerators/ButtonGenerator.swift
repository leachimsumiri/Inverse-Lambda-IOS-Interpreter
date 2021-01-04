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
    static func generateButton(json: JSON) -> UIButton{
        let button = UIButton();
        let buttonValue = json["value"].stringValue;
        button.setTitle(buttonValue, for: []);
        button.backgroundColor = UIColor.orange;
        button.frame = CGRect(x: CGFloat(json["x"].intValue), y: CGFloat(json["y"].intValue), width: CGFloat(json["width"].intValue), height: CGFloat(json["height"].intValue));
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside);
        
        return button;
    }
    
    @objc func buttonAction() {
       //some Action
        print("button function executed")
    }
}
