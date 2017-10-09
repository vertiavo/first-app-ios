//
//  Date.m
//  FirstApp
//
//  Created by student on 09.10.2017.
//  Copyright © 2017 vertiavo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Date.h"

@implementation Date

@synthesize day=_day;
@synthesize month=_month;
@synthesize year=_year;

- (id)init {
    self = [self initWithDay:9 andMonth:@"October" andYear:2017];
    return self;
}

- (id)initWithDay:(int)day andMonth:(NSString *)month {
    if (self = [super init]) {
        self.day = day;
        self.month = month;
    }
    return self;
}

- (id)initWithDay:(int)day andMonth:(NSString *)month andYear:(int)year {
    if (self = [super init]) {
        self.day = day;
        self.month = month;
        self.year = year;
    }
    return self;
}

- (void)showDate {
    NSLog(@"Date: %d/%@/%d", self.day, self.month,self.year);
}

@end