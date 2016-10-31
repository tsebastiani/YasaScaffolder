//
//  main.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation

let templateGenerator = CodeTemplateGenerator(withConsoleParams: [.serviceName: "LOGIN",
                                                                  .enitityName: "user",
                                                                  .clientName: "HttpClient"])

if let template = templateGenerator.template(of: .frameworkFacade) {
        print(template)
}
