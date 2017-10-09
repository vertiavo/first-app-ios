//
//  Person.h
//  FirstApp
//
//  Created by student on 09.10.2017.
//  Copyright © 2017 vertiavo. All rights reserved.
//

#import "Person.h"
#import <Foundation/Foundation.h>

typedef enum {
    DOLNOSLASKIE,
    KUJAWSKO_POMORSKIE,
    LUBELSKIE,
    LUBUSKIE,
    LODZKIE,
    MALOPOLSKIE,
    MAZOWIECKIE,
    OPOLSKIE,
    PODKARPACKIE,
    PODLASKIE,
    POMORSKIE,
    SLASKIE,
    SWIETOKRZYSKIE,
    WARMINSKO_MAZURSKIE,
    WIELKOPOLSKIE,
    ZACHODNIOPOMORSKIE
} Voivodeship;

@interface Person : NSObject {
    
@private NSString *name;
@private NSString *surname;
@private NSString *address;
@private Voivodeship voivodeship;
@private NSString *birthDate;
    
}

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *surname;
@property (retain, nonatomic) NSString *address;
@property (assign, nonatomic) Voivodeship voivodeship;
@property (retain, nonatomic) NSString *birthDate;

- (id)initWithName:(NSString *)day andSurname:(NSString *)surname andBirthDate:(NSString *)birthDate;
- (id)initWithName:(NSString *)day andSurname:(NSString *)surname andAddress:(NSString *)address andVoivodeship:(Voivodeship)voivodeship andBirthDate:(NSString *)birthDate;

- (void)showPerson;

@end
