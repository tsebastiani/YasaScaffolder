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


class CodeTemplateGenerator {
    var collectedParams: [ConsoleParams: String]?
    
    init(withConsoleParams params: [ConsoleParams: String]) {
        self.collectedParams = params
        
    }
    
    func template(of: TemplateType) -> String? {
        guard let safeParams: [ConsoleParams: String] = collectedParams,
            let serviceName = safeParams[.serviceName],
            let entityName = safeParams[.enitityName]
        else {
                return nil
        }
        
        switch of {
        case .service:
            return templateForService(name: serviceName , entityName: entityName )
        default:
            return nil
        }
    }
    
    private func templateForService(name: String, entityName: String) -> String? {
        var templates = [String]()
        var placeHolders = [Placeholder: String]()
        
        templates.append(Templates.classHeader)
        templates.append(Templates.entity)
        templates.append(Templates.serviceParams)
        templates.append(Templates.entityMapper)
        
        placeHolders[Placeholder.date] = String(describing: Date())
        placeHolders[Placeholder.entity] = entityName
        placeHolders[Placeholder.serviceName] = name
        
        let result = replacePlaceholders(templates: templates, withMappings: placeHolders).reduce("", {$0+$1})
        return result
    }
    
    func replacePlaceholders(templates: [String], withMappings mappings: [Placeholder:String]) -> [String] {
        var changedTemplates = [String]()
        for template in templates {
            var fileContent = ""
            do {
                fileContent = try String(contentsOfFile: template)
            } catch {
                continue
            }
            for mapping in mappings{
                guard let occurrence = Placeholders.placeHolders[mapping.key] else {
                    continue
                }
                fileContent = fileContent.replacingOccurrences(of: occurrence , with: mapping.value)
            }
            
            changedTemplates.append(fileContent)
        }
        return changedTemplates
    }
    
}
