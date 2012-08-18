//
//  SharedData.m
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SharedData.h"

@implementation SharedData
@synthesize obj;
@synthesize authentication;
@synthesize index;
-(NSArray *) readStudentFile
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Student" ofType:@"plist"];
    Studentdata = [[NSDictionary alloc] initWithContentsOfFile:path];
    students = [[NSMutableArray alloc] init]; 
    
    for (NSDictionary *temp in Studentdata)
    {
        StudentClass *studentStruct = [[StudentClass alloc] initWithDictionary:[Studentdata objectForKey:temp]];
        [students addObject:studentStruct];
    }
    return students;
}
-(NSArray *) readCourseFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Course" ofType:@"plist"];
    Coursedata = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *courses = [[NSMutableArray alloc] init]; 
    
    for (NSDictionary *temp in Coursedata)
    {
        CourseClass *courseStruct = [[CourseClass alloc] initWithDictionary:[Coursedata objectForKey:temp]];
        [courses addObject:courseStruct];
    }
    //NSLog(@"%@",courses);
    return courses;
}
-(NSArray *) readEventsFile
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Events" ofType:@"plist"];
    Eventsdata = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *events = [[NSMutableArray alloc] init]; 
    
    for (NSDictionary *temp in Eventsdata)
    {
        EventsClass *eventStruct = [[EventsClass alloc] initWithDictionary:[Eventsdata objectForKey:temp]];
        [events addObject:eventStruct];
    }
    return events;
}



-(SharedData*)getObject
{
    if(self)
        return self;
    else
    {
        SharedData *objSelf = [[SharedData alloc] init];
        return objSelf;
    }
}

@end
