//
//  Startup.m
//  Subclasses
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import "Startup.h"
#import "Manager.h"

@implementation Startup

@synthesize numberOfBosses;
@synthesize numberOfCoders;
@synthesize numberOfDesigners;
@synthesize numberOfProjectManagers;

- (Employee *) addEmployee: (NSString *) name
                 withEmail: (NSString *) email
                    ofType: (NSString *) type
{
    Employee *temp = [[Employee alloc] init];
    temp.name      = [NSString stringWithFormat:@"%@",name];
    temp.email     = [NSString stringWithFormat:@"%@",email];
    temp.type      = [NSString stringWithFormat:@"%@",type];
    
    if ([type isEqual: @"Coder"])
        numberOfCoders++;
    if ([type isEqual: @"Designer"])
        numberOfDesigners++;
    if ([type isEqual: @"Project Manager"])
        numberOfProjectManagers++;
    
    return temp;
}

- (Manager *) addManager: (NSString *) name
               withEmail: (NSString *) email
{
    Manager *temp              = [[Manager alloc] init];
    temp.name                  = [NSString stringWithFormat: @"%@", name];
    temp.email                 = [NSString stringWithFormat: @"%@", email];
    temp.type                  = @"Boss";
    temp.numberOfDirectReports = numberOfCoders + numberOfDesigners + numberOfProjectManagers;
    
    numberOfBosses++;
    
    return temp;
}

- (int) getNumberOfDirectReportsForCoders: (int) c
                            plusDesigners: (int) d
                      plusProjectManagers: (int) p
{
    return c + d + p;
}

- (void) changeEmployeeTypeFor: (Employee *) employee
                        ToType: (NSString *) newType
{
    if ([employee.type isEqual: @"Coder"])
        numberOfCoders--;
    if ([employee.type isEqual: @"Designer"])
        numberOfDesigners--;
    if ([employee.type isEqual: @"Project Manager"])
        numberOfProjectManagers--;
    employee.type = [NSString stringWithFormat: @"%@", newType];
    if ([employee.type isEqual: @"Coder"])
         numberOfCoders++;
    if ([employee.type isEqual: @"Designer"])
        numberOfDesigners++;
    if ([employee.type isEqual: @"Project Manager"])
        numberOfProjectManagers++;
}

@end
