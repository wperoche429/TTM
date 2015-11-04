//
//  Language.swift
//  TalkToMe
//
//  Created by Emily Wang on 18/02/15.
//  Copyright (c) 2015 St. Vincents. All rights reserved.
//

import Foundation
class Language: NSObject {
    var bundle: NSBundle?
    
    init (language: String) {
        super.init()
        self.setLanguage(language)
    }
    
    func setLanguage (language: String) {
        let path = NSBundle.mainBundle().pathForResource(language, ofType: "lproj")
        
        bundle = NSBundle(path: path!)!
    }

    func localizedString (key: String) -> String {
        let result = bundle?.localizedStringForKey(key, value: "", table: "Translation")
        return result!
    }
    
    func searchDictionary() -> NSDictionary{
        let path = NSBundle.mainBundle().pathForResource("Translation", ofType: "strings")
        return NSDictionary(contentsOfFile: path!)!
        
    }
}




/*
example calls:
[Language setLanguage:@"it"];
[Language setLanguage:@"de"];
*/
