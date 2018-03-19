//
//  Todo+CoreDataProperties.h
//  aeon
//
//  Created by Viacheslav Okolitiy on 3/19/18.
//  Copyright © 2018 Viacheslav Okolitiy. All rights reserved.
//
//

#import "Todo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Todo (CoreDataProperties)

+ (NSFetchRequest<Todo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSUUID *tid;
@property (nullable, nonatomic, copy) NSString *todoTitle;
@property (nullable, nonatomic, copy) NSString *todoDescription;
@property (nullable, nonatomic, copy) NSDate *createdAt;
@property (nullable, nonatomic, copy) NSDate *updatedAt;

@end

NS_ASSUME_NONNULL_END
