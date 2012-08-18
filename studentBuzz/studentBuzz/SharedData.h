//
//  SharedData.h
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentClass.h"
#import "CourseClass.h"
#import "EventsClass.h"
#import "authProtocol.h"
@interface SharedData : UIViewController
{
    NSDictionary *Studentdata;
    NSDictionary *Coursedata;
    NSDictionary *Eventsdata;
    StudentClass* obj;
    NSMutableArray *students;
    BOOL authentication;
    int index;
}
@property(nonatomic,assign) int index;
@property (nonatomic,retain) StudentClass *obj;
@property (nonatomic,assign) BOOL authentication;
-(NSArray *) readStudentFile;
-(NSArray *) readCourseFile;
-(NSArray *) readEventsFile;
-(SharedData*)getObject;

@end
