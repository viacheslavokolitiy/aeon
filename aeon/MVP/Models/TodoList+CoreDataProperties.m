//
//  TodoList+CoreDataProperties.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//
//

#import "TodoList+CoreDataProperties.h"

@implementation TodoList (CoreDataProperties)

+ (NSFetchRequest<TodoList *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"TodoList"];
}

@dynamic listId;
@dynamic createdAt;
@dynamic updatedAt;
@dynamic items;

@end
