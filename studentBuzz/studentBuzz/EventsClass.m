//
//  EventsClass.m
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventsClass.h"

@implementation EventsClass
@synthesize name;
@synthesize date;
@synthesize organizer;
@synthesize venue;
@synthesize description;


- (id)initWithDictionary:(NSDictionary *)otherDictionary
{
    self.name = [otherDictionary valueForKey:@"Name"];
    self.date = [otherDictionary valueForKey:@"Date"];
    self.organizer = [otherDictionary valueForKey:@"Organizer"];
    self.venue = [otherDictionary valueForKey:@"Venue"];
    self.description = [otherDictionary valueForKey:@"Description"];
    
    return self;
}
@end
