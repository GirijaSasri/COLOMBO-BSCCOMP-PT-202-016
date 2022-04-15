//
//  MockLoginService.swift
//  COLOMBO-BSCCOMP-PT-202-016Tests
//
//  Created by Sasri on 2022-04-14.
//

import Foundation

@testable import COLOMBO_BSCCOMP_PT_202_016

class MockLoginService: LoginServiceProtocol{
    func userLogin(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
    
    }
    

    var loginResult: Result<Void, Error> = .success(())

    func login(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        completion(loginResult)
    }

}

