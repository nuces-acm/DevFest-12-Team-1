//
//  CoursesDetailController.h
//  studentBuzz
//
//  Created by Muneeb on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentClass.h"

@interface CoursesDetailController : UIViewController<UIScrollViewDelegate>
{
    NSDictionary *course;
    IBOutlet UILabel *name;
    IBOutlet UILabel *inst;
    IBOutlet UILabel *att;
    IBOutlet UILabel *resources,*announcement;
    IBOutlet UILabel *a1;
    IBOutlet UILabel *a2;
    IBOutlet UILabel *a3;
    IBOutlet UILabel *q1;
    IBOutlet UILabel *q2;
    IBOutlet UILabel *q3;
    IBOutlet UILabel *m1;
    IBOutlet UILabel *m2;
    IBOutlet UIScrollView *scrollView;
    
}
@property (nonatomic, retain) NSDictionary *course;
@end
