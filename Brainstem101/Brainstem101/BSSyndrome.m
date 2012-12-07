//
//  BSSyndrome.m
//  Brainstem101
//
//  Created by Brian Freese on 12/5/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import "BSSyndrome.h"

@implementation BSSyndrome

@synthesize syndromeName;
@synthesize syndromeRegions;
@synthesize syndromePerfusions;
@synthesize symptomsList;
@synthesize structuresList;


-(id) initWithName:(NSString*)name andRegions:(NSArray*)regions andPerfusions:(NSArray*)perfusions andSymptoms:(NSArray*) symptoms andStructures:(NSArray*) structures {
    self = [super init];
    if (self) {
        syndromeName = name;
        syndromeRegions = regions;
        syndromePerfusions = perfusions;
        symptomsList = symptoms;
        structuresList = structures;
        
    }
    return self;
}
@end
