//
//  authProtocol.h
//  studentBuzz
//
//  Created by Muneeb on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentClass.h"

@protocol authProtocol <NSObject>

//-(void)isAuth:(BOOL)auth;
-(void)setStudent:(StudentClass*)student;
@end
