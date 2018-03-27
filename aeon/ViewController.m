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

NSString *const kCreateTodoDialogTitle = @"Create new todo";
NSString *const kCreateTodoDialogMessage = @"Type title and description";
NSString *const kCreateTodoDialogTitlePlacehodler = @"Title";
NSString *const kCreateTodoDialogDescriptionPlacehodler = @"Description";
NSString *const kActionPositiveTitle = @"OK";
NSString *const kActionCancelTitle = @"Cancel";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setToolbarHidden:NO];
    [self.navigationItem setTitle:@"Aeon"];
    
    TodoRepository *repository = [[TodoRepository alloc] init];
    MainView *view = [[MainView alloc]initWithWidgets:_placeholder];
    [_btnAddTodo setAction:@selector(showCreateTodoDialog)];
    
    self.presenter = [[MainViewControllerPresenter alloc]initWithRepositoryAndView:repository :view];
    
    [self.presenter getTodos];
}

-(void)showCreateTodoDialog {
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:kCreateTodoDialogTitle
                                                                   message:kCreateTodoDialogMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [controller setTitle:kCreateTodoDialogTitle];
    [controller setMessage:kCreateTodoDialogMessage];
    
    [controller addTextFieldWithConfigurationHandler:^(UITextField *titleField){
        [titleField setPlaceholder:kCreateTodoDialogTitlePlacehodler];
    }];
    
    [controller addTextFieldWithConfigurationHandler:^(UITextField *descriptionField){
        [descriptionField setPlaceholder:kCreateTodoDialogDescriptionPlacehodler];
    }];
    
    UIAlertAction *positive = [UIAlertAction actionWithTitle:kActionPositiveTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *handler){
        
    }];
    
    UIAlertAction *negative = [UIAlertAction actionWithTitle:kActionCancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *handler){
        
    }];
    
    [controller addAction:positive];
    [controller addAction:negative];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
