//
//  MainView.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#ifndef MainView_h
#define MainView_h
#import <UIKit/UIKit.h>
@interface MainView : NSObject
@property(nonatomic, weak) UILabel *placeholderView;
-(instancetype)initWithWidgets:(UILabel*)placeholder;
-(void)showTodos;
-(void)showCreateNewTodoButton;
-(void)showPlaceholder;
-(void)hidePlaceholder;
@end

#endif /* MainView_h */
