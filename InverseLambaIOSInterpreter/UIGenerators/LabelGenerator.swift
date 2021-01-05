//
//  TextGenerator.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 05.01.21.
//

import Foundation

import Foundation
import SwiftyJSON
import UIKit

class LabelGenerator {
    static func generateLabel(json: JSON) -> UILabel{
        let label = UILabel(frame: CGRect(x: CGFloat(json["x"].intValue), y: CGFloat(json["y"].intValue), width: CGFloat(json["width"].intValue), height: CGFloat(json["height"].intValue)));
        
        let xCenter = json["x"].intValue + (json["width"].intValue / 2);
        let yCenter = json["y"].intValue + (json["height"].intValue / 2);
        label.center = CGPoint(x: xCenter, y: yCenter)
        
        let labelValue = json["value"].stringValue;
        label.text = labelValue
        
        let fontSize = json["fontsize"].intValue;
        label.font.withSize(CGFloat(fontSize));
        
        return label;
    }
}
