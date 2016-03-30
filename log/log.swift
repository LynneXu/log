//
//  log.swift
//  log
//
//  Created by Lynne on 16/3/23.
//  Copyright © 2016年 Lynne. All rights reserved.
//
import UIKit

public class Logger {
    
    public init() {
        
    }
    
    public func error<T>(object: T) {
        ColorLog.red(object)
    }
    
    public func success<T>(object: T) {
        ColorLog.green(object)
    }
    
    public func info<T>(object: T) {
        ColorLog.blue(object)
    }
    
    public func debug<T>(object: T) {
        ColorLog.yellow(object)
    }

    
}

struct ColorLog {
    static let ESCAPE = "\u{001b}["
    
    static let RESET_FG = ESCAPE + "fg;" // Clear any foreground color
    static let RESET_BG = ESCAPE + "bg;" // Clear any background color
    static let RESET = ESCAPE + ";"   // Clear any foreground or background color
    
    static func red<T>(object: T) {
        print("\(ESCAPE)fg255,0,0;\(object)\(RESET)")
    }
    
    static func green<T>(object: T) {
        print("\(ESCAPE)fg0,255,0;\(object)\(RESET)")
    }
    
    static func blue<T>(object: T) {
        print("\(ESCAPE)fg0,0,255;\(object)\(RESET)")
    }
    
    static func yellow<T>(object: T) {
        print("\(ESCAPE)fg255,255,0;\(object)\(RESET)")
    }
    
    static func purple<T>(object: T) {
        print("\(ESCAPE)fg255,0,255;\(object)\(RESET)")
    }
    
    static func cyan<T>(object: T) {
        print("\(ESCAPE)fg0,255,255;\(object)\(RESET)")
    }
}