//
//  ViewController.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import "ViewController.h"
#import "TodoRepository.h"
#import "MainView.h"
#import "MainViewControllerPresenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setToolbarHidden:NO];
    [self.navigationItem setTitle:@"Aeon"];
    TodoRepository *repository = [[TodoRepository alloc] init];
    MainView *view = [MainView alloc];
    [view initWithWidgets:_placeholder];
    [_btnAddTodo setAction:@selector(showCreateTodoDialog)];
    MainViewControllerPresenter *presenter = [[MainViewControllerPresenter alloc]initWithRepositoryAndView:repository :view];
    [presenter getTodos];
}

-(void)showCreateTodoDialog {
    NSLog(@"%s", "Not implemented yet");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
