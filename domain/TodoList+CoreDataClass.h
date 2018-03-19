//
//  TodoList+CoreDataClass.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Todo;

NS_ASSUME_NONNULL_BEGIN

@interface TodoList : NSManagedObject

@end

NS_ASSUME_NONNULL_END

#import "TodoList+CoreDataProperties.h"
