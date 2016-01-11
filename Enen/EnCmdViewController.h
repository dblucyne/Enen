//
//  EnCmdViewController.h
//  Enen
//
//  Created by lucyne on 14-2-7.
//  Copyright (c) 2014年 lucyne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnCmdViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *ipPicker;
@property(strong,nonatomic) NSArray *ipArray;
@property (weak, nonatomic) IBOutlet UIButton *execButton;
@property (weak, nonatomic) IBOutlet UITextField *inputTF;
@property (weak, nonatomic) IBOutlet UITextView *outputTV;
-(IBAction)backgroudTab:(id)sender;
-(IBAction)exec:(id)sender;
@end
