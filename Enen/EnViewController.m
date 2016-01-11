//
//  EnViewController.m
//  Enen
//
//  Created by lucyne on 14-1-23.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import "EnViewController.h"
#import "EnTabBarViewController.h"

@interface EnViewController ()

@end

@implementation EnViewController

@synthesize userNametextField=_userNametextField;
@synthesize passWordtextField=_passWordtextField;
@synthesize userName=_userName;
@synthesize passWord=_passWord;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)backgroudTab:(id)sender{
    [[UIApplication sharedApplication]sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}
-(IBAction)enLogin:(id)sender{
    self.userName=self.userNametextField.text;
    self.passWord=self.passWordtextField.text;
    NSString *uName=self.userName;
    NSString *pwd=self.passWord;
    if ([uName length]==0||[pwd length]==0||[uName isEqualToString:@"your name"]||[pwd isEqualToString:@"password"]) {
        //self.showMegLabel.text=@"username or password is not null!";
        //[self.showMegLabel setHidden:NO];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"info" message:@"Incorrect ID or password." delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];
        [alert show];
        [self performSelector:@selector(dimissAlert:) withObject:alert afterDelay:2.0];
    }else{
        
       // NSURL *url=[NSURL URLWithString:@"http://10.12.4.129:8080/enen/monitor/login"];
       // NSMutableURLRequest *request=[[NSMutableURLRequest alloc]initWithURL:url //cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:5];
        //[request setHTTPMethod:@"POST"];
        ////NSString *mStr=@"name=lufei&pwd=lufei";
       // NSData *data=[mStr dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
       // [request setHTTPBody:data];
       // NSData *received=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
       // NSString *rStr=[[NSString alloc]initWithData:received encoding:NSUTF8StringEncoding];
        [self performSegueWithIdentifier:@"tabBar" sender:self];
    }
}
-(void)dimissAlert:(UIAlertView *)alert{
    if(alert){
        [alert dismissWithClickedButtonIndex:[alert cancelButtonIndex] animated:YES];
    }
}
@end
