//
//  main.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation


let template = CodeTemplateGenerator(withConsoleParams: [.serviceName: "test", .enitityName: "Risultato"])


print(template.template(of: .service))
