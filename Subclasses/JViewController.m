//
//  JViewController.m
//  Subclasses
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import "JViewController.h"
#import "Person.h"
#import "Employee.h"
#import "Manager.h"
#import "Startup.h"

@interface JViewController ()
{
    //Object declaration
    
    Employee *employee1, *employee2, *employee3;
    Manager  *manager1;
    Startup  *startup1;
    Person   *person1, *person2;
}
@end

@implementation JViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Object instantiation
    
    employee1 = [[Employee alloc] init];
    employee2 = [[Employee alloc] init];
    employee3 = [[Employee alloc] init];
    manager1  = [[Manager  alloc] init];
    startup1  = [[Startup  alloc] init];
    person1   = [[Person   alloc] init];
    person2   = [[Person   alloc] init];
    
    //Create manager
    
    manager1  = [startup1 addManager:@"Ronald McDonald"
                           withEmail:@"rmcdonald@mcdonalds.com"];
    
    //Create employees
    
    employee1 = [startup1 addEmployee:@"Ham Burglar"
                            withEmail:@"hburglar@mcdonalds.com"
                               ofType:@"Coder"];
    employee2 = [startup1 addEmployee:@"John Silver"
                            withEmail:@"jsilver@longjohnsilvers.com"
                               ofType:@"Designer"];
    employee3 = [startup1 addEmployee:@"His Highness"
                            withEmail:@"theking@burgerking.com"
                               ofType:@"Project Manager"];
    
    //Create person and make a new person from a copy of the first one
    
    person1 = [person1 addPerson:@"Superman"
                       withEmail:@"superman@hotmail.com"
                         withAge:60];
    person2 = [person2 copyPerson:person1];
        
    //Display manager
    
    NSLog(@"Name: %@, Email: %@, Type: %@, Reports: %i",
          manager1.name, manager1.email, manager1.type, manager1.numberOfDirectReports);
    
    //Display employees
    
    NSLog(@"Name: %@, Email: %@, Type: %@", employee1.name, employee1.email, employee1.type);
    NSLog(@"Name: %@, Email: %@, Type: %@", employee2.name, employee2.email, employee2.type);
    NSLog(@"Name: %@, Email: %@, Type: %@", employee3.name, employee3.email, employee3.type);
    
    //Display running tally of coders, designers and project managers
    
    NSLog(@"Coders: %i, Designers: %i, Project Managers: %i",
          startup1.numberOfCoders, startup1.numberOfDesigners, startup1.numberOfProjectManagers);
    
    //Display persons
    
    NSLog(@"Person 1 Name: %@, Email: %@, Age: %i, ACTUAL AGE: %i",
          person1.name, person1.email, person1.getPCAge, person1.age);
    NSLog(@"Person 2 Name: %@, Email: %@, Age: %i, ACTUAL AGE: %i",
          person2.name, person2.email, person2.getPCAge, person2.age);
    
    //Change person2's properties to confirm that person2 is a separate instance from person1
    
    person2.name = @"Batman";
    person2.email = @"bwayne@wayneenterprises.net";
    person2.age  = 20;
    
    //Display person2's new properties
    
    NSLog(@"UPDATED Person 2 Name: %@, Email: %@, Age: %i, ACTUAL AGE: %i",
          person2.name, person2.email, person2.getPCAge, person2.age);
    
}

@end
