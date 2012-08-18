//
//  MapController.m
//  
//
//  Created by Muneeb on 10/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapController.h"


@implementation MapController
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Map", @"Map");
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
    [super viewDidLoad];
    
    span.latitudeDelta = 0.01;
    span.longitudeDelta = 0.01;
    location.latitude=31.481096;
    location.longitude=74.30338;
    region.span=span;
    region.center=location;
    [mapView setRegion:region animated:YES];
    self.title = @"Map";
    self.view = mapView;
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
