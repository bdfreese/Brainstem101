//
//  BSColors.m
//  BLAH
//
//  Created by Samantha Dove on 10/13/12.
//  Copyright (c) 2012 Samantha Dove. All rights reserved.
//

#import "BSColors.h"
#define ALPHA .76
#define DIVISOR 255

@implementation BSColors

@synthesize colorArray;

@synthesize crimson;
@synthesize pink;
@synthesize palevioletred;
@synthesize violetred1;
@synthesize hotpink;
@synthesize deeppink;
@synthesize maroon1;
@synthesize orchid2;
@synthesize plum;
@synthesize magenta2;

@synthesize mediumorchid;
@synthesize darkviolet;
@synthesize purple1;

@synthesize lightslateblue;
@synthesize slateblue;
@synthesize blue;
@synthesize cobalt;
@synthesize royalblue1;
@synthesize cornflowerblue;
@synthesize dodgerblue1;
@synthesize steelblue1;
@synthesize deepskyblue1;

@synthesize peacock;
@synthesize turquoise2;
@synthesize turquoise4;
@synthesize teal;
@synthesize manganeseblue;

@synthesize aquamarine3;
@synthesize emeraldgreen;
@synthesize forestgreen;
@synthesize green3;
@synthesize olivedrab;

@synthesize yellow3;
@synthesize khaki3;
@synthesize gold2;
@synthesize orange2;
@synthesize cadiumyellow;

@synthesize cadiumorange;
@synthesize coral1;
@synthesize salmon;
@synthesize rosybrown;
@synthesize firebrick4;




- (id)init
{
    self = [super init];
    if (self) {
        colorArray = [[NSMutableArray alloc] init];
        
        crimson = [UIColor colorWithRed:220.0/DIVISOR green:20.0/DIVISOR/DIVISOR blue:60.0/DIVISOR/DIVISOR alpha:ALPHA];
        [colorArray addObject:crimson];
        
        pink =  [UIColor colorWithRed:255.0/DIVISOR green:192.0/DIVISOR blue:203.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:pink];
        
        palevioletred = [UIColor colorWithRed:219.0/DIVISOR green:112.0/DIVISOR blue:147.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:palevioletred];
        
        violetred1 = [UIColor colorWithRed:255.0/DIVISOR green:62.0/DIVISOR blue:150.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:violetred1];
        
        hotpink = [UIColor colorWithRed:255.0/DIVISOR green:105.0/DIVISOR blue:180.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:hotpink];
        
        deeppink = [UIColor colorWithRed:255.0/DIVISOR green:20.0/DIVISOR blue:147.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:deeppink];
        
        maroon1 = [UIColor colorWithRed:255.0/DIVISOR green:52.0/DIVISOR blue:179.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:maroon1];
        
        orchid2 = [UIColor colorWithRed:238.0/DIVISOR green:122.0/DIVISOR blue:233.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:orchid2];
        
        plum = [UIColor colorWithRed:221.0/DIVISOR green:160.0/DIVISOR blue:221.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:plum];
        
        magenta2 = [UIColor colorWithRed:238.0/DIVISOR green:0.0/DIVISOR blue:238.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:magenta2];
        
        mediumorchid = [UIColor colorWithRed:186.0/DIVISOR green:85.0/DIVISOR blue:211.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:mediumorchid];
        
        darkviolet = [UIColor colorWithRed:148.0/DIVISOR green:0.0/DIVISOR blue:211.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:darkviolet];
        
        purple1 = [UIColor colorWithRed:155.0/DIVISOR green:48.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:purple1];
        
        lightslateblue = [UIColor colorWithRed:132.0/DIVISOR green:112.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:lightslateblue];
        
        slateblue = [UIColor colorWithRed:106.0/DIVISOR green:90.0/DIVISOR blue:205.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:slateblue];
        
        blue = [UIColor colorWithRed:0.0/DIVISOR green:0.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:blue];
        
        cobalt = [UIColor colorWithRed:61.0/DIVISOR green:89.0/DIVISOR blue:171.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:cobalt];
        
        royalblue1 = [UIColor colorWithRed:72.0/DIVISOR green:118.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:royalblue1];
        
        cornflowerblue = [UIColor colorWithRed:100.0/DIVISOR green:149.0/DIVISOR blue:237.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:cornflowerblue];
        
        dodgerblue1 = [UIColor colorWithRed:30.0/DIVISOR green:144.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:dodgerblue1];
        
        steelblue1 = [UIColor colorWithRed:99.0/DIVISOR green:184.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:steelblue1];
        
        deepskyblue1 = [UIColor colorWithRed:0.0/DIVISOR green:191.0/DIVISOR blue:255.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:deepskyblue1];
        
        peacock = [UIColor colorWithRed:51.0/DIVISOR green:161.0/DIVISOR blue:201.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:peacock];
        
        turquoise2 = [UIColor colorWithRed:0.0/DIVISOR green:229.0/DIVISOR blue:238.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:turquoise2];
        
        turquoise4 = [UIColor colorWithRed:0.0/DIVISOR green:134.0/DIVISOR blue:139/DIVISOR alpha:ALPHA];
        [colorArray addObject:turquoise4];
        
        teal = [UIColor colorWithRed:0.0/DIVISOR green:128.0/DIVISOR blue:128.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:teal];
        
        manganeseblue = [UIColor colorWithRed:3.0/DIVISOR green:168.0/DIVISOR blue:158.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:manganeseblue];
        
        aquamarine3 = [UIColor colorWithRed:102.0/DIVISOR green:205.0/DIVISOR blue:170.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:aquamarine3];
        
        emeraldgreen = [UIColor colorWithRed:0.0/DIVISOR green:201.0/DIVISOR blue:87.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:emeraldgreen];
        
        forestgreen = [UIColor colorWithRed:34.0/DIVISOR green:139.0/DIVISOR blue:34.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:forestgreen];
        
        green3 = [UIColor colorWithRed:0.0/DIVISOR green:205.0/DIVISOR blue:0.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:green3];
        
        olivedrab = [UIColor colorWithRed:107.0/DIVISOR green:142.0/DIVISOR blue:35.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:olivedrab];
        
        yellow3 = [UIColor colorWithRed:205.0/DIVISOR green:205.0/DIVISOR blue:0.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:yellow3];
        
        khaki3 = [UIColor colorWithRed:205.0/DIVISOR green:198.0/DIVISOR blue:115.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:khaki3];
        
        gold2 = [UIColor colorWithRed:238.0/DIVISOR green:201.0/DIVISOR blue:0.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:gold2];
        
        orange2 = [UIColor colorWithRed:238.0/DIVISOR green:154.0/DIVISOR blue:0.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:orange2];
        
        cadiumyellow = [UIColor colorWithRed:255.0/DIVISOR green:153.0/DIVISOR blue:18.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:cadiumyellow];
        
        cadiumorange = [UIColor colorWithRed:255.0/DIVISOR green:97.0/DIVISOR blue:3.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:cadiumorange];
        
        coral1 = [UIColor colorWithRed:255.0/DIVISOR green:114.0/DIVISOR blue:86.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:coral1];
        
        salmon = [UIColor colorWithRed:250.0/DIVISOR green:128.0/DIVISOR blue:114.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:salmon];
        
        rosybrown = [UIColor colorWithRed:188.0/DIVISOR green:143.0/DIVISOR blue:143.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:rosybrown];
        
        firebrick4 = [UIColor colorWithRed:139.0/DIVISOR green:26.0/DIVISOR blue:26.0/DIVISOR alpha:ALPHA];
        [colorArray addObject:firebrick4];
        
        NSLog(@"%d", colorArray.count);
        
    }
    return self;
}

@end












