//
//  BinaryWatchTest.swift
//  algorithm_swiftTests
//
//  Created by Haibo Yan on 3/25/18.
//  Copyright © 2018 Haibo Yan. All rights reserved.
//

import XCTest
@testable import algorithm_swift

class BinaryWatchTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSimpl1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let bw = BinaryWatch()
        
        XCTAssertEqual(["0:00"], bw.get_n(0)!)
    }
    
    func testSimpl2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let bw = BinaryWatch()
        
        XCTAssertEqual(["0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00"], bw.get_n(1)!)
    }
    
    func testSimpl3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let bw = BinaryWatch()
        
        XCTAssertEqual(["0:31","0:47","0:55","0:59","1:15","1:23","1:27","1:29","1:30","1:39","1:43","1:45",
                       "1:46","1:51","1:53","1:54","1:57","1:58","2:15","2:23","2:27","2:29","2:30","2:39",
                       "2:43","2:45","2:46","2:51","2:53","2:54","2:57","2:58","3:07","3:11","3:13","3:14",
                       "3:19","3:21","3:22","3:25","3:26","3:28","3:35","3:37","3:38","3:41","3:42","3:44",
                       "3:49","3:50","3:52","3:56","4:15","4:23","4:27","4:29","4:30","4:39","4:43","4:45",
                       "4:46","4:51","4:53","4:54","4:57","4:58","5:07","5:11","5:13","5:14","5:19","5:21",
                       "5:22","5:25","5:26","5:28","5:35","5:37","5:38","5:41","5:42","5:44","5:49","5:50",
                       "5:52","5:56","6:07","6:11","6:13","6:14","6:19","6:21","6:22","6:25","6:26","6:28",
                       "6:35","6:37","6:38","6:41","6:42","6:44","6:49","6:50","6:52","6:56","7:03","7:05",
                       "7:06","7:09","7:10","7:12","7:17","7:18","7:20","7:24","7:33","7:34","7:36","7:40",
                       "7:48","8:15","8:23","8:27","8:29","8:30","8:39","8:43","8:45","8:46","8:51","8:53",
                       "8:54","8:57","8:58","9:07","9:11","9:13","9:14","9:19","9:21","9:22","9:25","9:26",
                       "9:28","9:35","9:37","9:38","9:41","9:42","9:44","9:49","9:50","9:52","9:56","10:07",
                       "10:11","10:13","10:14","10:19","10:21","10:22","10:25","10:26","10:28","10:35",
                       "10:37","10:38","10:41","10:42","10:44","10:49","10:50","10:52","10:56","11:03",
                       "11:05","11:06","11:09","11:10","11:12","11:17","11:18","11:20","11:24","11:33",
                       "11:34","11:36","11:40","11:48"], bw.get_n(5)!)
    }
    
}
