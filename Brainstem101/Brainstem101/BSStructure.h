    //
    //  BSStructure.h
    //  Brainstem101
    //
    //  Created by Cameron Ehrlich on 10/3/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import <Foundation/Foundation.h>

@interface BSStructure : NSObject <NSXMLParserDelegate>

@property (nonatomic, retain) NSString *sectionName;
@property (nonatomic, retain) NSString *structureDescription;
@property (nonatomic, retain) NSNumber *sectionType;
@property (nonatomic, retain) NSMutableArray *paths;
@property (nonatomic, retain) UIColor *sectionColor;
@property (nonatomic, retain) NSMutableArray *lineWidthArray;

-(id) initWithName:(NSString *)name andType:(int)typeNum andColor:(UIColor *) color;
-(void) addXMLFilePath:(NSString *)xmlFileName withFillColor:(UIColor *)fillColor;
-(BOOL) isInSectionNumber:(int)num;

@end
