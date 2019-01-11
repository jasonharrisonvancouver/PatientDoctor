//
//  MedicalSystem.m
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "MedicalSystem.h"

@implementation MedicalSystem

- (instancetype)init
{
    self = [super init];
    if (self != nil) {
        _prescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addPrescription:(NSMutableArray<Prescription *> *)prescription byDoctor:(Doctor *)doctor{
    [_prescriptions addObject:prescription];
}

@end
