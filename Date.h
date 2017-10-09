//
//  Date.h
//  FirstApp
//
//  Created by student on 09.10.2017.
//  Copyright © 2017 vertiavo. All rights reserved.
//

#import "Date.h"
#import <Foundation/Foundation.h>

@interface Date : NSObject {
    
@private int day;
@private NSString *month;
@private int year;
    
}

@property (assign, nonatomic) int day;
@property (retain, nonatomic) NSString *month;
@property (assign, nonatomic) int year;

- (id)initWithDay:(int)day andMonth:(NSString *)month;
- (id)initWithDay:(int)day andMonth:(NSString *)month andYear:(int)year;

- (void)showDate;

@end