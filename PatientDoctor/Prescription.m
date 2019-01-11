//
//  Prescription.m
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription


- (instancetype)initWithSymptom:(NSString *)symptom
                        andCure:(NSString *)cure
                     andPatient:(Patient *)patient{
    
    self = [super init];
    
    if(self != nil){
        
        _symptom = symptom;
        _cure = cure;
        _patient = patient;
    }
    
    return self;
    
}

@end
