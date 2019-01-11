//
//  Doctor.h
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, strong, readwrite) NSString *specialty;
@property (nonatomic, strong, readwrite) NSString *firstName;
@property (nonatomic, strong, readwrite) NSString *lastName;
@property (nonatomic, strong, readwrite) NSMutableArray<Patient *> *patients;

- (instancetype)initWithSpecialty:(NSString *)specialty
                    andFirstName:(NSString *)firstName
                      andLastName:(NSString *)lastName;


- (void)visit:(Patient *)patient;

- (Prescription *)requestMedicationForPatient:(Patient *)patient;

@end

NS_ASSUME_NONNULL_END
