//
//  SomeService.swift
//  
//
//  Created by marinbenc on 04/01/2017.
//  https://github.com/marinbenc/Mock-Generation-Swift
//

import Foundation

/**
 A phantom protocol used as a marker for each
 protocol that will have a mock generated.
*/
protocol AutoMockable {}

protocol MockableService: AutoMockable {
    
    var someVariable: Int { get }
    func functionWithArguments(argumentLabel firstArgument: String, onComplete: (String)-> Void)
    func functionWithoutArguments()
    func functionWithReturnValue()-> String
    func functionWithArgumentsAndReturnValue()-> Float
    
}
