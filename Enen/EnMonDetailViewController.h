//
//  EnMonDetailViewController.h
//  Enen
//
//  Created by lucyne on 14-1-28.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnMonDetailViewController : UIViewController

@property(nonatomic,weak) IBOutlet UILabel *detailip;
@property(nonatomic,weak) IBOutlet UIWebView *cpuview;
@property(nonatomic,copy) NSString *detailip_text;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
- (IBAction)segSelected:(id)sender;
@end
