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
        [self setAccel_id: [decoder decodeIntForKey:@"accel_id"]];
        [self setRecord_id:[decoder decodeIntForKey:@"record_id"]];
        [self setX:[decoder decodeObjectForKey:@"x"]];
        [self setY:[decoder decodeObjectForKey:@"y"]];
        [self setZ:[decoder decodeObjectForKey:@"z"]];
        [self setTimeStamp:[decoder decodeObjectForKey:@"timestamp"]];
    }
    return self;
    
    
}
- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeInt: [self accel_id] forKey: @"accel_id"];
    [coder encodeInt: [self record_id] forKey: @"record_id"];
    [coder encodeObject: [self x] forKey: @"x"];
    [coder encodeObject: [self y] forKey: @"y"];
    [coder encodeObject:[self z] forKey:@"z"];
    [coder encodeObject:[self timeStamp] forKey:@"timestamp"];
}

@end
