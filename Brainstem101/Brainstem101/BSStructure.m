//
//  BSStructure.m
//  Brainstem101
//
//  Created by Samantha Dove on 10/3/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import "BSStructure.h"
#import "BSStructurePath.h"

#define CAPTUREDEVICESCALEFACTOR .78

@implementation BSStructure {
    NSXMLParser *parser;
    NSMutableString *constructionString;
    NSMutableArray *currentPoints; //represents one path
    NSMutableArray *currentPaths; //represents all the paths in an x-section
    BSStructurePath *currentStructurePath;
    UIColor *tmpFillColor;
    
    float currentX;
    float currentY;
    int currentSectionNumber;
    bool isParsingStuctureName;
    bool isParsingSection;
    bool isParsingPath;
    bool isParsingPoint;
    bool isParsingX;
    bool isParsingY;
}

@synthesize sectionName;
@synthesize structureDescription;
@synthesize sectionType;
@synthesize paths;
@synthesize sectionColor;
@synthesize lineWidthArray;

-(id) initWithName:(NSString *)name andType:(int)typeNum andColor:(UIColor *) color{
    self = [super init];
    if (self) {
        sectionName = name;
        sectionType = [NSNumber numberWithInt:typeNum];
        paths = [[NSMutableArray alloc] initWithObjects:@"",@"",@"",@"",@"",@"",@"",@"",@"",nil];
        sectionColor = color;
        tmpFillColor = [UIColor clearColor];
        structureDescription = @"Description not available.";
    }
    return self;
}

-(void) addXMLFilePath:(NSString *)xmlFileName withFillColor:(UIColor *)fillColor{
    if(fillColor == nil){
        tmpFillColor = [UIColor clearColor];
    }else{
        tmpFillColor = fillColor;
    }
    constructionString = [[NSMutableString alloc] initWithString:@""];
    currentPoints = [[NSMutableArray alloc] init];
    currentPaths = [[NSMutableArray alloc] init];
    isParsingStuctureName = NO;
    isParsingSection = NO;
    isParsingPath = NO;
    isParsingPoint = NO;
    isParsingX = NO;
    isParsingY = NO;
    
    NSString *xmlPath = [[NSBundle mainBundle] pathForResource:xmlFileName ofType:@"xml"];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlPath];
    parser = [[NSXMLParser alloc] initWithData:xmlData];
    [parser setDelegate:self];
    [parser parse];
}


- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qualifiedName
    attributes:(NSDictionary *)attributeDict {

    if ([elementName isEqualToString:@"section"]) {
        isParsingSection = YES;
    }
    
    if ([elementName isEqualToString:@"path"]) {
        isParsingPath = YES;
    }
    
    if ([elementName isEqualToString:@"point"]) {
        isParsingPoint = YES;
    }
    
    if([elementName isEqualToString:@"x"]){
        isParsingX = YES;
    }
    if([elementName isEqualToString:@"y"]){
        isParsingY = YES;
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)character{
    
    if (isParsingSection) {
        [constructionString appendString:character];
    }
    
    if (isParsingPath && isParsingPoint) {
        if (isParsingX) {
            [constructionString appendString:character];
        }else if (isParsingY){
            [constructionString appendString:character];
        }
    }
}


-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"structure"]) {
        //reached the end
        BSStructurePath *newStructurePath = [[BSStructurePath alloc] init];
        [newStructurePath setPathColor:sectionColor];
        [newStructurePath setFillColor:[tmpFillColor copy]];
        [newStructurePath setPathThickness:[NSNumber numberWithFloat:15.0]];
        [newStructurePath setPath:[currentPaths copy]];
        [paths replaceObjectAtIndex:currentSectionNumber withObject:newStructurePath];
        //clean up
    }

    if ([elementName isEqualToString:@"section"]) {
        currentSectionNumber = [constructionString intValue]-1;
        [constructionString setString:@""];
        isParsingSection = NO;
    }
    
    if ([elementName isEqualToString:@"path"]) {
        [currentPaths addObject:[currentPoints copy]];
        [currentPoints removeAllObjects];
        [constructionString setString:@""];
        isParsingPath = NO;
    }
    
    if ([elementName isEqualToString:@"point"]) {
        NSValue *point = [NSValue valueWithCGPoint:CGPointMake(currentX, currentY)];
        [currentPoints addObject:point];
        [constructionString setString:@""];
        
        isParsingPoint = NO;
    }
    
    if([elementName isEqualToString:@"x"]){
        currentX = [constructionString floatValue]/CAPTUREDEVICESCALEFACTOR;
        [constructionString setString:@""];
        isParsingX = NO;
    }
    
    if([elementName isEqualToString:@"y"]){
        currentY = [constructionString floatValue]/CAPTUREDEVICESCALEFACTOR;
        [constructionString setString:@""];
        isParsingY = NO;
    }
}

-(BOOL)isInSectionNumber:(int)num{
    return ![[paths objectAtIndex:num] isKindOfClass:[NSString class]];
}


@end
