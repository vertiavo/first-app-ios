//
//  Person.m
//  FirstApp
//
//  Created by student on 09.10.2017.
//  Copyright © 2017 vertiavo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

@synthesize name=_name;
@synthesize surname=_surname;
@synthesize address=_address;
@synthesize voivodeship=_voivodeship;
@synthesize birthDate=_birthDate;

- (id)init {
    self = [self initWithName:@"John" andSurname:@"Kowalsky" andAddress:@"Wall Street" andVoivodeship:PODLASKIE andBirthDate:@"1.1.1970"];
    return self;
}

- (id)initWithName:(NSString *)name andSurname:(NSString *)surname andBirthDate:(NSString *)birthDate {
    if (self = [super init]) {
        self.name=name;
        self.surname=surname;
        self.birthDate=birthDate;
    }
    return self;
}

- (id)initWithName:(NSString *)name andSurname:(NSString *)surname andAddress:(NSString *)address andVoivodeship:(Voivodeship)voivodeship andBirthDate:(NSString *)birthDate {
    if (self = [super init]) {
        self.name=name;
        self.surname=surname;
        self.address=address;
        self.voivodeship=voivodeship;
        self.birthDate=birthDate;
    }
    return self;
}

- (void)showPerson{
    NSLog(@"\nPerson: %@ %@ \n%@ \n%i \n%@ ", self.name, self.surname, self.address, self.voivodeship, self.birthDate);
}
@end
