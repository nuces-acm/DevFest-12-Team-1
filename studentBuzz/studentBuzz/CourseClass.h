//
//  CourseClass.h
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CourseClass : NSObject
{    
    NSString *rollno;
    NSArray *semesters;
}

@property (nonatomic, retain) NSString *rollno;
@property (nonatomic, retain) NSArray *semesters;

- (id)initWithDictionary:(NSDictionary *)otherDictionary;

@end
