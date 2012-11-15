    //
    //  BSStructureGenerator.m
    //  Brainstem101
    //
    //  Created by Brian Freese on 10/7/12.
    //  Copyright (c) 2012 Brainstem101. All rights reserved.
    //

#import "BSStructureGenerator.h"
#import "BSStructure.h"
#import "BSColors.h"


@implementation BSStructureGenerator{
    NSMutableArray *colorArray;
}

@synthesize allStructures;
@synthesize numberOfNuclei;
@synthesize numberOfTracts;
@synthesize numberOfPerfusions;

- (id)init
{
    self = [super init];
    if (self) {
        allStructures = [[NSMutableArray alloc] init];
        BSColors *colorObject = [[BSColors alloc] init];
        colorArray = [[NSMutableArray alloc] initWithArray:colorObject.colorArray copyItems:YES];
        [self addData];
            //once all data is added, get the number of each each type of structuture
        numberOfNuclei = [self numberOfType:NUCLEUS];
        numberOfTracts = [self numberOfType:TRACT];
        numberOfPerfusions = [self numberOfType:PERFUSION];
    }
    return self;
}


    //circular list returns colors
-(UIColor*) getColor{
    UIColor *tmp = [colorArray lastObject];
    [colorArray insertObject:[colorArray lastObject] atIndex:0];
    [colorArray removeLastObject];
    return tmp;
}

-(int)numberOfType:(int)type{
    int counter = 0;
    for (int i = 0 ; i < [allStructures count]; i++) {
        if ([[allStructures objectAtIndex:i] sectionType] == [NSNumber numberWithInt:type]) {
            counter++;
        }
    }
    return counter;
}


-(void) addData{
    
    /* ------------ Nuclei ----------- */
    
    BSStructure *nn0 = [[BSStructure alloc] initWithName:@"Abducens Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn0 addXMLFilePath:@"Abducens Nucleus4" withFillColor:nil];
    [nn0 addXMLFilePath:@"Abducens Nucleus5" withFillColor:nil];
    [allStructures addObject:nn0];
    
    BSStructure *n0 = [[BSStructure alloc] initWithName:@"Accessory Cueate" andType:NUCLEUS andColor:[self getColor]];
    [n0 addXMLFilePath:@"Accessory Cuneate Nucleus2" withFillColor:nil];
    [n0 addXMLFilePath:@"Accessory Cuneate Nucleus3" withFillColor:nil];
    [allStructures addObject:n0];
    
    BSStructure *nn1 = [[BSStructure alloc] initWithName:@"Accessory Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn1 addXMLFilePath:@"Accessory Nucleus1" withFillColor:nil];
    [allStructures addObject:nn1];
    
    
    BSStructure *nn2 = [[BSStructure alloc] initWithName:@"Anterior Cochlear Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn2 addXMLFilePath:@"Anterior Cochlear Nucleus4" withFillColor:nil];
    [allStructures addObject:nn2];
    
    
    BSStructure *nn3 = [[BSStructure alloc] initWithName:@"Anterolateral System" andType:NUCLEUS andColor:[self getColor]];
    [nn3 addXMLFilePath:@"ALS1" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS2" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS3" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS4" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS5" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS6" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS7" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS8" withFillColor:nil];
    [nn3 addXMLFilePath:@"ALS9" withFillColor:nil];
    [allStructures addObject:nn3]; //CONFUSED

    
    BSStructure *n1 = [[BSStructure alloc] initWithName:@"Cuneate Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n1 addXMLFilePath:@"Cuneate Nucleus1" withFillColor:nil];
    [n1 addXMLFilePath:@"Cuneate Nucleus2" withFillColor:nil];
    [allStructures addObject:n1];
        //possible bug
    
    BSStructure *n2 = [[BSStructure alloc] initWithName:@"Dorsal Motor Nucleus of Vagus" andType:NUCLEUS andColor:[self getColor]];
    [n2 addXMLFilePath:@"Dorsal Motor Nucleus of Vagus1" withFillColor:nil];
    [n2 addXMLFilePath:@"Dorsal Motor Nucleus of Vagus2" withFillColor:nil];
    [n2 addXMLFilePath:@"Dorsal Motor Nucleus of Vagus3" withFillColor:nil];
    [allStructures addObject:n2];
    
    BSStructure *nn4 = [[BSStructure alloc] initWithName:@"Facial Motor Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn4 addXMLFilePath:@"Facial Nucleus4" withFillColor:nil];
    [nn4 addXMLFilePath:@"Facial Motor Nucleus5" withFillColor:nil];
    [allStructures addObject:nn4];
        //facial nucleus vs facial motor nucleus?
    
    BSStructure *nnn0 = [[BSStructure alloc] initWithName:@"Edinger-Westphal Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nnn0 addXMLFilePath:@"Edinger-Westphal Nucleus9" withFillColor:nil];
    [allStructures addObject:nnn0];
    
    BSStructure *n3 = [[BSStructure alloc] initWithName:@"Gracile Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n3 addXMLFilePath:@"Gracile Nucleus1" withFillColor:nil];
    [n3 addXMLFilePath:@"Gracile Nucleus2" withFillColor:nil];
    [allStructures addObject:n3];
    
    BSStructure *n4 = [[BSStructure alloc] initWithName:@"Hypoglossal Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n4 addXMLFilePath:@"Hypoglossal Nucleus1" withFillColor:nil];
    [n4 addXMLFilePath:@"Hypoglossal Nucleus2" withFillColor:nil];
    [n4 addXMLFilePath:@"Hypoglossal Nucleus3" withFillColor:nil];
    [allStructures addObject:n4];
    
    BSStructure *nnn1 = [[BSStructure alloc] initWithName:@"Inferior Colliculus" andType:NUCLEUS andColor:[self getColor]];
    [nnn1 addXMLFilePath:@"Inferior Colliculus8" withFillColor:nil];
    [allStructures addObject:nnn1];
    
    BSStructure *n5 = [[BSStructure alloc] initWithName:@"Inferior Vestibular Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n5 addXMLFilePath:@"Inferior Vestibular Nucleus3" withFillColor:nil];
    [allStructures addObject:n5];
    
    BSStructure *nnn2 = [[BSStructure alloc] initWithName:@"Interpeduncular Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nnn2 addXMLFilePath:@"Interpeduncular9" withFillColor:nil];
    [allStructures addObject:nnn2];
    
    BSStructure *n6 = [[BSStructure alloc] initWithName:@"Lateral Reticular Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n6 addXMLFilePath:@"Lateral Reticular Nucleus2" withFillColor:nil];
    [n6 addXMLFilePath:@"Lateral Reticular Nucleus3" withFillColor:nil];
    [allStructures addObject:n6];
    
    BSStructure *nn5 = [[BSStructure alloc] initWithName:@"Lateral Vestibular Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn5 addXMLFilePath:@"Lateral Vestibular Nucleus4" withFillColor:nil];
    [nn5 addXMLFilePath:@"Lateral Vestibular Nucleus5" withFillColor:nil];
    
    [allStructures addObject:nn5];
    
    BSStructure *nnn3 = [[BSStructure alloc] initWithName:@"Medial Geniculate Nucleus9" andType:NUCLEUS andColor:[self getColor]];
    [nnn3 addXMLFilePath:@"Medial Geniculate Nucleus9" withFillColor:nil];
    [allStructures addObject:nnn3];
    
    BSStructure *n7 = [[BSStructure alloc] initWithName:@"Medial Motor Nuclei" andType:NUCLEUS andColor:[self getColor]];
    [n7 addXMLFilePath:@"Medial Motor Nuclei1" withFillColor:nil];
    [allStructures addObject:n7];
    
    BSStructure *n8 = [[BSStructure alloc] initWithName:@"Medial Vestibular Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n8 addXMLFilePath:@"Medial Vestibular Nucleus3" withFillColor:nil];
    [n8 addXMLFilePath:@"Medial Vestibular Nucleus4" withFillColor:nil];
    [n8 addXMLFilePath:@"Medial Vestibular Nucleus5" withFillColor:nil];
    [allStructures addObject:n8];
    
    BSStructure *n9 = [[BSStructure alloc] initWithName:@"Nucleus Ambiguus" andType:NUCLEUS andColor:[self getColor]];
    [n9 addXMLFilePath:@"Nucleus Ambiguus2" withFillColor:nil];
    [n9 addXMLFilePath:@"Nucleus Ambiguus3" withFillColor:nil];
    [allStructures addObject:n9];
    
    BSStructure *nnn4 = [[BSStructure alloc] initWithName:@"Nucleus Centralis Superior" andType:NUCLEUS andColor:[self getColor]];
    [nnn4 addXMLFilePath:@"Nucleus Centralis Superior7" withFillColor:nil];
    [allStructures addObject:nnn4];
    
    BSStructure *nnn5 = [[BSStructure alloc] initWithName:@"Nucleus Ceruleus" andType:NUCLEUS andColor:[self getColor]];
    [nnn5 addXMLFilePath:@"Nucleus Cereuleus6" withFillColor:nil];
    [nnn5 addXMLFilePath:@"Nucleus Cereuleus7" withFillColor:nil];
    [nnn5 addXMLFilePath:@"Nucleus Cereuleus8" withFillColor:nil];
    [allStructures addObject:nnn5];
    
    BSStructure *nnn6 = [[BSStructure alloc] initWithName:@"Nucleus Raphe Dorsalis" andType:NUCLEUS andColor:[self getColor]];
    [nnn6 addXMLFilePath:@"Nucleus Raphe Dorsalis7" withFillColor:nil];
    [nnn6 addXMLFilePath:@"Nucleus Raphe Dorsalis8" withFillColor:nil];
    [allStructures addObject:nnn6];
    
    BSStructure *nn6 = [[BSStructure alloc] initWithName:@"Nucleus Raphe Magnus" andType:NUCLEUS andColor:[self getColor]];
    [nn6 addXMLFilePath:@"Nucleus Raphe Magnus4" withFillColor:nil];
    [nn6 addXMLFilePath:@"Nucleus Raphe Magnus5" withFillColor:nil];
    [allStructures addObject:nn6];
    
    
    BSStructure *nn7 = [[BSStructure alloc] initWithName:@"Nucleus Raphe Pallidus" andType:NUCLEUS andColor:[self getColor]];
    [nn7 addXMLFilePath:@"Nucleus Raphe Pallidus4" withFillColor:nil];
    [allStructures addObject:nn7];
    
    BSStructure *nnn7 = [[BSStructure alloc] initWithName:@"Nucleus Raphe Pontis" andType:NUCLEUS andColor:[self getColor]];
    [nnn7 addXMLFilePath:@"Nucleus Raphe Pontis6" withFillColor:nil];
    [allStructures addObject:nnn7];
    
    BSStructure *nnn8 = [[BSStructure alloc]initWithName:@"Oculomotor Nucleus" andType:TRACT andColor:[self getColor]];
    [nnn8 addXMLFilePath:@"Oculomotor Nucleus9" withFillColor:nil];
    [allStructures addObject:nnn8];
    
    BSStructure *nn8 = [[BSStructure alloc] initWithName:@"Pontine Nuclei and Tracts" andType:NUCLEUS andColor:[self getColor]];
    [nn8 addXMLFilePath:@"Pontine Nuclei4" withFillColor:nil];
    [nn8 addXMLFilePath:@"Pontine Nuclei and Tracts4" withFillColor:nil];
    [nn8 addXMLFilePath:@"Pontine Nuclei and Tracts5" withFillColor:nil];
    [nn8 addXMLFilePath:@"Pontine Nuclei and Tracts6" withFillColor:nil];
    [allStructures addObject:nn8]; // CONFUSED -- two 4's and nuc and tract?
    
    
    BSStructure *nn9 = [[BSStructure alloc] initWithName:@"Posterior Cochlear Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn9 addXMLFilePath:@"Posterior Cochlear Nucleus4" withFillColor:nil];
    [allStructures addObject:nn9];
    
    
    BSStructure *nn11 = [[BSStructure alloc] initWithName:@"Principal Olivary Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [nn11 addXMLFilePath:@"Principal Olivary Nucleus2" withFillColor:nil];
    [nn11 addXMLFilePath:@"Principal Olivary Nucleus3" withFillColor:nil];
    [nn11 addXMLFilePath:@"Principal Olivary Nucleus4" withFillColor:nil];
    [allStructures addObject:nn11];
    
    
    BSStructure *n10 = [[BSStructure alloc] initWithName:@"Solitary Nucleus and Tract" andType:NUCLEUS andColor:[self getColor]];
    [n10 addXMLFilePath:@"Solitary Nucleus and Tract2" withFillColor:nil];
    [n10 addXMLFilePath:@"Solitary Nucleus and Tract3" withFillColor:nil];
    [n10 addXMLFilePath:@"Solitary Nucleus and Tract4" withFillColor:nil];
    [allStructures addObject:n10]; //THIS IS A TRACT AND A NUCLEIUS
    
    
    BSStructure *n11 = [[BSStructure alloc] initWithName:@"Spinal Trigeminal Nucleus" andType:NUCLEUS andColor:[self getColor]];
    [n11 addXMLFilePath:@"Spinal Trigeminal Nucleus1" withFillColor:nil];
    [n11 addXMLFilePath:@"Spinal Trigeminal Nucleus2" withFillColor:nil];
    [n11 addXMLFilePath:@"Spinal Trigeminal Nucleus3" withFillColor:nil];
    [n11 addXMLFilePath:@"Spinal Trigeminal Nucleus4" withFillColor:nil];
    [allStructures addObject:n11];
    
    
    
    /* -------    Tracts ---------*/
    
    
    BSStructure *t16 = [[BSStructure alloc] initWithName:@"Abducens Nerve" andType:TRACT andColor:[self getColor]];
    [t16 addXMLFilePath:@"Abducens Nerve5" withFillColor:nil];
    [allStructures addObject:t16];
    
    BSStructure *t0 = [[BSStructure alloc] initWithName:@"Anterior Corticospinal" andType:TRACT andColor:[self getColor]];
    [t0 addXMLFilePath:@"Anterior Corticospinal Tract1" withFillColor:nil];
    [allStructures addObject:t0];
    
    
    BSStructure *t1 = [[BSStructure alloc] initWithName:@"Anterior Spinocerebellar" andType:TRACT andColor:[self getColor]];
    [t1 addXMLFilePath:@"Anterior Spinocerebellar Tract1" withFillColor:nil];
    [t1 addXMLFilePath:@"Anterior Spinocerebellar Tract2" withFillColor:nil];
    [t1 addXMLFilePath:@"Anterior Spinocerebellar Tract3" withFillColor:nil];
    [t1 addXMLFilePath:@"Anterior Spinocerebellar Tract4" withFillColor:nil];
    [t1 addXMLFilePath:@"Anterior Spinocerebellar Tract6" withFillColor:nil];
    [allStructures addObject:t1];
        //missing section 5 data?
    
    BSStructure *ttt0 = [[BSStructure alloc] initWithName:@"Brachium of Inferior Colliculus" andType:TRACT andColor:[self getColor]];
    [ttt0 addXMLFilePath:@"Brachium of Inferior Colliculus9" withFillColor:nil];
    [allStructures addObject:ttt0];
        //type?!
    
    BSStructure *ttt1 = [[BSStructure alloc] initWithName:@"Cerebellothalamic Tract" andType:TRACT andColor:[self getColor]];
    [ttt1 addXMLFilePath:@"Cerebellothalamic Tract9" withFillColor:nil];
    [allStructures addObject:ttt1];
    
    BSStructure *t2 = [[BSStructure alloc] initWithName:@"Central Grey" andType:TRACT andColor:[self getColor]];
    [t2 addXMLFilePath:@"Central Grey1" withFillColor:nil];
    [t2 addXMLFilePath:@"Central Grey2" withFillColor:nil];
    [allStructures addObject:t2];
    
    BSStructure *tt0 = [[BSStructure alloc] initWithName:@"Central Tegmental Tract" andType:TRACT andColor:[self getColor]];
    [tt0 addXMLFilePath:@"Central Tegmental Tract4" withFillColor:nil];
    [tt0 addXMLFilePath:@"Central Tegmental Tract5" withFillColor:nil];
    [tt0 addXMLFilePath:@"Central Tegmental Tract6" withFillColor:nil];
    [tt0 addXMLFilePath:@"Central Tegmental Tract7" withFillColor:nil];
    [tt0 addXMLFilePath:@"Central Tegmental Tract8" withFillColor:nil];
    [tt0 addXMLFilePath:@"Central Tegmental Tract9" withFillColor:nil];
    [allStructures addObject:tt0];
    
    
    BSStructure *ttt2 = [[BSStructure alloc] initWithName:@"Corticobulbar Tracts" andType:TRACT andColor:[self getColor]];
    [ttt2 addXMLFilePath:@"Corticobulbar Tracts8" withFillColor:nil];
    [ttt2 addXMLFilePath:@"Corticobulbar Tracts9" withFillColor:nil];
    [allStructures addObject:ttt2];
    
    
    BSStructure *t3 = [[BSStructure alloc] initWithName:@"Corticospinal Fibers" andType:TRACT andColor:[self getColor]];
    [t3 addXMLFilePath:@"Corticospinal Fibers2"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract3"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract4"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract5"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract7"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract8"withFillColor:nil];
    [t3 addXMLFilePath:@"Corticospinal Tract9"withFillColor:nil];
    [allStructures addObject:t3]; // CONFUSED, fibers/tract, and no section 6
    
    
    BSStructure *t4 = [[BSStructure alloc] initWithName:@"Cuneate Fasciculus" andType:TRACT andColor:[self getColor]];
    [t4 addXMLFilePath:@"Cuneate Fasciculus1" withFillColor:nil];
    [t4 addXMLFilePath:@"Cuneate Fasciculus2" withFillColor:nil];
    [allStructures addObject:t4];
    
    BSStructure *ttt3 = [[BSStructure alloc] initWithName:@"Crus Cerebri" andType:TRACT andColor:[self getColor]];
    [ttt3 addXMLFilePath:@"Crus Cerebri8" withFillColor:nil];
    [ttt3 addXMLFilePath:@"Crus Cerebri9" withFillColor:nil];
    [allStructures addObject:ttt3];
    
    BSStructure *ttt4 = [[BSStructure alloc] initWithName:@"Facial Nerve" andType:TRACT andColor:[self getColor]];
    [ttt4 addXMLFilePath:@"Facial Nerve5" withFillColor:nil];
    [allStructures addObject:ttt4];
    
    BSStructure *t5 = [[BSStructure alloc] initWithName:@"Gracile Fasciculus" andType:TRACT andColor:[self getColor]];
    [t5 addXMLFilePath:@"Gracile Fasciculus1" withFillColor:nil];
    [t5 addXMLFilePath:@"Gracile Fasciculus2" withFillColor:nil];
    [allStructures addObject:t5];
    
    BSStructure *tt1 = [[BSStructure alloc] initWithName:@"Hypoglossal Nerve" andType:TRACT andColor:[self getColor]];
    [tt1 addXMLFilePath:@"Hypoglossal Nerve2" withFillColor:nil];
    [tt1 addXMLFilePath:@"Hypoglossal Nerve3" withFillColor:nil];
    [allStructures addObject:tt1]; // CONFUSED -- streaks on 2 and 3, is this right?
    
    BSStructure *t6 = [[BSStructure alloc] initWithName:@"Inferior Cerebellar Peduncle" andType:TRACT andColor:[self getColor]];
    [t6 addXMLFilePath:@"Inferior Cerebellar Peduncle3" withFillColor:nil];
    [t6 addXMLFilePath:@"Inferior Cerebellar Peduncle4" withFillColor:nil];
    [allStructures addObject:t6]; // CONFUSED
    
    BSStructure *t7 = [[BSStructure alloc] initWithName:@"Internal Arcuate Fibers" andType:TRACT andColor:[self getColor]];
    [t7 addXMLFilePath:@"Internal Arcuate Fibers2" withFillColor:nil];
    [allStructures addObject:t7];
    
    BSStructure *ttt5 = [[BSStructure alloc] initWithName:@"Lateral Lemniscus" andType:TRACT andColor:[self getColor]];
    [ttt5 addXMLFilePath:@"Lateral Lemniscus5" withFillColor:nil];
    [ttt5 addXMLFilePath:@"Lateral Lemniscus6" withFillColor:nil];
    [ttt5 addXMLFilePath:@"Lateral Lemniscus7" withFillColor:nil];
    [ttt5 addXMLFilePath:@"Lateral Lemniscus8" withFillColor:nil];
    [allStructures addObject:ttt5];
    
    BSStructure *tt2 = [[BSStructure alloc] initWithName:@"Medial Cerebellar Peduncle" andType:TRACT andColor:[self getColor]];
    [tt2 addXMLFilePath:@"Medial Cerebellar Peduncle4" withFillColor:nil];
    [tt2 addXMLFilePath:@"Middle Cerebellar Peduncle5" withFillColor:nil];
    [tt2 addXMLFilePath:@"Middle Cerebellar Peduncle6" withFillColor:nil];
    [tt2 addXMLFilePath:@"Middle Cerebellar Peduncle7" withFillColor:nil];
    [allStructures addObject:tt2]; // CONFUSED -- peduncle == tract? medial vs. middle??
    
    BSStructure *t8 = [[BSStructure alloc] initWithName:@"Medial Lemniscus" andType:TRACT andColor:[self getColor]];
    [t8 addXMLFilePath:@"Medial Lemniscus2" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus3" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus4" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus5" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus6" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus7" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus8" withFillColor:nil];
    [t8 addXMLFilePath:@"Medial Lemniscus9" withFillColor:nil];
    [allStructures addObject:t8];
    
    
    BSStructure *tt3 = [[BSStructure alloc] initWithName:@"Medial Longitudinal Fasciculus" andType:TRACT andColor:[self getColor]];
    [tt3 addXMLFilePath:@"MLF1" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF2" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF3" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF4" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF5" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF6" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF7" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF8" withFillColor:nil];
    [tt3 addXMLFilePath:@"MLF9" withFillColor:nil];
    [allStructures addObject:tt3];
    
    BSStructure *ttt6 = [[BSStructure alloc] initWithName:@"Mesencephalic Nucleus and Tract" andType:TRACT andColor:[self getColor]];
    [ttt6 addXMLFilePath:@"Mesencephalic Tract6" withFillColor:nil];
    [ttt6 addXMLFilePath:@"Mesencephalic Nucleus and Tract7" withFillColor:nil];
    [ttt6 addXMLFilePath:@"Mesencephalic Nucleus and Tract8" withFillColor:nil];
    [ttt6 addXMLFilePath:@"Mesencephalic Nucleus and Tract9" withFillColor:nil];
    [allStructures addObject:ttt6];
        //tract/nucleus and tract
    
    BSStructure *ttt7 = [[BSStructure alloc]initWithName:@"Oculomotor Nerve" andType:TRACT andColor:[self getColor]];
    [ttt7 addXMLFilePath:@"Oculomotor Nerve9" withFillColor:nil];
    [allStructures addObject:ttt7];
    
    BSStructure *ttt8 = [[BSStructure alloc]initWithName:@"Optic Tract" andType:TRACT andColor:[self getColor]];
    [ttt8 addXMLFilePath:@"Optic Tract9" withFillColor:nil];
    [allStructures addObject:ttt8];
    
    
    BSStructure *tt4 = [[BSStructure alloc] initWithName:@"Posterior Longitudinal Fasciculus" andType:TRACT andColor:[self getColor]];
    [tt4 addXMLFilePath:@"Posterior Longitudinal Fasciculus2" withFillColor:nil];
    [tt4 addXMLFilePath:@"Posterior Longitudinal Fasciculus3" withFillColor:nil];
    [tt4 addXMLFilePath:@"Posterior Longitudinal Fasciculus4" withFillColor:nil];
    [allStructures addObject:tt4];
    
    
    BSStructure *t9 = [[BSStructure alloc] initWithName:@"Posterior Spinocerebellar Tract" andType:TRACT andColor:[self getColor]];
    [t9 addXMLFilePath:@"Posterior Spinocerebellar Tract1" withFillColor:nil];
    [t9 addXMLFilePath:@"Posterior Spinocerebellar Tract2" withFillColor:nil];
    [allStructures addObject:t9];
    
    
    BSStructure *t11 = [[BSStructure alloc] initWithName:@"Pyramidal Decussation" andType:TRACT andColor:[self getColor]];
    [t11 addXMLFilePath:@"Pyramidal Decussation1" withFillColor:nil];
    [allStructures addObject:t11];
    
    BSStructure *t12 = [[BSStructure alloc] initWithName:@"Reticulospinal Fibers" andType:TRACT andColor:[self getColor]];
    [t12 addXMLFilePath:@"Reticulospinal Fibers1" withFillColor:nil];
    [allStructures addObject:t12];
    
    BSStructure *tt5 = [[BSStructure alloc] initWithName:@"Rubrospinal Tract" andType:TRACT andColor:[self getColor]];
    [tt5 addXMLFilePath:@"Rubrospinal Tract1" withFillColor:nil];
    [tt5 addXMLFilePath:@"Rubrospinal Tract2" withFillColor:nil];
    [tt5 addXMLFilePath:@"Rubrospinal Tract3" withFillColor:nil];
    [tt5 addXMLFilePath:@"Rubrospinal Tract4" withFillColor:nil];
    [allStructures addObject:tt5];
    
    BSStructure *tt6 = [[BSStructure alloc] initWithName:@"Spinal Trigeminal Tract" andType:TRACT andColor:[self getColor]];
    [tt6 addXMLFilePath:@"Spinal Trigeminal Tract1" withFillColor:nil];
    [tt6 addXMLFilePath:@"Spinal Trigeminal Tract2" withFillColor:nil];
    [tt6 addXMLFilePath:@"Spinal Trigeminal Tract3" withFillColor:nil];
    [tt6 addXMLFilePath:@"Spinal Trigeminal Tract4" withFillColor:nil];
    
    [allStructures addObject:tt6];
    
    
    BSStructure *t13 = [[BSStructure alloc] initWithName:@"Tectospinal Tract" andType:TRACT andColor:[self getColor]];
    [t13 addXMLFilePath:@"Tectospinal Tract1" withFillColor:nil];
    [t13 addXMLFilePath:@"Tectospinal Tract2" withFillColor:nil];
    [t13 addXMLFilePath:@"Tectospinal Tract3" withFillColor:nil];
    [t13 addXMLFilePath:@"Tectospinal Tract4" withFillColor:nil];
    [allStructures addObject:t13];
    
    BSStructure *t14 = [[BSStructure alloc] initWithName:@"Ventral Trigeminothalamic Tract" andType:TRACT andColor:[self getColor]];
    [t14 addXMLFilePath:@"Ventral Trigeminothalamic Tract2" withFillColor:nil];
    [t14 addXMLFilePath:@"Ventral Trigeminothalamic Tract3" withFillColor:nil];
    [t14 addXMLFilePath:@"Ventral Trigeminothalamic Tract4" withFillColor:nil];
    [allStructures addObject:t14];
    
    BSStructure *t15 = [[BSStructure alloc] initWithName:@"Vestibulospinal and Reticulospinal Tract" andType:TRACT andColor:[self getColor]];
    [t15 addXMLFilePath:@"Vestibulospinal and Reticulospinal Tract1" withFillColor:nil];
    [allStructures addObject:t15];
    
    
    
    /* ------------- Perfusions ------------- */
    BSStructure *p0 = [[BSStructure alloc] initWithName:@"Central Canal" andType:PERFUSION andColor:[self getColor]];
    [p0 addXMLFilePath:@"Central Canal1" withFillColor:nil];
    [p0 addXMLFilePath:@"Central Canal2" withFillColor:nil];
    [allStructures addObject:p0];
    
    BSStructure *p1 = [[BSStructure alloc] initWithName:@"Cerebral Aqueduct" andType:PERFUSION andColor:[self getColor]];
    [p1 addXMLFilePath:@"Cerebral Aqueduct7" withFillColor:nil];
    [p1 addXMLFilePath:@"Cerebral Aqueduct8" withFillColor:nil];
    [p1 addXMLFilePath:@"Cerebral Aqueduct9" withFillColor:nil];
    [allStructures addObject:p1];
    
    BSStructure *p2 = [[BSStructure alloc] initWithName:@"Fourth Ventricle" andType:PERFUSION andColor:[self getColor]];
    [p2 addXMLFilePath:@"Fourth Ventricle5" withFillColor:nil];
    [p2 addXMLFilePath:@"Fourth Ventricle6" withFillColor:nil];
    [allStructures addObject:p2];
    
    
    
}

@end
