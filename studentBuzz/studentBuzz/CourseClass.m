//
//  CourseClass.m
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CourseClass.h"

@implementation CourseClass
@synthesize rollno;
@synthesize semesters;


- (id)initWithDictionary:(NSDictionary *)otherDictionary
{
    self.rollno = [otherDictionary valueForKey:@"RollNo"];
    self.semesters = [otherDictionary valueForKey:@"Semesters"];
    return self;
}

@end
