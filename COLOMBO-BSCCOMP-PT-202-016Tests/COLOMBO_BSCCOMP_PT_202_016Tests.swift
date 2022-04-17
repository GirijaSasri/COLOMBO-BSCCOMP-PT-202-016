//
//  COLOMBO_BSCCOMP_PT_202_016Tests.swift
//  COLOMBO-BSCCOMP-PT-202-016Tests
//
//  Created by Sasri on 2022-04-03.
//

import XCTest
@testable import COLOMBO_BSCCOMP_PT_202_016

class COLOMBO_BSCCOMP_PT_202_016Tests: XCTestCase {


    var loginViewModel: LoginViewModel!
    var mockLoginService: MockLoginService!

    override func setUpWithError() throws {

        mockLoginService = MockLoginService()
        loginViewModel = .init(loginService: mockLoginService)

    }

    override func tearDownWithError() throws {
        loginViewModel = nil
    }

    func testLoginSucessTrue() throws {
        mockLoginService.loginResult = .success(())

        loginViewModel.login(email: "asanka@gmail.com", password: "asanka@123")
        XCTAssertTrue(loginViewModel.isuserlogin)
    }
    func testLoginFailureTrue() throws {

        mockLoginService.loginResult = .failure(NSError(domain: "", code: -1, userInfo: nil))

        loginViewModel.login(email: "classwork@gmail.com", password: "pass@123")


    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
