//
//  BSSectionView.m
//  Brainstem101
//
//  Created by Samantha Dove on 10/3/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import "BSSectionView.h"
#import "BSStructurePath.h"
#import <QuartzCore/QuartzCore.h>
#import <CoreImage/CoreImage.h>


float currentFromRotate;
float currentToRotatate;

@implementation BSSectionView

@synthesize backgroundLayer;
@synthesize pathLayer;
@synthesize sxnNumber;
@synthesize currentImageScale;

- (id) initWithFrame:(CGRect)frame andSectionNumber:(int) num andScale:(float)imageScale{
    self = [super initWithFrame:frame];
    if (self) {
        
        sxnNumber = [NSNumber numberWithInt:num];
        currentImageScale = [NSNumber numberWithFloat:imageScale];
        backgroundLayer = [[CALayer alloc] init];
        pathLayer = [[CALayer alloc] init];
        [backgroundLayer setFrame:frame];
        [pathLayer setFrame:frame];
        [backgroundLayer setContents:(id)[UIImage imageNamed:[NSString stringWithFormat:@"sxn_%d.png",num]].CGImage];
        [self.layer addSublayer:backgroundLayer];
        [backgroundLayer addSublayer:pathLayer];
        
    }
    return self;
}

- (void) drawPaths:(NSMutableArray *)inputPaths{
    
    // replace these with image dimensions somehow
    UIGraphicsBeginImageContext(CGSizeMake(1314, 868));
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(currentContext, 1, 1);
    CGContextClearRect(currentContext, self.frame);
    
    for (int i = 0; i < inputPaths.count; i++) {
        BSStructurePath *currPath = [inputPaths objectAtIndex:i];

        [[currPath pathColor] setStroke];
        [[currPath fillColor] setFill];
        CGContextSetLineWidth(currentContext, [[currPath pathThickness] floatValue]);
            //CGFloat dashes[] = { 1, 1 };
            //CGContextSetLineDash( currentContext, 0.0, dashes, 2 );
        CGContextSetFlatness(currentContext, 1);
        
        CGContextBeginPath(currentContext);
        CGContextAddPath(currentContext, [[currPath pathData] CGPath]);
        CGContextDrawPath(currentContext, kCGPathFillStroke);
    }
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [pathLayer setContents:(id)[img CGImage]];
}

- (void) fade{
    [[self backgroundLayer] setOpacity:0.5];
}
- (void) unfade{
    [[self backgroundLayer] setOpacity:1.0];
}
- (void) clearPaths{
    [[self pathLayer] setContents:nil];
}

- (void)rotateView{

    [UIView animateWithDuration:0.5 delay:0 options: UIViewAnimationCurveEaseOut animations:
     ^{
         
         CGAffineTransform blah = CGAffineTransformMakeRotation(M_PI/1);
         CGAffineTransform blerg = CGAffineTransformMakeScale(self.transform.a, self.transform.d);
         self.transform = CGAffineTransformConcat(blah, blerg);
        
    } completion:^(BOOL finished){ NSLog(@"Done!"); }];
    
}

@end
