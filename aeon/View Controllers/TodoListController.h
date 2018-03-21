//
//  TodoListController.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/21/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#ifndef TodoListController_h
#define TodoListController_h
#import <UIKit/UIKit.h>

@interface TodoListController : UITableViewController
@property(nonatomic, strong) NSMutableArray* data;
-(instancetype)initWithTodoData:(NSMutableArray*)data;
-(void)showTodoList;
@end

#endif /* TodoListController_h */
