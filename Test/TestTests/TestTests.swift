//
//  TestTests.swift
//  TestTests
//
//  Created by Asif on 07/05/25.
//

import XCTest
@testable import Test

final class TestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testXC() {
        let sut = Test()
        sut.testFunc()
    }

}
