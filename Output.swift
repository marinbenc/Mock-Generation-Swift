// Generated using Sourcery 0.5.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT




class MockableServiceMock: MockableService {

    
    var someVariable: Int
    

    
    //MARK: - functionWithArguments

    var functionWithArgumentsCalled = false
    var functionWithArgumentsRecievedArguments: (firstArgument: String, onComplete: (String)-> Void)?
    

    func functionWithArguments(argumentLabel firstArgument: String, onComplete: (String)-> Void) {

        functionWithArgumentsCalled = true
        functionWithArgumentsRecievedArguments = (firstArgument: firstArgument, onComplete: onComplete)
        
    }


    //MARK: - functionWithCallback

    var functionWithCallbackCalled = false
    var functionWithCallbackRecievedArguments: (firstArgument: String, onComplete: (String)-> Void)?
    

    func functionWithCallback(_ firstArgument: String, onComplete: @escaping (String)-> Void) {

        functionWithCallbackCalled = true
        functionWithCallbackRecievedArguments = (firstArgument: firstArgument, onComplete: onComplete)
        
    }


    //MARK: - functionWithoutArguments

    var functionWithoutArgumentsCalled = false
    
    

    func functionWithoutArguments() {

        functionWithoutArgumentsCalled = true
        
        
    }


    //MARK: - functionWithReturnValue

    var functionWithReturnValueCalled = false
    
    var functionWithReturnValueReturnValue: String!

    func functionWithReturnValue() -> String {

        functionWithReturnValueCalled = true
        
        return functionWithReturnValueReturnValue
    }


    //MARK: - functionWithArgumentsAndReturnValue

    var functionWithArgumentsAndReturnValueCalled = false
    
    var functionWithArgumentsAndReturnValueReturnValue: Float!

    func functionWithArgumentsAndReturnValue() -> Float {

        functionWithArgumentsAndReturnValueCalled = true
        
        return functionWithArgumentsAndReturnValueReturnValue
    }


}


