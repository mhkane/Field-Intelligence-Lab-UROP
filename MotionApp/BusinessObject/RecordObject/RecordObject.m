//
//  RecordObject.m

#import "RecordObject.h"

@implementation RecordObject

@synthesize record_id;
@synthesize record_name;
@synthesize record_time;
@synthesize record_duration;
@synthesize gpsObject;
@synthesize gyroscopeObject;
@synthesize accelObject;
@synthesize compassObject;
@synthesize contextArray;
@synthesize cloudArray;
@synthesize isGpsOn;
@synthesize isAccOn;
@synthesize isComOn;
@synthesize isGyroOn;

- (id)init
{
    self = [super init];
    if (self)
    {
        gpsObject = [[NSMutableArray alloc]init];
        gyroscopeObject = [[NSMutableArray alloc]init];
        accelObject = [[NSMutableArray alloc]init];
        compassObject = [[NSMutableArray alloc]init];
        contextArray = [[NSMutableArray alloc]init];
        cloudArray = [[NSMutableArray alloc]init];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)decoder{
    if((self = [self init])){
        [self setRecord_id:[decoder decodeIntForKey:@"record_id"]];
        [self setRecord_name:[decoder decodeObjectForKey:@"record_name"]];
        [self setRecord_time:[decoder decodeObjectForKey:@"record_time"]];
        [self setRecord_duration:[decoder decodeIntForKey:@"record_duration"]];
        [self setGpsObject:[decoder decodeObjectForKey:@"gpsObject"]];
        [self setGyroscopeObject:[decoder decodeObjectForKey:@"gyroscopeObject"]];
        [self setAccelObject:[decoder decodeObjectForKey:@"accelObject"]];
        [self setCompassObject:[decoder decodeObjectForKey:@"compassObject"]];
        [self setContextArray:[decoder decodeObjectForKey:@"contextArray"]];
         [self setCloudArray:[decoder decodeObjectForKey:@"cloudArray"]];
         [self setIsGpsOn:[decoder decodeIntForKey:@"isGpsOn"]];
         [self setIsAccOn:[decoder decodeIntForKey:@"isAccOn"]];
        [self setIsComOn:[decoder decodeIntForKey:@"isComOn"]];
        [self setIsGyroOn:[decoder decodeIntForKey:@"isGyroOn"]];
    }
    return self;
}
- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeInt: [self record_id] forKey: @"record_id"];
    [coder encodeInt: [self record_duration] forKey: @"record_duration"];
    [coder encodeInt: [self isGpsOn] forKey: @"isGpsOn"];
    [coder encodeInt: [self isAccOn] forKey: @"isAccOn"];
    [coder encodeInt:[self isGyroOn] forKey:@"isGyroOn"];
    [coder encodeInt:[self isComOn] forKey:@"isComOn"];
    [coder encodeObject:[self record_name] forKey:@"record_name"];
    [coder encodeObject:[self record_time] forKey:@"record_time"];
    [coder encodeObject:[self gpsObject] forKey:@"gpsObject"];
    [coder encodeObject:[self gyroscopeObject] forKey:@"gyrosscopeObject"];
    [coder encodeObject:[self accelObject] forKey:@"accelObject"];
    [coder encodeObject:[self compassObject] forKey:@"compassObject"];
    [coder encodeObject:[self contextArray] forKey:@"contextArray"];
    [coder encodeObject:[self cloudArray] forKey:@"cloudArray"];
    
}

@end
