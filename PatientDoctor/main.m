//
//  main.m
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MedicalSystem.h"
#import "Doctor.h"
#import "Prescription.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MedicalSystem *medicalSystem = [[MedicalSystem alloc] init];
        
        Doctor *doctor = [[Doctor alloc] initWithSpecialty:@"surgeon"
                                              andFirstName:@"sammy"
                                               andLastName:@"surgyy"];
        
        Patient *p1 = [[Patient alloc] initWithYearBorn:2000
                                           andFirstName:@"yusef"
                                            andLastName:@"youngster"];
        
        [doctor visit:p1];
        
        [p1 setHealthCardNumber:123];
        [doctor visit:p1];
        
        Prescription *prescription = [[Prescription alloc] init];
        prescription = [doctor requestMedicationForPatient:p1];
        
        
        
        if(nil != prescription){
            [medicalSystem addPrescription:prescription
                                  byDoctor:doctor];
            NSLog(@"prescription added to medical system");
        }else{
            NSLog(@"prescription not allowed so not added to medical system");
        }
        
        
    }
    return 0;
}
