//
//  CoursesDetailController.m
//  studentBuzz
//
//  Created by Muneeb on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CoursesDetailController.h"

@implementation CoursesDetailController
@synthesize course;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    scrollView.delegate=self;
    [scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    self.title = [course objectForKey:@"Name"];
    //NSLog(@"%@",course);
    name.text = [course objectForKey:@"Name"];
    inst.text = [course objectForKey:@"Instructor"];
    att.text = [course objectForKey:@"Attendance"];
    NSArray *assign = [course objectForKey:@"Assignment"];
    NSArray *mid = [course objectForKey:@"Mid"];
    NSArray *quiz = [course objectForKey:@"Quiz"];
    a1.text = [assign objectAtIndex:0];
    a2.text = [assign objectAtIndex:1];
    a3.text = [assign objectAtIndex:2];
    q1.text = [quiz objectAtIndex:0];
    q2.text = [quiz objectAtIndex:1];
    q3.text = [quiz objectAtIndex:2];
    m1.text = [mid objectAtIndex:0];
    m2.text = [mid objectAtIndex:1];
    resources.text = [course objectForKey:@"Resources"];
    announcement.text = [course objectForKey:@"Announcement"];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
