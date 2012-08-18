//
//  SecondViewController.h
//  studentBuzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsClass.h"
#import "CourseClass.h"
#import "StudentClass.h"
#import "SharedData.h"
#import "EventView.h"
@interface SecondViewController : UIViewController<UIScrollViewDelegate>
{
    IBOutlet UIScrollView *myScrollView;
    IBOutlet UILabel *infoLabel;
    BOOL authentication;
}

-(void)loadEvents;

@end
