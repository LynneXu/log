//
//  logTests.swift
//  logTests
//
//  Created by Lynne on 16/3/23.
//  Copyright © 2016年 Lynne. All rights reserved.
//

import XCTest
@testable import log

class logTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        let logger = Logger()
        
        logger.info("23")
        logger.debug("23")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
