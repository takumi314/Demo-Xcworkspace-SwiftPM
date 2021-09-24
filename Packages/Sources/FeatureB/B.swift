//
//  B.swift
//  
//
//  Created by Kohey Nishioka on 2021/09/24.
//

import Foundation
// @_exportedを付けると, インポートされた側で呼び出すことが可能になる
@_exported import FirebaseAnalytics

public struct B {
    // 明示的に書く必要がある
    public init() { }

    public func initilize() {
        Analytics.initialize()
    }

    public func track(event: String) {
        Analytics.logEvent(event, parameters: [:])
    }
}
