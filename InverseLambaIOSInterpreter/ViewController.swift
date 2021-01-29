//
//  ViewController.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 01.01.21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let lambdaFileFormat = lambdaLoader(fileName: "template")!;
        print(lambdaFileFormat);
        
        let that = self;
        
        for (index, object) in lambdaFileFormat {
            if(object["typ"].stringValue == "but00"){
                let button = ButtonGenerator.generateButton(lambdaFileFormat: object);
                that.view.addSubview(button);
            } else if(object["typ"].stringValue == "num00"){
                let textField = TextFieldGenerator.generateTextView(lambdaFileFormat: object);
                that.view.addSubview(textField);
            }
        }
    }
}
