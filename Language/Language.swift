//
//  Language.swift
//  Language
//
//  Created by Auzan Lazuardi on 24/02/24.
//

import Foundation
import i18next

public class Language {
    
    public init() {}
    
    private let locale = I18Next()
    private let options = I18NextOptions()
    private var langResult = ""
        
    public func getHardCoded() {
        print("hardcoded data")
    }
    
    public func testLanguage(key: String) -> String {
        let json = LanguageUtils.shared.loadJSON(filename: "language")
        
        options.resourcesStore = json
        options.fallbackLang = "en"
        
        locale.load(options: options.asDictionary()) { [weak self] error in
            guard error == nil else { return }
            
            self?.langResult = self?.locale.t(key) ?? ""
        }
        return langResult
    }
    
}
