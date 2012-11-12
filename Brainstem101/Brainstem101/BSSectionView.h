//
//  BSSectionView.h
//  Brainstem101
//
//  Created by Samantha Dove on 10/3/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface BSSectionView : UIView

@property (nonatomic, retain) CALayer *backgroundLayer;
@property (nonatomic, retain) CALayer *pathLayer;
@property (nonatomic, retain) NSNumber *sxnNumber;
@property (nonatomic, retain) NSNumber *currentImageScale;


- (id) initWithFrame:(CGRect)frame andSectionNumber:(int) num andScale:(float)imageScale;
- (void) drawPaths:(NSMutableArray *)inputPaths;

- (void) fade;
- (void) unfade;
- (void) clearPaths;
- (void)rotateView;

@end
