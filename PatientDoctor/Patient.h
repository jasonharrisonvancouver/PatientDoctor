//
//  Patient.h
//  PatientDoctor
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property (nonatomic, readonly) int yearBorn;
@property (nonatomic, strong, readwrite) NSString *firstName;
@property (nonatomic, strong, readwrite) NSString *lastName;
@property (nonatomic, readwrite) int healthCardNumber;
@property (nonatomic, strong, readwrite) NSString *symptom;

- (instancetype)initWithYearBorn:(int)yearBorn andFirstName:(NSString *)firstName andLastName:(NSString *)lastName;



@end

NS_ASSUME_NONNULL_END
