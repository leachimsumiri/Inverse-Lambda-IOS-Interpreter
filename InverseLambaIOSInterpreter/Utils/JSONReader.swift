//
//  JSONReader.swift
//  InverseLambaIOSInterpreter
//
//  Created by Michael Irimus on 04.01.21.
//

import Foundation
import SwiftyJSON

func readJson(fileName: String) -> JSON? {
    var json = JSON();
    
    guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else { return nil };
    let data = try? Data(contentsOf: url);
    json = JSON(data!);
    
    return json;
}
