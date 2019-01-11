//
//  MedicalSystem.h
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
#import "Doctor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MedicalSystem : NSObject

@property (nonatomic, strong, readwrite) NSMutableArray<Prescription *> *prescriptions;

- (void)addPrescription:(NSMutableArray<Prescription *>*) prescription byDoctor:(Doctor *)doctor;

@end

NS_ASSUME_NONNULL_END
