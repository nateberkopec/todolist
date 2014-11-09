//
//  TaskManager.swift
//  To-Do List
//
//  Created by Nate Berkopec on 11/9/14.
//  Copyright (c) 2014 Nate Berkopec. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
