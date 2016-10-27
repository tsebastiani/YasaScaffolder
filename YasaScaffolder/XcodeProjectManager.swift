//
//  XcodeProjectManager.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation
import XcodeEditor

class XcodeProjectManager {
    func test() {
        let path = FileManager.default.currentDirectoryPath
        print(path)
        let testProject = XCProject(filePath: "/Users/tulliosebastiani/YasaScaffolder/TestScaffolder/TestScaffolder.xcodeproj")
        _ = testProject?.groups()
        let testGroup = testProject?.groupWithPath(fromRoot: "TestScaffolder/TestGroup")

        let sourceDefinition = XCSourceFileDefinition(name: "Test.swift", text: "porchiddio", type: XcodeSourceFileType.SourceCodeSwift)

        testGroup?.addSourceFile(sourceDefinition)
        testProject?.save()
    }
}
