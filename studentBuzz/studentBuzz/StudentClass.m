//
//  StudentClass.m
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StudentClass.h"

@implementation StudentClass

@synthesize name;
@synthesize rollNo;
@synthesize batch;
@synthesize address;
@synthesize phone;
@synthesize department;
@synthesize password;
@synthesize courses;


- (id)initWithDictionary:(NSDictionary *)otherDictionary
{
    self.name = [otherDictionary valueForKey:@"Name"];
    self.rollNo = [otherDictionary valueForKey:@"RollNo"];
    self.department = [otherDictionary valueForKey:@"Department"];
    self.address = [otherDictionary valueForKey:@"Address"];
    self.phone = [otherDictionary valueForKey:@"Phone"];
    self.batch = [otherDictionary valueForKey:@"Batch"];
    self.password=[otherDictionary valueForKey:@"Password"];
    self.courses=[otherDictionary valueForKey:@"CurrentCourses"];
    
    return self;
}

@end
