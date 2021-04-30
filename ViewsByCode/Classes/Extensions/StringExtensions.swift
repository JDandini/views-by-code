//
//  StringExtensions.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

extension String {
    var diacriticFree: String {
        return self
               .folding(options: .diacriticInsensitive,
                        locale: Locale(identifier: "es"))
               .lowercased()
    }

    var capitalizingOnlyFirstLetter: String {
        return prefix(1).uppercased() + dropFirst().lowercased()
    }

    var capitalizingFirstLetter: String {
        return prefix(1).uppercased() + dropFirst()
    }

    func trim() -> String {
        return isEmpty ? "" : trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func containsRegex(_ pattern: String) -> Bool {

        guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return false
        }

        let range = NSRange(location: 0, length: count)
        return regex.firstMatch(in: self, options: [], range: range) != nil
    }
}
