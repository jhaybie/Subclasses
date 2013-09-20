//
//  Person.h
//  Subclasses
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString  *name;
@property (weak, nonatomic)   NSString  *email;
@property (nonatomic)         int       age;

- (Person *) addPerson: (NSString *) tempname
             withEmail: (NSString *) tempemail
               withAge: (int)        tempage;

- (Person *) copyPerson: (Person *) tempperson;

- (int) getPCAge;

@end
