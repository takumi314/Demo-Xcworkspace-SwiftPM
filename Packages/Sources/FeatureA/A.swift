//
//  A.swift
//  
//
//  Created by Kohey Nishioka on 2021/09/24.
//

import Foundation
@_exported import FeatureB

public struct A {
    let b = B()

    public init() { }
    
    public func initialize() {
        b.initilize()
    }

    public func track(name: String) {
        b.track(event: "test")
        
        // FeatureBモジュールで`@_exported`をつけてインポートすれば、FeatureA側でも呼び出すことが可能となる。。
        Analytics.logEvent(name, parameters: [:])
    }

    public func setUserID(_ id: String) {
        Analytics.setUserID(id)
    }

}
