//
//  Utils.swift
//  Language
//
//  Created by Auzan Lazuardi on 24/02/24.
//

import Foundation

internal class LanguageUtils {
    internal static let shared = LanguageUtils()
    
    internal func loadJSON(filename: String) -> [AnyHashable: Any] {
        guard let path = Bundle.main.url(forResource: filename, withExtension: "json") else {
            fatalError("Failed to load JSON")
        }

        do {
            let data = try Data(contentsOf: path)

            let decodedObject = try JSONSerialization.jsonObject(with: data) as? [AnyHashable: Any]
            return decodedObject!
        } catch {
            fatalError("Failed to decode loaded JSON")
        }
    }
}
