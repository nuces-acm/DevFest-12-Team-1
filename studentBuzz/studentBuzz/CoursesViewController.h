//
//  CoursesViewController.h
//  studentBuzz
//
//  Created by Muneeb on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsClass.h"
#import "CourseClass.h"
#import "StudentClass.h"
#import "SharedData.h"
#import "authProtocol.h"
#import "CoursesDetailController.h"
@interface CoursesViewController : UITableViewController<authProtocol>
{
    BOOL authentication;
    NSArray *dataArray;
    SharedData *data;
    StudentClass *obj;
}
-(void)loadCourses;

@end
