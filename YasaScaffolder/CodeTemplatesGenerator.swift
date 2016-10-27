
//
//  File.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation

enum TemplateType{
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
    
    func template(of: TemplateType) -> String?{
        guard let safeParams:[ConsoleParams: String] = collectedParams else {
            return nil
        }
        switch of {
        case .service:
            return templateForService(name: safeParams[.serviceName]!, entityName: safeParams[.enitityName]!)
        default:
            return nil
        }
    }
    
    private func templateForService(name: String, entityName: String) -> String?{
         
         let ris=FileManager.default.fileExists(atPath: FileManager.default.currentDirectoryPath+"/templates/ClassHeader.yasa")
        print(FileManager.default.currentDirectoryPath+"/templates/ClassHeader.yasa")
        
        return nil
    }

}

