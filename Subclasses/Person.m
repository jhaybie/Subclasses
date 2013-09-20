//
//  Person.m
//  Subclasses
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize email;
@synthesize age;

- (Person *) addPerson:(NSString *)tempname withEmail:(NSString *)tempemail withAge:(int)tempage
{
    Person *temp = [[Person alloc] init];
    temp.name    = tempname;
    temp.email   = tempemail;
    temp.age     = tempage;
    
    return temp;
}

- (Person *) copyPerson: (Person *)source
{
    Person *dest = [[Person alloc] init];
    dest.name    = [NSString stringWithFormat:@"%@",source.name];
    dest.email   = [NSString stringWithFormat:@"%@",source.email];
    dest.age     = source.age;
    
    return dest;
}

- (int) getPCAge
{
    if ([self age] > 50)
        return 21;
    else
        return [self age];
}


@end
