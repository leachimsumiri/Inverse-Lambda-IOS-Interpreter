//
//  TextViewGenerator.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 05.01.21.
//

import Foundation
import SwiftyJSON
import UIKit

class TextViewGenerator {
    static func generateTextView(lambdaFileFormat: JSON) -> UITextView {
        let textView = UITextView(
            frame: CGRect(
                x: CGFloat(lambdaFileFormat["l"].intValue),
                y: CGFloat(lambdaFileFormat["t"].intValue),
                width: CGFloat(lambdaFileFormat["w"].intValue),
                height: CGFloat(lambdaFileFormat["h"].intValue)
            )
        );
        
        let textViewValue = lambdaFileFormat["value"].stringValue;
        textView.text = textViewValue;
        
        let xCenter = lambdaFileFormat["x"].intValue + (lambdaFileFormat["width"].intValue / 2);
        let yCenter = lambdaFileFormat["y"].intValue + (lambdaFileFormat["height"].intValue / 2);
        textView.center = CGPoint(x: xCenter, y: yCenter);
        
        textView.textColor = UIColor(hex: lambdaFileFormat["color"].stringValue);
        textView.backgroundColor = UIColor(hex: lambdaFileFormat["backgroundColor"].stringValue);
        textView.font = .systemFont(ofSize: CGFloat(lambdaFileFormat["fontsize"].intValue));
        
        return textView;
    }
}
