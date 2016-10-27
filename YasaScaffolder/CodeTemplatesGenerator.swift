//
//  File.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation

enum TemplateType {
    case service
    case frameworkFacade
    case client
}

/*
 enum ConsoleParams{
 case serviceName
 case enitityName
 case clientName
 }
 */

class CodeTemplateGenerator {
    var collectedParams: [ConsoleParams: String]?

    init(withConsoleParams params: [ConsoleParams: String]) {
        self.collectedParams = params

    }

    func template(of: TemplateType) -> String? {
        guard let safeParams: [ConsoleParams: String] = collectedParams else {
            return nil
        }
        switch of {
        case .service:
            return templateForService(name: safeParams[.serviceName]!, entityName: safeParams[.enitityName]!)
        default:
            return nil
        }
    }

    private func templateForService(name: String, entityName: String) -> String? {

        do {

          /*  var header = try String(contentsOfFile: Templates.classHeader).replacingOccurrences(of: placeholders.date, with: String(describing: Date()))

            header = header.replacingOccurrences(of: placeholders.serviceName, with: name.capitalized)

            let entity = try String(contentsOfFile: Templates.entity).replacingOccurrences(of: placeholders.entityName, with: entityName.capitalized)

            let serviceParams = try String(contentsOfFile: Templates.serviceParams).replacingOccurrences(of: placeholders.serviceName, with: name.capitalized)

            var entityMapper = try String(contentsOfFile: Templates.entityMapper).replacingOccurrences(of: placeholders.serviceName, with: name.capitalized)

            entityMapper = entityMapper.replacingOccurrences(of: placeholders.entityName, with: name.capitalized)

            return header + entity + serviceParams + entityMapper*/

        } catch {

        }

        return nil
    }

    func replacePlaceholders(templates: [String], withMapping mapping: [Placeholder:String]) -> [String] {
        var changedTemplates = [String]()
        for template in templates {
            return [Placeholder:String]()
        }
    }

}
