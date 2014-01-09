//
//  ViewController.h
//  takuden
//
//  Created by 小野田　晋 on 13/11/14.
//  Copyright (c) 2013年 university of kitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *result;
    BOOL startInput;
    double currentValue;
    int operation;
}

-(IBAction)num_down:(id)sender;
-(IBAction)clear_down:(id)sender;
-(IBAction)culc_down:(id)sender;
-(IBAction)equal_down:(id)sender;
@end

