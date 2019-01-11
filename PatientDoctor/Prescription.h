//
//  Prescription.h
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Prescription : NSObject

@property (nonatomic, strong, readwrite) NSString *symptom;
@property (nonatomic, strong, readwrite) NSString *cure;
@property (nonatomic, strong, readonly) Patient *patient;

- (instancetype)initWithSymptom:(NSString *)symptom
                        andCure:(NSString *)cure
                     andPatient:(Patient *)patient;

@end

NS_ASSUME_NONNULL_END
