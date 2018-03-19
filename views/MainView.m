//
//  MainView.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainView.h"
@implementation MainView
-(void)initWithWidgets:(UILabel *)placeholder {
    self.placeholderView = placeholder;
}
-(void)showTodos{}
-(void)showCreateNewTodoButton{}
-(void)showPlaceholder {
    self.placeholderView.hidden = NO;
}
-(void)hidePlaceholder {
    self.placeholderView.hidden = YES;
}
@end
