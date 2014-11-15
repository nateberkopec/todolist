//
//  TaskManager.swift
//  To-Do List
//
//  Created by Nate Berkopec on 11/9/14.
//  Copyright (c) 2014 Nate Berkopec. All rights reserved.
//

import UIKit
import Realm

var taskMgr: TaskManager = TaskManager()

class Task: RLMObject {
    dynamic var name = "Un-Named"
    dynamic var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = Task.allObjects()
    
    func addTask(name: String, desc: String){
        let task = Task()
        task.name = name
        task.desc = desc
        
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        realm.addObject(task)
        realm.commitWriteTransaction()
    }
    
    func removeTask(index: UInt){
        let task: Task = taskMgr.tasks.objectAtIndex(UInt(indexPath.row)) as Task
        
        let realm = RLMRealm.defaultRealm()
        realm.deleteObject(task)
    }
}
