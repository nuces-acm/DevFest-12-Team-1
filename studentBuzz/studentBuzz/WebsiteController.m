//
//  WebsiteController.m
//  Assignment2b_080333
//
//  Created by Muneeb on 10/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WebsiteController.h"


@implementation WebsiteController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Website", @"Website");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
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
    self.title = @"Website";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *fast = [NSURL URLWithString:@"http://www.nu.edu.pk"];
    NSURLRequest *fastRequest = [NSURLRequest requestWithURL:fast];
    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    [web loadRequest:fastRequest];

    self.view = web;

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
