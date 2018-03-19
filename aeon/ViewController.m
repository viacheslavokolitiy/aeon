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
    TodoRepository *repository = [[TodoRepository alloc] init];
    MainView *view = [MainView alloc];
    [view initWithWidgets:_placeholder];
    MainViewControllerPresenter *presenter = [MainViewControllerPresenter alloc];
    [presenter createPresenter:repository :view];
    [presenter getTodos];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
