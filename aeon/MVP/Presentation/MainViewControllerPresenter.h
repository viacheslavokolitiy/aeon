//
//  MainViewControllerPresenter.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#ifndef MainViewControllerPresenter_h
#define MainViewControllerPresenter_h

#import "TodoRepository.h"
#import "MainView.h"
@interface MainViewControllerPresenter : NSObject
@property(nonatomic, strong) TodoRepository *repository;
@property(nonatomic, strong) MainView *mainView;
-(instancetype)initWithRepositoryAndView:(TodoRepository*)repository : (MainView*)view;
-(void)getTodos;
@end

#endif /* MainViewControllerPresenter_h */
