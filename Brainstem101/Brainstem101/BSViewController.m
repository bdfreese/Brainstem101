//
//  BSViewController.m
//  Brainstem101
//
//  Created by Cameron Ehrlich on 10/3/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "BSViewController.h"
#import "BSStemView.h"
#import "BSSectionView.h"
#import "BSStructure.h"
#import "BSStructurePath.h"

static int numOfP;
static int numOfT;
static int numOfN;


@implementation BSViewController{
    
    NSMutableArray *allSectionViews;
    
    int selectedSxnView;
    
    CGRect defaultFrame;
    
    //section view center points
    CGPoint sxn0PortraitCenterPoint;
    CGPoint sxn0LandscapeCenterPoint;
    CGPoint sxn0currentPoint;
    
    CGPoint sxn1PortraitCenterPoint;
    CGPoint sxn1LandscapeCenterPoint;
    CGPoint sxn1currentPoint;
    
    CGPoint sxn2PortraitCenterPoint;
    CGPoint sxn2LandscapeCenterPoint;
    CGPoint sxn2currentPoint;
    
    CGPoint sxn3PortraitCenterPoint;
    CGPoint sxn3LandscapeCenterPoint;
    CGPoint sxn3currentPoint;
    
    CGPoint sxn4PortraitCenterPoint;
    CGPoint sxn4LandscapeCenterPoint;
    CGPoint sxn4currentPoint;
    
    CGPoint sxn5PortraitCenterPoint;
    CGPoint sxn5LandscapeCenterPoint;
    CGPoint sxn5currentPoint;
    
    CGPoint sxn6PortraitCenterPoint;
    CGPoint sxn6LandscapeCenterPoint;
    CGPoint sxn6currentPoint;
    
    CGPoint sxn7PortraitCenterPoint;
    CGPoint sxn7LandscapeCenterPoint;
    CGPoint sxn7currentPoint;
    
    CGPoint sxn8PortraitCenterPoint;
    CGPoint sxn8LandscapeCenterPoint;
    CGPoint sxn8currentPoint;
}

@synthesize indexTable;
@synthesize allStructures;
@synthesize sxnView0;
@synthesize sxnView1;
@synthesize sxnView2;
@synthesize sxnView3;
@synthesize sxnView4;
@synthesize sxnView5;
@synthesize sxnView6;
@synthesize sxnView7;
@synthesize sxnView8;
@synthesize stemView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    selectedSxnView = -1;

    allStructures = [[[BSModel sharedModel] structuresObject] allStructures] ;
    numOfN = [[[BSModel sharedModel] structuresObject] numberOfNuclei];
    numOfT = [[[BSModel sharedModel] structuresObject] numberOfTracts];
    numOfP = [[[BSModel sharedModel] structuresObject] numberOfPerfusions];

    //end getting structure Data

    [indexTable.layer setCornerRadius:DEFAULT_CORNER_RADIUS];
    
    //define frames and locations for sxnViews
    defaultFrame = CGRectMake(0, 0, CAPTURE_DEVICE_WIDTH*PORTRAIT_SXN_VIEW_SCALE_FACTOR , CAPTURE_DEVICE_HEIGHT*PORTRAIT_SXN_VIEW_SCALE_FACTOR );
    
    
    // begin defining center points for sxn views
    sxn0PortraitCenterPoint = CGPointMake(95, 929);
    sxn1PortraitCenterPoint = CGPointMake(255,884.625);
    sxn2PortraitCenterPoint = CGPointMake(380,777.25);
    sxn3PortraitCenterPoint = CGPointMake(425,650.375);
    sxn4PortraitCenterPoint = CGPointMake(435,513.5); // center
    sxn5PortraitCenterPoint = CGPointMake(425,371.625);
    sxn6PortraitCenterPoint = CGPointMake(380,228.75 );
    sxn7PortraitCenterPoint = CGPointMake(255,137.375);
    sxn8PortraitCenterPoint = CGPointMake(95, 95);

    
    //Landscape
    sxn8LandscapeCenterPoint = CGPointMake(150,170);
    sxn7LandscapeCenterPoint = CGPointMake(420,170);
    sxn6LandscapeCenterPoint = CGPointMake(670,170);
    sxn5LandscapeCenterPoint = CGPointMake(150,370);
    sxn4LandscapeCenterPoint = CGPointMake(420,370);
    sxn3LandscapeCenterPoint = CGPointMake(670,370);
    sxn2LandscapeCenterPoint = CGPointMake(150,570);
    sxn1LandscapeCenterPoint = CGPointMake(420,570);
    sxn0LandscapeCenterPoint = CGPointMake(670,570);
    
    sxnView8 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:8 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView8 setCenter:sxn8currentPoint];
    
    sxnView7 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:7 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView7 setCenter:sxn7currentPoint];
    
    sxnView6 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:6 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView6 setCenter:sxn6currentPoint];
    
    sxnView5 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:5 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView5 setCenter:sxn5currentPoint];
    
    sxnView4 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:4 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView4 setCenter:sxn4currentPoint];
    
    sxnView3 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:3 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView3 setCenter:sxn3currentPoint];
    
    sxnView2 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:2 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView2 setCenter:sxn2currentPoint];
    
    sxnView1 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:1 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView1 setCenter:sxn1currentPoint];
    
    sxnView0 = [[BSSectionView alloc] initWithFrame:defaultFrame andSectionNumber:0 andScale:PORTRAIT_SXN_VIEW_SCALE_FACTOR];
    [sxnView0 setCenter:sxn0currentPoint];
    
    // put all section views into an allSectionView array
    allSectionViews = [[NSMutableArray alloc] initWithObjects:sxnView0,sxnView1,sxnView2,sxnView3,sxnView4,sxnView5,sxnView6,sxnView7,sxnView8, nil];
    
    
    float stemScale = .70;
    
    stemView = [[BSStemView alloc] initWithFrame:CGRectMake(20,300,stemScale*355,stemScale*500)];
        //[stemView setCenter:CGPointMake(150, 512)];
    
    [self.view addSubview:stemView];
    
    // add all the views
    for (BSSectionView *v in allSectionViews) {
        [self.view addSubview:v];
    }
    
    //check for launch orientation
    if (UIDeviceOrientationIsPortrait(self.interfaceOrientation)) {
        [self setCenterPoints:UIDeviceOrientationPortrait];
    }else{
        [self setCenterPoints:UIDeviceOrientationLandscapeLeft];

    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    int arrayIndex = indexPath.row;
    
    if (indexPath.section == NUCLEUS - 1) {
        //do nothing
    }else if (indexPath.section == TRACT - 1){
        arrayIndex += numOfN;
    }else if (indexPath.section == PERFUSION - 1) {
        arrayIndex += numOfN+numOfT;
    }else{
        NSLog(@"Table Cell Constuction Error");
    }
    
    [cell.textLabel setText:[[allStructures objectAtIndex:arrayIndex] sectionName]];
    [cell.textLabel setFont:[UIFont fontWithName:@"Chalkduster" size:13]];
    [cell.textLabel setAdjustsFontSizeToFitWidth:YES];
    [cell.textLabel setAdjustsLetterSpacingToFitWidth:YES];
    
        //could be a bug here...
    if (selectedSxnView > -1 && [[allStructures objectAtIndex:arrayIndex] isInSectionNumber:selectedSxnView]) {
        [cell.textLabel setTextColor:[[allStructures objectAtIndex:arrayIndex] sectionColor]];
    }else{
        [cell.textLabel setTextColor:[UIColor blackColor]];
    }
    
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return NUMBER_OF_SECTIONS;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == NUCLEUS-1) {
        return numOfN;
    }else if (section == TRACT-1) {
        return numOfT;
    }else if (section == PERFUSION-1){
        return numOfP;
    }else{
        NSLog(@"Section Number Error");
        return 0;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == NUCLEUS-1) {
        return @"Nuclei";
    }else if (section == TRACT-1) {
        return @"Tracts";
    }else if (section == PERFUSION-1){
        return @"Perfusions";
    }else{
        NSLog(@"Section Header Number Error");
        return @"ERROR";
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    selectedSxnView = -1;
    [self removeAllColorCodes];

    int arrayIndex = indexPath.row;
    if (indexPath.section == NUCLEUS-1) {
        //do nothing
    }else if (indexPath.section == TRACT -1){
        arrayIndex += numOfN;
    }else if (indexPath.section == PERFUSION -1) {
        arrayIndex += numOfN+numOfT;
    }else{
        NSLog(@"Table Cell Selection Number Error");
    }
    
    BSStructure *selectedStructure = [allStructures objectAtIndex:arrayIndex];
    
    for (int secNum = 0; secNum < allSectionViews.count; secNum++) {
        BSSectionView *currentView = [allSectionViews objectAtIndex:secNum];
        [currentView clearPaths];
        
        if ([selectedStructure isInSectionNumber:secNum]) {
            [currentView unfade];
            [currentView drawPaths:[NSMutableArray arrayWithObjects:
                                    [[selectedStructure paths] objectAtIndex:secNum], nil]];
        }else{
            [currentView fade];
        }
    }
}
- (IBAction)rotateSections:(id)sender {
    for (BSSectionView *s in allSectionViews){
        [s rotateView];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    CGPoint point = [[touches anyObject] locationInView:self.view];

    if (CGRectContainsPoint(sxnView0.frame, point)) {
        [self selectSectionView:sxnView0];
        [self colorCodeSectionNumer:0];
        selectedSxnView = 0;

    }else if (CGRectContainsPoint(sxnView1.frame, point)){
        [self selectSectionView:sxnView1];
        [self colorCodeSectionNumer:1];
        selectedSxnView = 1;
        
    }else if (CGRectContainsPoint(sxnView2.frame, point)){
        [self selectSectionView:sxnView2];
        [self colorCodeSectionNumer:2];
        selectedSxnView = 2;
        
    }else if (CGRectContainsPoint(sxnView3.frame, point)){
        [self selectSectionView:sxnView3];
        [self colorCodeSectionNumer:3];
        selectedSxnView = 3;
        
    }else if (CGRectContainsPoint(sxnView4.frame, point)){
        [self selectSectionView:sxnView4];
        [self colorCodeSectionNumer:4];
        selectedSxnView = 4;
        
    }else if (CGRectContainsPoint(sxnView5.frame, point)){
        [self selectSectionView:sxnView5];
        [self colorCodeSectionNumer:5];
        selectedSxnView = 5;
        
    }else if (CGRectContainsPoint(sxnView6.frame, point)){
        [self selectSectionView:sxnView6];
        [self colorCodeSectionNumer:6];
        selectedSxnView = 6;
        
    }else if (CGRectContainsPoint(sxnView7.frame, point)){
        [self selectSectionView:sxnView7];
        [self colorCodeSectionNumer:7];
        selectedSxnView = 7;
        
    }else if (CGRectContainsPoint(sxnView8.frame, point)){
        [self selectSectionView:sxnView8];
        [self colorCodeSectionNumer:8];
        selectedSxnView = 8;
        
    }else{
        //tap detected outside of any object
        selectedSxnView = -1;
        for (int i = 0; i < [allSectionViews count]; i++) {
            [[allSectionViews objectAtIndex:i] unfade];
            [[allSectionViews objectAtIndex:i] clearPaths];
        }
        
        for (int i = 0; i < NUMBER_OF_SECTIONS ; i++){
            int numberInSection = 0;
            if (i == NUCLEUS-1) {
                numberInSection = numOfN;
            }else if (i == TRACT -1){
                numberInSection = numOfT;
            }else if (i == PERFUSION -1) {
                numberInSection = numOfP;
            }else{
                NSLog(@"Table Cell Selection Number Error");
            }
            for(int j = 0; j < numberInSection; j++){
                [indexTable deselectRowAtIndexPath:[NSIndexPath indexPathForRow:j inSection:i] animated:YES];
            }
        }
        
        [self removeAllColorCodes];
    }
}

-(void)colorCodeSectionNumer:(int)secNum{
    [self removeAllColorCodes];
    for (int i = 0; i <[allStructures count]; i++) {
        if ([[allStructures objectAtIndex:i] isInSectionNumber:secNum]) {
            [[[indexTable cellForRowAtIndexPath:[self indexPathForObjectAtRow:i]] textLabel] setTextColor:[[allStructures objectAtIndex:i] sectionColor]];
        }else{
            [[[indexTable cellForRowAtIndexPath:[self indexPathForObjectAtRow:i]] textLabel] setTextColor:[UIColor blackColor]];
        }
    }
}

-(void)removeAllColorCodes{
    for (int i = 0; i < [allStructures count]; i++) {
        [[[indexTable cellForRowAtIndexPath:[self indexPathForObjectAtRow:i]] textLabel] setTextColor:[UIColor blackColor]];
    }
}

-(void)selectSectionView:(BSSectionView *)view{
    selectedSxnView =  view.sxnNumber.intValue;
    for(int i = 0; i < [allSectionViews count]; i++){
        [[allSectionViews objectAtIndex:i] fade];
        [[allSectionViews objectAtIndex:i] clearPaths];
    }
    NSMutableArray *pathsToDraw = [[NSMutableArray alloc] init];
    for (int i = 0; i < allStructures.count; i++) {
        if ([[allStructures objectAtIndex:i] isInSectionNumber:[view.sxnNumber intValue]]) {
            [pathsToDraw addObject:[[[allStructures objectAtIndex:i] paths] objectAtIndex:[view.sxnNumber intValue]]];
        }
    }
    
    [view drawPaths:pathsToDraw];
    [view unfade];
}

-(NSIndexPath *) indexPathForObjectAtRow:(int)row{
    if (row < numOfN) {
        return [NSIndexPath indexPathForRow:row inSection:0];
    }else if (row < numOfT+numOfN){
        return [NSIndexPath indexPathForRow:row - numOfN inSection:1];
    }else if (row < numOfP+numOfT+numOfN){
        return [NSIndexPath indexPathForRow:row - numOfN - numOfT inSection:2];
    }else{
        NSLog(@"indexPath Generation Failed with error");
        return nil;
    }
    
}

-(void)setCenterPoints:(UIDeviceOrientation)orentation{
    if (orentation == UIDeviceOrientationPortrait || orentation == UIDeviceOrientationPortraitUpsideDown) {
        [UIView animateWithDuration:0.5 delay:0 options: UIViewAnimationCurveEaseOut animations:^{
            
            for(BSSectionView *s in allSectionViews){
                s.transform = CGAffineTransformMakeScale(1,1);
            }
            
            sxnView0.center = sxn0PortraitCenterPoint;
            sxnView1.center = sxn1PortraitCenterPoint;
            sxnView2.center = sxn2PortraitCenterPoint;
            sxnView3.center = sxn3PortraitCenterPoint;
            sxnView4.center = sxn4PortraitCenterPoint;
            sxnView5.center = sxn5PortraitCenterPoint;
            sxnView6.center = sxn6PortraitCenterPoint;
            sxnView7.center = sxn7PortraitCenterPoint;
            sxnView8.center = sxn8PortraitCenterPoint;
            stemView.layer.opacity = 1;
            
        } completion:nil];
        
        
    }else if( orentation == UIDeviceOrientationLandscapeLeft || orentation == UIDeviceOrientationLandscapeRight){
        
        [UIView animateWithDuration:0.5 delay:0 options: UIViewAnimationCurveEaseOut animations:^{
            
            for(BSSectionView *s in allSectionViews){
                s.transform = CGAffineTransformMakeScale(1.5,1.5);
            }

            sxnView0.center = sxn0LandscapeCenterPoint;
            sxnView1.center = sxn1LandscapeCenterPoint;
            sxnView2.center = sxn2LandscapeCenterPoint;
            sxnView3.center = sxn3LandscapeCenterPoint;
            sxnView4.center = sxn4LandscapeCenterPoint;
            sxnView5.center = sxn5LandscapeCenterPoint;
            sxnView6.center = sxn6LandscapeCenterPoint;
            sxnView7.center = sxn7LandscapeCenterPoint;
            sxnView8.center = sxn8LandscapeCenterPoint;
            stemView.layer.opacity = 0;            
            
        } completion:nil];
    }
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [self setCenterPoints:toInterfaceOrientation];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    NSLog(@"Received Memory Warning!!!!!!!!");
}

- (void)viewDidUnload {
    [super viewDidUnload];
}
@end
