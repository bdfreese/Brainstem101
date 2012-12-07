//
//  BSSyndromeGenerator.m
//  Brainstem101
//
//  Created by Brian Freese on 12/5/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import "BSSyndromeGenerator.h"
#import "BSSyndrome.h"

@implementation BSSyndromeGenerator

@synthesize allSyndromes;
@synthesize numberOfSyndromes;

-(id)init {
    self = [super init];
    if (self) {
        allSyndromes = [[NSMutableArray alloc] init];
        [self addSyndromes];
        numberOfSyndromes = [allSyndromes count];
    }
    return self;
    
}


-(void) addSyndromes {
    BSSyndrome *wallenbergSyndrome = [[BSSyndrome alloc] initWithName:@"Lateral Medullary (Wallenberg) Syndrome"
                                                andRegions:@[@"Lateral Medula"]
                                             andPerfusions:@[@"Vertabral Artery", @"PICA", @"Superior Medullary Artery", @"Middle Medullary Artery", @"Inferior Medullary Artery"] andSymptoms:@[@"Nystagmus, Diplopia, Nausea, Vertigo", @"Ipsilateral cerebellar signs -- dystaxia (a mild form of ataxia), dysmetria (fail past pointing), dysdiadokokinesia (unable to perform rapid alternating motions)", @"Palatal myoclonus (Rapid spasms of palatal roof resulting in clicking noise in the ear)", @"Contralateral Body Hemianalgesia (loss of sensation of pain and temperature)", @"Ipsilateral Facial Hemianalgesia (loss of sensation of pain and temperature) -- Clinical sign: absence of corneal reflex", @"Ipsilateral laryngeal, pharyngeal, and palatal hemiparalysis; presents as dysarthria (Difficulty with articulation of speech; unlike Broca’s Aphagia, dysarthria is MECHANICAL by origin), hoarseness (due to paralysis of vocal chords), dysphagia (due to paralysis of Laryngeal muscles), diminished gag reflex (Deficiency of efferent limb of CN X)", @"Diminished gag reflex (Afferent limb of CN X)", @"Ipsilateral Horner’s Syndrome -- ptosis (Drooping of eyelid), miosis (Constriction of pupil), anhydrosis (Lack of sweating), facial flushing"]
                                             andStructures:@[@"Vestibular Nuclei",@"Inferior Cerebellar Peduncle and Spinocerebellar fibers", @"Central Tegmental Tract", @"ALS", @"Spinal Trigeminal Nucleus and Tract", @"Nucleus Ambiguus (CN IX, X, XI)", @"CN IX (Glossopharyngeal Nerve) Roots", @"Descending Hypothalamospinal (Sympathetic) Fibers"]];
    [allSyndromes addObject:wallenbergSyndrome];
    
    
    
    BSSyndrome *inferiorAlternatingSyndrome = [[BSSyndrome alloc] initWithName:@"Medial Medullary (Inferior Alternating) Syndrome"
                                                                    andRegions:@[@"Medial Medula"]
                                                                 andPerfusions:@[@"Anterior Spinal Artery", @"Basilar Paramedial Branches"]
                                                                   andSymptoms:@[@"Ipsilateral flaccid hemiparalysis and atrophy of the tongue (tongue deviates towards lesion upon protrusion)", @"Contralateral spastic hemiparesis or hemiplegia of upper and lower extremeties", @"Contralateral loss of conscious proprioception, discriminative touch, vibratory sensation from trunk and extremities"]
                                                                 andStructures:@[@"CN XII Nucleus and/or Fibers", @"Corticospinal Tract", @"Medial Lemniscus"]];
    [allSyndromes addObject:inferiorAlternatingSyndrome];
    
    
    
    BSSyndrome *jacksonsSyndrome = [[BSSyndrome alloc] initWithName:@"Jackson's Syndrome"
                                                         andRegions:@[@"Tegmental Medulla"]
                                                      andPerfusions:@[@"Vertebral Artery"]
                                                        andSymptoms:@[@"Ipsilateral paralysis of Tongue, soft palate, and vocal chords", @"Palatal myoclonus (Rapid spasms of palatal roof resulting in clicking noise in the ear)", @"Unilateral paralysis of sternocleidomastoid and trapezius muscle", @"Contralateral Body Hemianalgesia (loss of sensation of pain and temperature)"]
                                                      andStructures:@[@"Solitary Nucleus", @"Central Tegmental Tract", @"Spinal Accesory Nucleus", @"ALS"]];
    [allSyndromes addObject:jacksonsSyndrome];
    
    
    
    BSSyndrome* millardGublerSyndrome = [[BSSyndrome alloc] initWithName:@"Ventral Pontine (Millard Gubler) Syndrome"
                                                              andRegions:@[@"VentroCaudal Pons"]
                                                           andPerfusions:@[@""]
                                                             andSymptoms:@[@"Contralateral spastic hemiparesis or hemiplegia of upper and lower extremeties", @"Internal Strabismus (eye deviated inwards) due to Ipsilateral Lateral Rectus Palsy or Paresis (results in diplopia)", @"Ipsilateral hemiparesis or flaccid paralysis of facial muscles; loss of corneal reflex (efferent component)"]
                                                           andStructures:@[@"Corticospinal Tract", @"CN VI", @"CN VII"]];
    [allSyndromes addObject:millardGublerSyndrome];
    
    
    
    BSSyndrome* fovilleSyndrome = [[BSSyndrome alloc]initWithName:@"Foville Syndrome"
                                                       andRegions:@[@"DorsoCaudal Pons"] andPerfusions:@[@"Perforating Branches of Basilar Artry"] andSymptoms:@[@"Contralateral spastic hemiparesis or hemiplegia of upper and lower extremeties", @"Internal Strabismus due to Ipsilateral Lateral Rectus Palsy or Paresis (results in diplopia)", @"Internuclear Opthalmoplegia (INO)", @"Contrallatral loss of conscious proprioception, discriminative touch, and vibratory sensation in trunk and extremeties", @"Ipsilateral hemiparesis or flaccid paralysis of facial muscles; Ipsilateral loss of corneal and stapedial reflex (efferent component)", @"Ipsilateral loss of taste (anterior 2/3 of tongue)", @"Reduced lacrimation and salivation"] andStructures:@[@"Corticospinal Tract", @"CN VI", @"MLF", @"Medial Lemniscus", @"Motor nucleus of CN VII (SVE)", @"Solitary Nucleus of CN VII (SVA)", @"Superior Salivatory Nucleus of CN VII (GVE)"]];
    [allSyndromes addObject:fovilleSyndrome];
    
    
    
    BSSyndrome* raymondCestanSyndrome = [[BSSyndrome alloc] initWithName:@"Raymond-Cestan Syndrome"
                                                              andRegions:@[@"DorsoRostral Pons"]
                                                           andPerfusions:@[@"Circumfrencial Branch of Basilar Artery"] andSymptoms:@[@"Ipsilateral ataxia with coarse intention tremors", @"Contralateral Hemisensory Loss (all modalities from both face and body)", @"Contralateral Hemiparesis of face and body", @"Ipsilateral paralysis of muscls of mastication", @"Ipsilateral sensory loss in face", @"Internal Strabismus due to Ipsilateral Lateral Rectus Palsy or Paresis (results in diplopia)"]
                                                           andStructures:@[@"??", @"??", @"??", @"??", @"??", @"CN VI"]];
    
    [allSyndromes addObject:raymondCestanSyndrome];
    
    
    
    
    
    BSSyndrome* webersSyndrome = [[BSSyndrome alloc] initWithName:@"Medial Midbrain (Weber’s) Syndrome"
                                                       andRegions:@[@"Ventral Midbrain"]
                                                    andPerfusions:@[@"Posterior Cerebral Artery"]
                                                      andSymptoms:@[@"Contralateral spastic hemiparesis or Hemiplegia of upper and lower extremeties", @"Contralateral hemiparesis or hemiplegia of lower face (CN VII), tongue (CN XII) and palate (CN X). Tongue points towards lesion, uvula, away from.", @"Ipsilateral Oculomotor Palsy: dialated pupil, diplopia (due to ipsilateral eye pointing down and out), and ptosis", @"Contralateral Parkinsonism (tremor, hypokinesia, rigidity, postural instability)"]
                                                    andStructures:@[@"Corticospinal Tracts", @"Corticobulbar Tracts", @"CN III Fibers", @"Substantia Nigra"]];
    [allSyndromes addObject:webersSyndrome];
                                  
    
    
    
    
    BSSyndrome* benediktsSyndrome = [[BSSyndrome alloc] initWithName:@"Paramedian Midbrain(Benedikt’s) Syndrome"
                                                       andRegions:@[@"Tegmental Midbrain", @"Cerebellum"]
                                                    andPerfusions:@[@"PCA", @"paramedian branches of Basilar Artery"] andSymptoms:@[@"Ipsilateral Oculomotor Palsy: dialated pupil, diplopia (due to ipsilateral eye pointing down and out), and ptosis (paralysis of levator palpebrae superioris)", @"Contralateral cerebellar dystaxia with intention tremor, hemichorea, hemiathetosis", @"Contrallatral loss of sensation to discriminative touch, vibration, and conscious proprioception of trunk and extremeties", @"Contralateral hemiparesis or hemiplegia of upper and lower extremeties"]
                                                    andStructures:@[@"CN III Fibers", @"Dentatothalamic Fibers", @"Medial Lemniscus", @"Corticospinal Tract"]];
    [allSyndromes addObject:benediktsSyndrome];
    
    
    
    
    BSSyndrome* nothnagelsSyndrome = [[BSSyndrome alloc]initWithName:@"Nothnagel’s Syndrome"
                                                          andRegions:@[@"??"]
                                                       andPerfusions:@[@"??"]
                                                         andSymptoms:@[@"Ipsilateral Oculomotor Palsy: Mydriasis (dialated pupil), strabismus (eye pointing down and out) causing diplopia (double vision) , ptosis (eyelid droops due to paralysis of Levator Palpebrae Superioris)", @"Cerebellar Ataxia (...)"]
                                                       andStructures:@[@"CN III Fibers", @"??"]];
    [allSyndromes addObject:nothnagelsSyndrome];
    
    
    
    
    BSSyndrome* claudesSyndrome = [[BSSyndrome alloc]initWithName:@"Claude’s Syndrome"
                                                       andRegions:@[@"Unilteral Midbrain"]
                                                    andPerfusions:@[@"??"]
                                                      andSymptoms:@[@"Contralateral Ataxia (...)", @"Contralateral spastic hemiparesis or hemiplegia of upper and lower extremeties", @"Contralateral hemiparesis or hemiplegia of lower face, tongue and shoulder", @"Ipsilateral Oculomotor Palsy: Mydriasis (dialated pupil), strabismus (eye pointing down and out) causing diplopia (double vision) , ptosis (eyelid droops due to paralysis of Levator Palpebrae Superioris)"] andStructures:@[@"Dentatorubral Fibers", @"Corticospinal Tracts", @"Corticobulbar Tracts", @"CN III Fibers"]];
    [allSyndromes addObject:claudesSyndrome];
    
    
    
    BSSyndrome* parinaudsSyndrome = [[BSSyndrome alloc]initWithName:@"Parinaud’s (dorsal midbrain) Syndrome"
                                                         andRegions:@[@"Dorsal Midbrain"]
                                                      andPerfusions:@[@"Pinealoma", @"MS", @"Obstructive hydrocephalus"] andSymptoms:@[@"Supranuclear Upgaze Palsy (unable to look up); upgaze attempt causes convergence-retraction nystagmus; Collier’s sign (retracted eyelids; sclera is exposed above iris); lid lag", @"Mydriasis (Dialated Pupil); Light-Near Dissociation (loss of pupilary light reflex, but intact accomodation)", @"Bilateral Papilledema"]
                                                      andStructures:@[@"Superior Colliculi", @"CN III Nuc (E.W. and Oculomotor)", @"??"]];
    [allSyndromes addObject:parinaudsSyndrome];
    
    
    
    
    BSSyndrome* basilarSyndrome = [[BSSyndrome alloc] initWithName:@"Top o’ the Basilar Syndrome"
                                                        andRegions:@[@"??"]
                                                     andPerfusions:@[@"??"]
                                                       andSymptoms:@[@"??"]
                                                     andStructures:@[@"??"]];
    [allSyndromes addObject:basilarSyndrome];
    
    
    
    BSSyndrome* msSyndrome = [[BSSyndrome alloc]initWithName:@"Multiple Sclerosis"
                                                  andRegions:@[@"??"]
                                               andPerfusions:@[@"??"]
                                                 andSymptoms:@[@"??"]
                                               andStructures:@[@"??"]];
    [allSyndromes addObject:msSyndrome];
    
    
    
    
    BSSyndrome* iNOSyndrome = [[BSSyndrome alloc]initWithName:@"INO"
                                                  andRegions:@[@"??"]
                                               andPerfusions:@[@"??"]
                                                 andSymptoms:@[@"??"]
                                               andStructures:@[@"??"]];
    [allSyndromes addObject:iNOSyndrome];
    
    
    
    BSSyndrome* oculomotorSyndrome = [[BSSyndrome alloc]initWithName:@"Oculomotor Palsy"
                                                  andRegions:@[@"??"]
                                               andPerfusions:@[@"??"]
                                                 andSymptoms:@[@"??"]
                                               andStructures:@[@"??"]];
    [allSyndromes addObject:oculomotorSyndrome];
    
    
    
    
    BSSyndrome* bellsSyndrome = [[BSSyndrome alloc]initWithName:@"Bell's Palsy"
                                                  andRegions:@[@"??"]
                                               andPerfusions:@[@"??"]
                                                 andSymptoms:@[@"??"]
                                               andStructures:@[@"??"]];
    [allSyndromes addObject:bellsSyndrome];
    
    
    
    
    BSSyndrome* bulbarSyndrome = [[BSSyndrome alloc]initWithName:@"Bulbar Palsy"
                                                  andRegions:@[@"??"]
                                               andPerfusions:@[@"??"]
                                                 andSymptoms:@[@"??"]
                                               andStructures:@[@"??"]];
    [allSyndromes addObject:bulbarSyndrome];
    
  
    
    
    
}

@end
