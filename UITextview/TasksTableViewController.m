//
//  TasksTableViewController.m
//  UITextview
//
//  Created by Khalid Mohamed on 10/5/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "TasksTableViewController.h"

@interface TasksTableViewController ()

@end

@implementation TasksTableViewController

    
-(void) viewDidLoad {
    [super viewDidLoad];
    
    tasks = [[NSMutableArray alloc] init];
    
    
   Task *task1= [[Task alloc] init];
    task1.title = @"wash dishes";
   Task *task2= [[Task alloc ] init ];
    task2.title = @"go for a run";
   Task *task3= [[Task alloc] init ];
    task3.title= @"drive to work";
   Task *task4= [[Task alloc ] init];
    task4.title= @"have lunch";
   Task *task5= [[Task alloc ] init];
     task5.title= @"go to school";
 
 [tasks addObject:task1];
 [tasks addObject:task2];
 [tasks addObject:task3];
 [tasks addObject:task4];
 [tasks addObject:task5];
    
       
    [self.tableview reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tasks count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];
    
    Task *task = [[Task alloc]init];
    task = tasks[indexPath.row];
    
    cell.textLabel.text = task.title;
    
    return cell;
}


//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString *uniqueIdentifer = @"UITableViewCell";
//    UITableViewCell *cell = nil;
//        
//        cell = [self.tableview dequeueReusableCellWithIdentifier:uniqueIdentifer];
//    [[cell textLabel] setTextColor:[UIColor blackColor]];
//    cell.textLabel.text=tasks [indexPath.row];
//    
//    
//    
//    return cell;
//}
-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end


   


