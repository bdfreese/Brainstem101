    //
    //  BSStructurePath.m
    //  Brainstem101
    //
    //  Created by Brian Freese on 10/7/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import "BSStructurePath.h"

@implementation BSStructurePath

@synthesize pathColor;
@synthesize fillColor;
@synthesize pathData;
@synthesize pathThickness;

- (id)init
{
    self = [super init];
    if (self) {
        pathThickness = [NSNumber numberWithFloat:PATH_THICKNESS];
        pathData = [[UIBezierPath alloc] init];
        pathColor = [UIColor yellowColor];
        fillColor = [UIColor clearColor];
    }
    return self;
}

-(void)setPath:(NSMutableArray *)pathArrayData{
    self.pathData = [self convertArrayToBezierPath:pathArrayData];
}

-(UIBezierPath *)convertArrayToBezierPath:(NSMutableArray *)input{
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path setFlatness:1.0];
    [path setLineJoinStyle:kCGLineJoinBevel];
    
    for(int i = 0; i < [input count]; i++){
        [path moveToPoint:[[[input objectAtIndex:i] objectAtIndex:0] CGPointValue]];
        for(int j = 0; j < [[input objectAtIndex:i] count]; j++){
            [path addLineToPoint:[[[input objectAtIndex:i] objectAtIndex:j] CGPointValue]];
        }
        [path closePath];
    }
    return path;
}

@end
