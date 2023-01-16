//
//  Loggable.swift
//  
//
//  Created by Gabor Sornyei on 2023. 01. 15..
//

import Foundation

protocol Loggable {
    static func error(messages: Any?..., file: String, function: String, line: Int)
    static func info(messages: Any?..., file: String, function: String, line: Int)
    static func debug(messages: Any?..., file: String, function: String, line: Int)
    static func verbose(messages: Any?..., file: String, function: String, line: Int)
    static func warning(messages: Any?..., file: String, function: String, line: Int)
    static func severe(messages: Any?..., file: String, function: String, line: Int)
}
