//
//  AppFeature.swift
//  
//
//  Created by Kohey Nishioka on 2021/09/24.
//

import Foundation
@_exported import FeatureA
@_exported import FeatureC

public struct AppFeature {

    let a = A()
    public var text = "Hello, World!"

    public init() { }

    public func setIdentifier(_ id: String) {
        a.setUserID(id)
    }

    public func track(_ eventName: String) {
        a.track(name: eventName)
    }

}
