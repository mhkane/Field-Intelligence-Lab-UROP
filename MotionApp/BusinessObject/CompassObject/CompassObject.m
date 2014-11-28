//
//  CompassObject.m

#import "CompassObject.h"

@implementation CompassObject

@synthesize compass_id;
@synthesize record_id;
@synthesize magHeading;
@synthesize trueHeading;
@synthesize timeStamp;

- (id)initWithCoder:(NSCoder *)decoder{
    if((self = [self init])){
        [self setCompass_id:[decoder decodeObjectForKey:@"compass_id"]];
        [self setRecord_id:[decoder decodeObjectForKey:@"record_id"]];
        [self setMagHeading:[decoder decodeObjectForKey:@"magHeading"]];
        [self setTrueHeading:[decoder decodeObjectForKey:@"trueHeading"]];
        [self setTimeStamp:[decoder decodeObjectForKey:@"timestamp"]];
    }
    return self;
    
    
}
- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: [NSNumber numberWithInt:[self compass_id]] forKey: @"compass_id"];
    [coder encodeObject: [NSNumber numberWithInt:[self record_id]] forKey: @"record_id"];
    [coder encodeObject: [self magHeading] forKey: @"magHeading"];
    [coder encodeObject: [self trueHeading] forKey: @"trueHeading"];
    [coder encodeObject:[self timeStamp] forKey:@"timestamp"];
}


@end
