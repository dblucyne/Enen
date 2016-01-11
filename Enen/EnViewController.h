//
//  EnViewController.h
//  Enen
//
//  Created by lucyne on 14-1-23.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnViewController : UIViewController


@property(weak,nonatomic) IBOutlet UITextField *userNametextField;
@property(weak,nonatomic) IBOutlet UITextField *passWordtextField;
@property(copy,nonatomic) NSString *userName;
@property(copy,nonatomic) NSString *passWord;

-(IBAction)backgroudTab:(id)sender;
-(IBAction)enLogin:(id)sender;
@end
