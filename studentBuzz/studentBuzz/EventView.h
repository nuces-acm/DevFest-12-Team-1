//
//  EventView.h
//  studentBuzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsClass.h"

@interface EventView : UIViewController
{
    IBOutlet UILabel * name;
    IBOutlet UILabel * venue;
    IBOutlet UILabel * date;
    IBOutlet UILabel * org;
    IBOutlet UILabel * desc;
    IBOutlet UIScrollView * scroll;
    //EventsClass *obj;
}

@property (nonatomic, retain) EventsClass *obj;
@end
