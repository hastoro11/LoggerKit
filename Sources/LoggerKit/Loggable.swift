//
//  Loggable.swift
//  
//
//  Created by Gabor Sornyei on 2023. 01. 15..
//

import Foundation

protocol Loggable {
    static func error(_ messages: Any?..., file: String, function: String, line: Int)
    static func info(_ messages: Any?..., file: String, function: String, line: Int)
    static func debug(_ messages: Any?..., file: String, function: String, line: Int)
    static func verbose(_ messages: Any?..., file: String, function: String, line: Int)
    static func warning(_ messages: Any?..., file: String, function: String, line: Int)
    static func severe(_ messages: Any?..., file: String, function: String, line: Int)
}
