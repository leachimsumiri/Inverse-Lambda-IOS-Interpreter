//
//  ViewController.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 01.01.21.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let json = loadJson(fileName: "template");
        print(json);
    }
}

func loadJson(fileName: String) -> JSON? {
    var json = JSON();
    
    guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else { return nil };
    let data = try? Data(contentsOf: url);
    json = JSON(data);
    
    return json;
}
