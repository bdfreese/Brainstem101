    //
    //  BSStructurePath.h
    //  Brainstem101
    //
    //  Created by Brian Freese on 10/7/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import <Foundation/Foundation.h>

@interface BSStructurePath : NSObject

@property (nonatomic, retain) UIBezierPath *pathData;
@property (nonatomic, retain) UIColor *pathColor;
@property (nonatomic, retain) UIColor *fillColor;
@property (nonatomic, retain) NSNumber *pathThickness;

-(void)setPath:(NSMutableArray *)pathArrayData;

@end
