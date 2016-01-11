//
//  EnCmdViewController.m
//  Enen
//
//  Created by lucyne on 14-2-7.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import "EnCmdViewController.h"

@interface EnCmdViewController ()

@end

@implementation EnCmdViewController
@synthesize ipPicker=_ipPicker;
@synthesize ipArray=_ipArray;
@synthesize outputTV,inputTF;

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
   // self.navigationController.title=@"Cmd";
    self.ipArray=[[NSArray alloc] initWithObjects:@"10.127.2.161",@"10.127.3.99",@"10.127.133.23", nil];
    self.ipPicker.dataSource=self;
    self.ipPicker.delegate=self;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _ipArray.count;
}
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _ipArray[row];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)backgroudTab:(id)sender{
    [[UIApplication sharedApplication]sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}
-(IBAction)exec:(id)sender{
    NSInteger *row =[self.ipPicker selectedRowInComponent:0];
    NSURL *url=[NSURL URLWithString:@"http://10.12.4.129:8080/enen/monitor/exec"];
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:5];
    [request setHTTPMethod:@"POST"];
    NSString *mStr=[@"ipdetail=" stringByAppendingString:[self.ipArray objectAtIndex:row]];
    NSString *allS=[mStr stringByAppendingString:@"&execcmd="];
    NSString *allS2=[allS stringByAppendingString:self.inputTF.text];
    NSData *data=[allS2 dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    [request setHTTPBody:data];
    NSData *received=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *rStr=[[NSString alloc]initWithData:received encoding:NSUTF8StringEncoding];
    self.outputTV.text=rStr;
    //self.outputTV.text=[self.ipArray objectAtIndex:row];
}
@end
