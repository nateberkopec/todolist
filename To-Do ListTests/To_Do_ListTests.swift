//
//  To_Do_ListTests.swift
//  To-Do ListTests
//
//  Created by Nate Berkopec on 11/9/14.
//  Copyright (c) 2014 Nate Berkopec. All rights reserved.
//

import UIKit
import XCTest
import Realm

class To_Do_ListTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        realm.deleteAllObjects()
        realm.commitWriteTransaction()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        assert(true, "Pass")
    }
    
    func testHasNoTasks() {
        assert(taskMgr.tasks.count == 0, "taskMgr inits with no tasks")
    }
    
    func testAddTask() {
        taskMgr.addTask("Test task name", desc: "Test task desc")
        
        assert(taskMgr.tasks.count == 1, "taskMgr has a task")
        assert(taskMgr.tasks.firstObject().name == "Test task name", "name set")
    }
    
}
