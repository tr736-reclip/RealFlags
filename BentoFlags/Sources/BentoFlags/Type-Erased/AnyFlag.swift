//
//  BentoFlags
//  Easily manage feature flags in Swift.
//
//  Created by Daniele Margutti
//  Email: hello@danielemargutti.com
//  Web: http://www.danielemargutti.com
//
//  Copyright ©2021 Daniele Margutti. All rights reserved.
//  Licensed under MIT License.
//

import Foundation

protocol AnyFlag {
    
    /// Return the key for flag.
    var keyPath: FlagKeyPath { get }
    
    /// Return the value of the flag.
    func getValueForFlag() -> Any?
}

extension Flag: AnyFlag {
    
    func getValueForFlag() -> Any? {
        flagValue()
    }
    
}
