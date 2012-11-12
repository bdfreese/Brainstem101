//
//  BSViewController.h
//  Brainstem101
//
//  Created by Samantha Dove on 10/3/12.
//  Copyright (c) 2012 Brainstem101. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "BSSectionView.h"
#import "BSStemView.h"
#import "BSDetailView.h"

@interface BSViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *indexTable;

@property (nonatomic, retain) NSMutableArray *structures;
@property (strong, nonatomic) IBOutlet BSDetailView *detailView;

@property (nonatomic, retain) BSSectionView *sxnView0;
@property (nonatomic, retain) BSSectionView *sxnView1;
@property (nonatomic, retain) BSSectionView *sxnView2;
@property (nonatomic, retain) BSSectionView *sxnView3;
@property (nonatomic, retain) BSSectionView *sxnView4;
@property (nonatomic, retain) BSSectionView *sxnView5;
@property (nonatomic, retain) BSSectionView *sxnView6;
@property (nonatomic, retain) BSSectionView *sxnView7;
@property (nonatomic, retain) BSSectionView *sxnView8;
    //@property (nonatomic, retain) MPMoviePlayerController *moviePlayer;
@property (nonatomic, retain) IBOutlet BSStemView *stemView;


@end
