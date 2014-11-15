//
//  FirstViewController.swift
//  To-Do List
//
//  Created by Nate Berkopec on 11/9/14.
//  Copyright (c) 2014 Nate Berkopec. All rights reserved.
//

import UIKit
import Realm

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTasks: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            taskMgr.removeTaskAt(UInt(indexPath.row))
            tblTasks.reloadData()
        }
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return Int(taskMgr.tasks.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        let task: Task = taskMgr.tasks.objectAtIndex(UInt(indexPath.row)) as Task
        cell.textLabel.text = task.name
        cell.detailTextLabel!.text = task.desc
        return cell
    }


}

