//
//  Task.h
//  To-Do List
//
//  Created by Nate Berkopec on 11/15/14.
//  Copyright (c) 2014 Nate Berkopec. All rights reserved.
//

#import <Realm/Realm.h>

@interface Task : RLMObject
<# Add properties here to define the model #>
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Task>
RLM_ARRAY_TYPE(Task)
