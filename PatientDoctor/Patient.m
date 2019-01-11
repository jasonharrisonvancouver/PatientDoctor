//
//  Patient.m
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithYearBorn:(int)yearBorn
                    andFirstName:(NSString *)firstName
                     andLastName:(NSString *)lastName{
    
    self = [super init];
    
    if(self != nil){
        _yearBorn = yearBorn;
        _firstName = firstName;
        _lastName = lastName;
        
        _healthCardNumber = -1; // no health card number
    }
    
    return self;
}

@end
