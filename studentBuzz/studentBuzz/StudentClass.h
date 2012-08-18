//
//  StudentClass.h
//  Student Buzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentClass : NSObject
{    
    NSString *name;
    NSString *rollNo;
    NSString *batch;
    NSString *department;
    NSString *address;
    NSString *phone;
    NSString * password;
    NSArray *courses;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *rollNo;
@property (nonatomic, retain) NSString *batch;
@property (nonatomic, retain) NSString *department;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSString *phone;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSArray *courses;


- (id)initWithDictionary:(NSDictionary *)otherDictionary;



@end
