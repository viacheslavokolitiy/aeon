//
//  MainViewControllerPresenter.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainViewControllerPresenter.h"
#import "MainView.h"

@implementation MainViewControllerPresenter

-(instancetype)initWithRepositoryAndView:(TodoRepository *)repository :(MainView *)view {
    if(self = [super init]){
        self.repository = repository;
        self.mainView = view;
    }
    
    return self;
}

-(void)getTodos {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObjectsFromArray:[self.repository findAllTodos]];
    const NSUInteger items = [array count];
    if(array != nil && items > 0){
        [self.mainView hidePlaceholder];
        [self.mainView showTodos];
    } else {
        [self.mainView showPlaceholder];
        [self.mainView showCreateNewTodoButton];
    }
}
@end
