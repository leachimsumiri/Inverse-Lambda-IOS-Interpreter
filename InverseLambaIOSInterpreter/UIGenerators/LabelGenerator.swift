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
    static func generateLabel(lambdaFileFormat: JSON) -> UILabel{
        let label = UILabel(frame: CGRect(x: CGFloat(lambdaFileFormat["x"].intValue), y: CGFloat(lambdaFileFormat["y"].intValue), width: CGFloat(lambdaFileFormat["width"].intValue), height: CGFloat(lambdaFileFormat["height"].intValue)));
        
        let xCenter = lambdaFileFormat["x"].intValue + (lambdaFileFormat["width"].intValue / 2);
        let yCenter = lambdaFileFormat["y"].intValue + (lambdaFileFormat["height"].intValue / 2);
        label.center = CGPoint(x: xCenter, y: yCenter);
        
        let labelValue = lambdaFileFormat["value"].stringValue;
        label.text = labelValue;
        
        let fontSize = lambdaFileFormat["fontsize"].intValue;
        label.font = .systemFont(ofSize: CGFloat(fontSize));
        
        return label;
    }
}
