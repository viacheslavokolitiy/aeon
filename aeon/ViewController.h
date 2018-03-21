//
//  ViewController.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewControllerPresenter.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *placeholder;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnAddTodo;

@property (strong, nonatomic) MainViewControllerPresenter *presenter;
-(void)showCreateTodoDialog;
@end

