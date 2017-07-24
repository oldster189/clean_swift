//
//  ReuseIdentifierProtocol.swift
//  ViperDemo
//
//  Created by itthipon wiwatthanasathit on 7/23/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import UIKit

public protocol ResueIdentifierProtocol {
    //@Get identifier form class
    static var defaultReuseIdentifier:String { get }
}

public extension ResueIdentifierProtocol where Self:UIView {
    static var defaultReuseIdentifier:String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
