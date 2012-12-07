    //
    //  BSModel.h
    //  Brainstem101
    //
    //  Created by Cameron Ehrlich on 11/12/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import <Foundation/Foundation.h>
#import "BSStructureGenerator.h"

@interface BSModel : NSObject

@property (nonatomic, strong) NSMutableArray *Nuclei;
@property (nonatomic, strong) NSMutableArray *Tracts;


+ (id)sharedModel;

@end
