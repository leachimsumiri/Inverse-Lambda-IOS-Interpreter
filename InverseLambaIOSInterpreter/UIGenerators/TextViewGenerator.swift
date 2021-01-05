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
    static func generateTextView(json: JSON) -> UITextView {
        let textView = UITextView(frame: CGRect(x: CGFloat(json["x"].intValue), y: CGFloat(json["y"].intValue), width: CGFloat(json["width"].intValue), height: CGFloat(json["height"].intValue)));
        
        let textViewValue = json["value"].stringValue;
        textView.text = textViewValue;
        
        let xCenter = json["x"].intValue + (json["width"].intValue / 2);
        let yCenter = json["y"].intValue + (json["height"].intValue / 2);
        textView.center = CGPoint(x: xCenter, y: yCenter);
        
        textView.textColor = UIColor(hex: json["color"].stringValue);
        textView.backgroundColor = UIColor(hex: json["backgroundColor"].stringValue);
        textView.font = .systemFont(ofSize: CGFloat(json["fontsize"].intValue));
        
        return textView;
    }
}
