//
//  LoginViewModel.swift
//  MVVMBindings
//
//  Created by Sourabh Ghosh on 15/01/22.
//

import Foundation


class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    
    var listener: Listener?
    var value:T {
        
        didSet {
            
            listener?(value)
        }
    }
    
    func bind(callback:@escaping (T) -> Void ){
        
        self.listener = callback
    }
    
    init (_ value: T){
        
        self.value = value
    }
}

struct LoginViewModel {
    
    var username: Dynamic = Dynamic("")
    var password: Dynamic = Dynamic("")
    
}
