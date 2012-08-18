//
//  MapController.h
//  studentBuzz
//
//  Created by Muneeb on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface MapController : UIViewController <MKMapViewDelegate>{
    CLLocationCoordinate2D location;
    MKCoordinateRegion region;
    MKCoordinateSpan span;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
