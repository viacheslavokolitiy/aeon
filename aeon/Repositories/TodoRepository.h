//
//  TodoRepository.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//

#ifndef TodoRepository_h
#define TodoRepository_h
#import <CoreData/CoreData.h>

@interface TodoRepository : NSObject
-(NSMutableArray*)findAllTodos;
@end

#endif /* TodoRepository_h */
