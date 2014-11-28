//
//  AccelObject.m

#import "AccelObject.h"

@implementation AccelObject

@synthesize accel_id;
@synthesize record_id;
@synthesize x;
@synthesize y;
@synthesize z;
@synthesize timeStamp;
- (id)initWithCoder:(NSCoder *)decoder{
    if((self = [self init])){
        [self setAccel_id: [decoder decodeObjectForKey:@"accel_id"]];
        [self setRecord_id:[decoder decodeObjectForKey:@"record_id"]];
        [self setX:[decoder decodeObjectForKey:@"x"]];
        [self setY:[decoder decodeObjectForKey:@"y"]];
        [self setZ:[decoder decodeObjectForKey:@"z"]];
        [self setTimeStamp:[decoder decodeObjectForKey:@"timestamp"]];
    }
    return self;
    
    
}
- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: [NSNumber numberWithInt:[self accel_id]] forKey: @"accel_id"];
    [coder encodeObject: [NSNumber numberWithInt:[self record_id]] forKey: @"record_id"];
    [coder encodeObject: [self x] forKey: @"x"];
    [coder encodeObject: [self y] forKey: @"y"];
    [coder encodeObject:[self z] forKey:@"z"];
    [coder encodeObject:[self timeStamp] forKey:@"timestamp"];
}

@end
