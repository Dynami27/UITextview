//
//  TasksTableViewController.h
//  UITextview
//
//  Created by Khalid Mohamed on 10/5/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Task.h"

@interface TasksTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    
    NSMutableArray *tasks;
}
@property  (nonatomic,retain) IBOutlet UITableView *tableview;

@end
