//
//  TodoList+CoreDataProperties.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//
//

#import "TodoList+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface TodoList (CoreDataProperties)

+ (NSFetchRequest<TodoList *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSUUID *listId;
@property (nullable, nonatomic, copy) NSDate *createdAt;
@property (nullable, nonatomic, copy) NSDate *updatedAt;
@property (nullable, nonatomic, retain) Todo *items;

@end

NS_ASSUME_NONNULL_END
