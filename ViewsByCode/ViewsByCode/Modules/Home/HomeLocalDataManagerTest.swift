//
//  HomeLocalDataManagerTest.swift
//  ViewsByCodeTests
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import XCTest
@testable import ViewsByCode

class HomeLocalDataManagerTest: XCTestCase {

    var sut: HomeLocalDataManager?

    override func setUp() {
        super.setUp()
        sut = HomeLocalDataManager()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    
}
