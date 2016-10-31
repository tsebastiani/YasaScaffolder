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
        var selfString = ""
        let pattern = of
        var replaceString = with

        if let _ = self.range(of: "#") {
            selfString = self.replacingOccurrences(of: "#", with: "")
            replaceString = replaceString.capitalized
            return selfString.replacingOccurrences(of: pattern, with: replaceString)
        } else {
            replaceString = replaceString.uncapitalized
        }

        return self.replacingOccurrences(of: pattern, with: replaceString)
    }
}
