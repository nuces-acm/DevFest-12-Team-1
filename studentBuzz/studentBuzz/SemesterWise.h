//
//  SemesterWise.h
//  studentBuzz
//
//  Created by Muneeb on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SharedData.h"
#import "StudentClass.h"


@interface SemesterWise : UITableViewController
{
    NSArray *dataArray;
    CourseClass *obj;
    NSArray *titleArr;
}

@end
