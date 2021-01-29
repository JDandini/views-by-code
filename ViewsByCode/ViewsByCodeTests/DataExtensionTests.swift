//
//  DataExtensionTests.swift
//  ViewsByCodeTests
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import XCTest
@testable import ViewsByCode

final class DataExtensionTests: XCTestCase {
    func testGetDataFromFile() {
        let data = Data.fromFile("response", fileType: "json")
        XCTAssertNotNil(data)
    }

    func testGetDataFromFileFails() {
        let data = Data.fromFile("unexisting", fileType: "json")
        XCTAssertNil(data)
    }
}
