//
//  iosAppKtTests.swift
//  iosAppKtTests
//
//  Created by Philip K. Han on 3/26/19.
//  Copyright © 2019 Kevin Galligan. All rights reserved.
//

import XCTest
import test

class iosAppKtTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testKotlinRunner() {
        AppContextTestKt.staticFileLoader = loadAsset
        XCTAssertEqual(0, AppContextTestKt.kickOffTest())
    }
    
    func loadAsset(filePrefix:String, fileType:String) -> String?{
        do{
            let bundleFile = Bundle(for: type(of: self)).path(forResource: filePrefix, ofType: fileType)
            return try String(contentsOfFile: bundleFile!)
        } catch {
            return nil
        }
    }
    
}
