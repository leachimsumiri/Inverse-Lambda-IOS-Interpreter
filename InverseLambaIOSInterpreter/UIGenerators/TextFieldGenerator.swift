//
//  TextFieldGenerator.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 29.01.21.
//

import Foundation
import SwiftyJSON
import UIKit

class TextFieldGenerator {
    static func generateTextView(lambdaFileFormat: JSON) -> UITextField {
        let textField = UITextField();
        
        let frame = CGRect(x: lambdaFileFormat["l"].intValue,
                           y: lambdaFileFormat["t"].intValue,
                           width: lambdaFileFormat["w"].intValue,
                           height: lambdaFileFormat["h"].intValue);
        textField.frame = frame;
        
        textField.placeholder = "TextField";
        textField.borderStyle = UITextField.BorderStyle.roundedRect;

        return textField;
    }
}
