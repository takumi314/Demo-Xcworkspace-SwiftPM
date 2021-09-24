//
//  Build..swift
//  
//
//  Created by Kohey Nishioka on 2021/09/25.
//

import Foundation

public struct Build {
    public var twitterURL: () -> URL

    public var googleURL: () -> URL
    
    public var facebookURL: () -> URL
}

public extension Build {
    static var live = Self(
        twitterURL: {
            let url = Bundle.main.infoDictionary!["Twitter URL"] as! String
            return URL(string: url)!
        }, googleURL: {
            let url = Bundle.main.infoDictionary!["Google URL"] as! String
            return URL(string: url)!
        }, facebookURL: {
            let url = Bundle.main.infoDictionary!["Facebook URL"] as! String
            return URL(string: url)!
        }
    )

    static var none = Self(
        twitterURL: { URL(string: "https://")! },
        googleURL: { URL(string: "https://")! },
        facebookURL: { URL(string: "https://")! }
    )
}
