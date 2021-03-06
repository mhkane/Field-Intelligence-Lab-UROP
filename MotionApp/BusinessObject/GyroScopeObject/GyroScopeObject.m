//
//  GyroScopeObject.m

#import "GyroScopeObject.h"

@implementation GyroScopeObject

@synthesize gyro_id;
@synthesize record_id;
@synthesize x;
@synthesize y;
@synthesize z;
@synthesize timeStamp;

- (id)initWithCoder:(NSCoder *)decoder{
    if((self = [self init])){
        [self setGyro_id: [decoder decodeIntForKey:@"gyro_id"]];
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
    [coder encodeInt: [self gyro_id] forKey: @"gyro_id"];
    [coder encodeInt: [self record_id] forKey: @"record_id"];
    [coder encodeObject: [self x] forKey: @"x"];
    [coder encodeObject: [self y] forKey: @"y"];
    [coder encodeObject:[self z] forKey:@"z"];
    [coder encodeObject:[self timeStamp] forKey:@"timestamp"];
}

@end
