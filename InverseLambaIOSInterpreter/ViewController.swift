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
    }
}
