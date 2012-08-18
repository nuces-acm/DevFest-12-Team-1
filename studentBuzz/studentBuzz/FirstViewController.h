//
//  FirstViewController.h
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
#import "authProtocol.h"
@interface FirstViewController : UIViewController<UIAlertViewDelegate>

{
    NSArray * dataArray;
    IBOutlet UILabel * name;
    IBOutlet UILabel * rollno;
    IBOutlet UILabel * phone;
    IBOutlet UILabel * batch;
    IBOutlet UILabel * address;
    IBOutlet UILabel * department;
    IBOutlet UIImageView * studentPic;
    IBOutlet UILabel *infoLabel;
    IBOutlet UIButton *loginBtn;
    IBOutlet UIButton *logoutBtn;
    IBOutlet UIImageView *logoPic;
    IBOutlet UIImageView *studentPicFrame;
    BOOL auth;
}
@property (nonatomic , retain) id <authProtocol>delegate;
@property (nonatomic , retain) NSString *abc;
-(void)login;
-(void)loginSuccess:(StudentClass *)obj;
-(void)loginFailed;

-(IBAction)loginBtnPressed:(id)sender;
-(IBAction)logoutBtnPressed:(id)sender;

@end
