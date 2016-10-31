//
//  String+Replace.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 31/10/2016.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation

extension String {

    private(set) var uncapitalized: String {
        get {
            let prefix = String(self.characters.prefix(1))
            let suffix = String(self.characters.dropFirst())
            return prefix.lowercased() + suffix

        }
        set {}
    }

    func replaceOccurencesUppercasing(of: String, with: String) -> String {
        let pattern = of
        var capitalPattern = pattern.replacingOccurrences(of: "%", with: "")
        capitalPattern = "%#\(capitalPattern)%"
        var replaceString = with.lowercased()

        var string = self

        if let _ = string.range(of: capitalPattern) {
            string = string.replacingOccurrences(of: capitalPattern, with: replaceString.capitalized)
        }

        return string.replacingOccurrences(of: pattern, with: replaceString.uncapitalized)

    }
}
