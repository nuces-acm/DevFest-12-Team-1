//
//  FirstViewController.m
//  studentBuzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController
@synthesize delegate;
@synthesize abc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Profile", @"Profile");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        auth=NO;
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SharedData *data = [[SharedData alloc] init];
    dataArray = [[NSArray alloc] init];
    dataArray = [data readStudentFile];   
    
    [self login];
    
}

-(void)login
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Authentication" message:@"Enter User Details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Login", nil];
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    alert.tag=0;
    [alert show];
    [self loginFailed];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{   
    
    UITextField *username;
    UITextField *password;
    
    if (alertView.tag==0)
    {
        username = [alertView textFieldAtIndex:0];
        password = [alertView textFieldAtIndex:1];
        
        for (StudentClass * myobj in dataArray)
        {   
            if([myobj.rollNo isEqualToString:username.text] && [myobj.password isEqualToString:password.text])
            {
                [self loginSuccess:myobj];
                break;
            }
            else
                [self loginFailed];
        }
    }
}
    
    
-(void)loginSuccess:(StudentClass*)obj
{
    auth=YES;
    //[self.delegate isAuth:auth];
    [self.delegate setStudent:obj];
    [infoLabel setHidden:YES];
    [loginBtn setHidden:YES];
    [logoutBtn setHidden:NO];
    [name setHidden:NO];
    [rollno setHidden:NO];
    [batch setHidden:NO];
    [department setHidden:NO];
    [address setHidden:NO];
    [phone setHidden:NO];
    [studentPic setHidden:NO];
    [logoPic setHidden:NO];
    [studentPicFrame setHidden:NO];
    
    name.text=obj.name;
    rollno.text=obj.rollNo;
    phone.text=obj.phone;
    batch.text=obj.batch;
    address.text= obj.address;
    department.text=obj.department;
    NSString * picName=[[NSString alloc] initWithString:[obj rollNo]];
    picName= [picName stringByAppendingString:@".jpeg"];
    [studentPic setImage:[UIImage imageNamed:picName]];
}
-(void)loginFailed
{
    auth=NO;
    //[self.delegate isAuth:auth];
    [infoLabel setHidden:NO];
    [loginBtn setHidden:NO];
    [logoutBtn setHidden:YES];
    [name setHidden:YES];
    [rollno setHidden:YES];
    [batch setHidden:YES];
    [department setHidden:YES];
    [address setHidden:YES];
    [phone setHidden:YES];
    [studentPic setHidden:YES];
    [logoPic setHidden:YES];
    [studentPicFrame setHidden:YES];
}

-(IBAction)loginBtnPressed:(id)sender
{
    [self login];
}
-(IBAction)logoutBtnPressed:(id)sender
{
    [self loginFailed];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
