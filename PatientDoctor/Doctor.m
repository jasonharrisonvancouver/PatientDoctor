//
//  Doctor.m
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor


- (instancetype)initWithSpecialty:(NSString *)specialty
                     andFirstName:(NSString *)firstName
                      andLastName:(NSString *)lastName{
    
    self = [super init];
    
    if(self != nil){
        _specialty = specialty;
        _firstName = firstName;
        _lastName = lastName;
        
        _patients = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)visit:(Patient *)patient{
    NSLog(@"doctor %@ visited by patient %@", _lastName, [patient lastName]);
    
    if([patient healthCardNumber] != -1){
        
        [_patients addObject:patient];
        NSLog(@"accepting this patient with health number %i", [patient healthCardNumber]);
    }else{
        NSLog(@"not accepting this patient: no health number");
    }
}

- (Prescription *)requestMedicationForPatient:(Patient *)patient{
    
    for (Patient *p in _patients) {
        if(p.healthCardNumber == [patient healthCardNumber]){
            
            NSLog(@"found this patient in our list!");
            Prescription *prescription = [[Prescription alloc] initWithSymptom:[patient symptom] andCure:@"none" andPatient:patient];
            
            
            
            if([[patient symptom] isEqualToString:@"pain"]){
            
                
                
                
                [prescription setCure:@"tylenol"];
                
            }else{
                [prescription setCure:@"placebo"];
            }
            
            
            
            
            
            NSLog(@"previous patient, so can get meds");
            return prescription;
        }
    }
    
    NSLog(@"no meds for this new patient");
    return nil;
}


@end

