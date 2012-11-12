    //
    //  BSStemView.m
    //  StemView
    //
    //  Created by Cameron Ehrlich on 10/19/12.
    //  Copyright (c) 2012 Cameron Ehrlich. All rights reserved.
    //

#import <QuartzCore/QuartzCore.h>
#import "BSStemView.h"

int currentImageIndex = 0;
float lastX;
BOOL isBeingTouched = NO;
BOOL doneLoadingImages = NO;



@implementation BSStemView{
    UIImageView *imageView;
    NSMutableArray *imageArray;
    NSTimer *rotationTimer;
}


-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setContentMode:UIViewContentModeScaleAspectFit];
        [self setClipsToBounds:YES];
        
        imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"frame-000000.jpg"]];
        imageView.frame = self.bounds;
        [imageView setContentMode:UIViewContentModeScaleAspectFit];

        
        [self addSubview:imageView];
        imageArray = [[NSMutableArray alloc] init];
        
        rotationTimer = [NSTimer scheduledTimerWithTimeInterval:0.08 target:self selector:@selector(autoRotate) userInfo:nil repeats:YES];
        
        dispatch_block_t loadArray = ^{
            
            
            NSMutableArray *paths = [[[NSBundle mainBundle] pathsForResourcesOfType:@"jpg" inDirectory:nil] mutableCopy];
            
            for(NSString *filename in paths)
            {
                if ([[filename lastPathComponent] hasPrefix:@"frame-"]) {
                    [imageArray addObject:[UIImage imageNamed:[filename lastPathComponent]]];
                }
            }
            doneLoadingImages = YES;
            NSLog(@"Done Loading images");
        };
        
        
        dispatch_queue_t queue1 = dispatch_queue_create("arrayLoaderQueue",DISPATCH_QUEUE_CONCURRENT);
        
        dispatch_async(queue1, loadArray);
        
        
    }
    
    return self;
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [super touchesBegan:touches withEvent:event];
        isBeingTouched = YES;
        lastX = [[touches anyObject] locationInView:self].x;

}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    if (isBeingTouched) {
        
        if (lastX > [[touches anyObject] locationInView:self].x) {
            currentImageIndex-=4;
        }else if(lastX < [[touches anyObject] locationInView:self].x){
            currentImageIndex+=4;
        }
        [imageView setImage:[imageArray objectAtIndex:[self adjustIndex:currentImageIndex]]];
        lastX = [[touches anyObject] locationInView:self].x;
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    isBeingTouched = NO;
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    isBeingTouched = NO;
}


- (int) adjustIndex:(int)index{
    if (index >= 0 && index < [imageArray count]-1) {
        currentImageIndex = index;
    }
    if(index < 0){
        currentImageIndex = [imageArray count]-1 + index;
    }else if (index > [imageArray count]-1){
        currentImageIndex = 0;
    }
    return currentImageIndex;
}


-(void)autoRotate{
    if (!isBeingTouched) {
        currentImageIndex+=1;
        [imageView setImage:[imageArray objectAtIndex:[self adjustIndex:currentImageIndex]]];
    }
}



@end
