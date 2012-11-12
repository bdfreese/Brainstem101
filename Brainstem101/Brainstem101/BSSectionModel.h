//
//  BSSectionModel.h
//  Brainstem101
//
//  Created by Brian Freese on 10/7/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSSectionModel : NSObject

@property (nonatomic, retain) NSMutableArray *allSections;
@property (nonatomic, retain) NSNumber *nuclei;
@property (nonatomic, retain) NSNumber *tracts;
@property (nonatomic, retain) NSNumber *perfusions;

-(int)numberOfType:(int)type;

@end
