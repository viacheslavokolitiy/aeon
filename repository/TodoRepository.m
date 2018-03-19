//
//  TodoRepository.m
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TodoRepository.h"
#import "AppDelegate.h"

@implementation TodoRepository
-(NSMutableArray*)findAllTodos {
    AppDelegate *delegate = [[AppDelegate alloc] init];
    NSManagedObjectContext *context = [delegate.persistentContainer viewContext];
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Todo"];
    NSError *error = nil;
    NSArray *results = [context executeFetchRequest:request error:&error];
    if (error != nil) {
        NSLog(@"%@",[error localizedDescription]);
    } else {
        NSMutableArray *mutableArray = [[NSMutableArray alloc]init];
        for(id object in results){
            if(object == nil){
                continue;
            }
            [mutableArray addObject:object];
        }
        
        return mutableArray;
    }
    
    return nil;
}
@end
