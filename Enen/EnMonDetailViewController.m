//
//  EnMonDetailViewController.m
//  Enen
//
//  Created by lucyne on 14-1-28.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import "EnMonDetailViewController.h"

@interface EnMonDetailViewController ()

@end

@implementation EnMonDetailViewController
@synthesize detailip=_detailip;
@synthesize detailip_text=_detailip_text;
@synthesize cpuview=_cpuview;
@synthesize segmentedControl=_segmentedControl;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.detailip.text=self.detailip_text;
    NSString *cpuURL=@"http://10.12.4.129:8080/enen/getCpu.jsp?ipdetail=";
    NSURL *url=[NSURL URLWithString:[cpuURL stringByAppendingString:self.detailip_text]];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [_cpuview loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segSelected:(id)sender {
    switch (_segmentedControl.selectedSegmentIndex) {
        case 0:{
            NSString *cpuURL=@"http://10.12.4.129:8080/enen/getCpu.jsp?ipdetail=";
            NSURL *url=[NSURL URLWithString:[cpuURL stringByAppendingString:self.detailip_text]];
            NSURLRequest *request=[NSURLRequest requestWithURL:url];
            [_cpuview loadRequest:request];
            break;
        }
        case 1:{
            NSString *cpuURL=@"http://10.12.4.129:8080/enen/getMem.jsp?ipdetail=";
            NSURL *url=[NSURL URLWithString:[cpuURL stringByAppendingString:self.detailip_text]];
            NSURLRequest *request=[NSURLRequest requestWithURL:url];
            [_cpuview loadRequest:request];
            break;
        }case 2:{
            NSString *cpuURL=@"http://10.12.4.129:8080/enen/getIo.jsp?ipdetail=";
            NSURL *url=[NSURL URLWithString:[cpuURL stringByAppendingString:self.detailip_text]];
            NSURLRequest *request=[NSURLRequest requestWithURL:url];
            [_cpuview loadRequest:request];
            break;
        }
        default:
            break;
    }
}
@end
