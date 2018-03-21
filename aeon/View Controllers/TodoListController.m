//
//  TodoListController.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/21/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TodoListController.h"

@implementation TodoListController
-(instancetype)initWithTodoData:(NSMutableArray *)data {
    if(self = [super init]){
        self.data = data;
    }
    
    return self;
}

-(void)showTodoList {
    
}
@end
