//
//  EventsClass.h
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventsClass : NSObject
{    
    NSString *name;
    NSString *organizer;
    NSString *date;
    NSString *venue;
    NSString *description;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *organizer;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSString *venue;
@property (nonatomic, retain) NSString *description;


- (id)initWithDictionary:(NSDictionary *)otherDictionary;
@end
