//
//  BinarySearchTests.swift
//  algorithmTests
//
//  Created by 山本裕太 on 2020/03/22.
//  Copyright © 2020 YutaYamamoto. All rights reserved.
//

import XCTest
@testable import algorithm

/// 2分探索モデル関数のユニットテスト
class BinarySearchTests: XCTestCase {

    var model: BinarySearch = BinarySearch(ary: [Int](1...100))

    override func setUp() {}

    override func tearDown() {}

    func testBinarySearch() {
        XCTContext.runActivity(named: "Found") { _ in
            XCTContext.runActivity(named: "1") { _ in
                XCTAssertTrue(model.searchInt(key: 1))
            }
            XCTContext.runActivity(named: "100") { _ in
                XCTAssertTrue(model.searchInt(key: 100))
            }
        }
        XCTContext.runActivity(named: "NotFound") { _ in
            XCTContext.runActivity(named: "101") { _ in
                XCTAssertFalse(model.searchInt(key: 101))
            }
            XCTContext.runActivity(named: "0") { _ in
                XCTAssertFalse(model.searchInt(key: 0))
            }
        }
    }

}
