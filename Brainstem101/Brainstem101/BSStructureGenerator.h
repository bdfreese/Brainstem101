//
//  BSStructureGenerator.h
//  Brainstem101
//
//  Created by Brian Freese on 10/7/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSStructureGenerator : NSObject

@property (nonatomic, retain) NSMutableArray *allStructures;
@property (assign) int *numberOfNuclei;
@property (assign) int *numberOfTracts;
@property (assign) int *numberOfPerfusions;

@end
