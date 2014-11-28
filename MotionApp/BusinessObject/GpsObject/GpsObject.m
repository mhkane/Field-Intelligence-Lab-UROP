//
//  GpsObject.m

#import "GpsObject.h"

@implementation GpsObject

@synthesize gps_id;
@synthesize record_id;
@synthesize lat;
@synthesize log;
@synthesize height;
@synthesize timeStamp;
- (id)initWithCoder:(NSCoder *)decoder{
    if((self = [self init])){
    [self setGps_id:[decoder decodeObjectForKey:@"gps_id"]];
    [self setRecord_id:[decoder decodeObjectForKey:@"record_id"]];
    [self setLat:[decoder decodeObjectForKey:@"lat"]];
    [self setLog:[decoder decodeObjectForKey:@"log"]];
    [self setHeight:[decoder decodeObjectForKey:@"height"]];
    [self setTimeStamp:[decoder decodeObjectForKey:@"timestamp"]];
    }
    return self;
     
    
}
- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: [NSNumber numberWithInt:[self gps_id]] forKey: @"gps_id"];
    [coder encodeObject: [NSNumber numberWithInt:[self record_id]] forKey: @"record_id"];
    [coder encodeObject: [self lat] forKey: @"lat"];
    [coder encodeObject: [self log] forKey: @"log"];
    [coder encodeObject:[self height] forKey:@"height"];
    [coder encodeObject:[self timeStamp] forKey:@"timestamp"];
}



@end
