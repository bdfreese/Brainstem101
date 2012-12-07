//
//  BSSyndrome.h
//  Brainstem101
//
//  Created by Brian Freese on 12/5/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSSyndrome : NSObject
@property(nonatomic,retain) NSString* syndromeName;
@property(nonatomic,retain) NSArray* syndromeRegions;
@property(nonatomic,retain) NSArray* syndromePerfusions;
@property(nonatomic,retain) NSArray* symptomsList;
@property(nonatomic, retain) NSArray* structuresList;


-(id) initWithName:(NSString*)name andRegions:(NSArray*)regions andPerfusions:(NSArray*)perfusions andSymptoms:(NSArray*) symptoms andStructures:(NSArray*) structures;
@end
