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
        
        let json = readJson(fileName: "template");
        print(json!);
        
        let button = ButtonGenerator.generateButton(json: json!["uielement"][0]);
        self.view.addSubview(button);
        
        let label = LabelGenerator.generateLabel(json: json!["uielement"][1]);
        self.view.addSubview(label);
        
        let textView = TextViewGenerator.generateTextView(json: json!["uielement"][2]);
        self.view.addSubview(textView);
    }
}
