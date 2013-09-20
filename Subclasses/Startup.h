//
//  Startup.h
//  Subclasses
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"

@interface Startup : NSObject

@property (readwrite, nonatomic) int numberOfBosses;
@property (readwrite, nonatomic) int numberOfCoders;
@property (readwrite, nonatomic) int numberOfDesigners;
@property (readwrite, nonatomic) int numberOfProjectManagers;

- (Employee *) addEmployee: (NSString *) name
                 withEmail: (NSString *) email
                    ofType: (NSString *) type;

- (Manager *) addManager: (NSString *) name
               withEmail: (NSString *) email;

- (int) getNumberOfDirectReportsForCoders: (int) numCoders
                            plusDesigners: (int) numDesigners
                      plusProjectManagers: (int) numProjectManagers;

- (void) changeEmployeeTypeFor: (Employee *) employee
                        ToType: (NSString *) newType;

@end
