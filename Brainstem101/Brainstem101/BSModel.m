    //
    //  BSModel.m
    //  Brainstem101
    //
    //  Created by Cameron Ehrlich on 11/12/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import "BSModel.h"
#import "BSStructureGenerator.h"

static BSModel *modelSingleton = nil;

@implementation BSModel{
    BSStructureGenerator *structuresObject;
}

@synthesize Nuclei;
@synthesize Tracts;


+ (id)sharedModel {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        modelSingleton = [[self alloc] init];
    });
    return modelSingleton;
}

- (id)init {
    if (self = [super init]) {
        structuresObject = [[BSStructureGenerator alloc] init];
        Nuclei = [[structuresObject Nuclei] copy];
        Tracts = [[structuresObject Tracts] copy];
        
            //set this bitch up
    }
    return self;
}

@end
