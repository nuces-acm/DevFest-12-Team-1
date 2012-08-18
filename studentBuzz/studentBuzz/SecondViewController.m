//
//  SecondViewController.m
//  studentBuzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Events", @"Events");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
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
    
    myScrollView.delegate=self;
    myScrollView.pagingEnabled=YES;
    [self loadEvents];
    
}


-(void)loadEvents
{
    SharedData *data = [[SharedData alloc] init];
    NSArray *dataArray3 = [[NSArray alloc] init];
    dataArray3 = [data readEventsFile];
    EventsClass *obj = [[EventsClass alloc] init];
    
    int NoOfEvents=dataArray3.count;
    
    if (NoOfEvents==0)
    {
        infoLabel.hidden=NO;
    }
    else
    {
        infoLabel.hidden=YES;
        [myScrollView setContentSize:CGSizeMake(NoOfEvents*myScrollView.frame.size.width, myScrollView.frame.size.height)];
        for (int i=0;i<dataArray3.count;i++)
        {
            obj = [dataArray3 objectAtIndex:i];
            EventView *view = [[EventView alloc] initWithNibName:@"EventView" bundle:nil];
            view.obj = obj;
            [view.view setFrame:CGRectMake(i*myScrollView.frame.size.width, 0, myScrollView.frame.size.width, myScrollView.frame.size.height)];
            [myScrollView addSubview:view.view];
        }
    }
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
