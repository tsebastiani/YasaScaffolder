//
//  Templates.swift
//  YasaScaffolder
//
//  Created by Tullio Sebastiani on 27/10/16.
//  Copyright © 2016 Tullio Sebastiani. All rights reserved.
//

import Foundation
enum Placeholder {
    case serviceName
    case date
    case entity
    case client
}

// #warning Capitalized an lowercased placeholders category of string passing the placeholder?

class Placeholders {
    static let placeHolders: [Placeholder: String] = [.serviceName:"%serviceName%",
                                                      .date:"%date%",
                                                      .entity:"%entityName%",
                                                      .client:"%client%"]
}

class Templates {
    static var templatesFolder: String {
        get {
            return FileManager.default.currentDirectoryPath+"/templates/"
        }
        set {}
    }
    static var classHeader: String {
        get {
            return templatesFolder+"ClassHeader.yasa"
        }
        set {}
    }

    static var entity: String {
        get {
            return templatesFolder+"Entity.yasa"
        }
        set {}
    }

    static var entityMapper: String {
        get {
            return templatesFolder+"EntityMapper.yasa"
        }
        set {}

    }

    static var serviceParams: String {
        get {
            return templatesFolder+"ServiceParams.yasa"
        }
        set {}

    }

    static var facade: String {
        get {
            return templatesFolder+"FacadeFunction.yasa"
        }
        set {}

    }

}
