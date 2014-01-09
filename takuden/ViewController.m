//
//  ViewController.m
//  takuden
//
//  Created by 小野田　晋 on 13/11/14.
//  Copyright (c) 2013年 university of kitakyushu. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	startInput = YES;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)num_down:(id)sender
{
    UIButton *a = (UIButton *)sender;
    if(startInput){
        
        if(a.tag==0) return;
        
        if(a.tag == 10){
            result.text = [NSString stringWithFormat:@"%@%s",result.text,"0."];
        }
        else{
            result.text = [NSString stringWithFormat:@"%d",a.tag];
        }
        startInput = NO;
    }
    
    
    else{
            if(a.tag == 10){
                NSRange searchResult = [result.text rangeOfString:@"."];
                if(searchResult.location == NSNotFound){
                    result.text = [NSString stringWithFormat:@"%@%@",result.text,@"."];
                }
            }
            else{
                        result.text = [NSString stringWithFormat:@"%@%d",result.text,a.tag];
                }
            }
        }
    

-(IBAction)equal_down:(id)sender{
    if(operation == 0){
        currentValue += [result.text floatValue];
    }else if( operation == 1 ){
        currentValue -= [result.text floatValue];
    }
    else if( operation == 2 ){
        currentValue *= [result.text floatValue];
    }
    else if( operation == 3 ){
        currentValue /= [result.text floatValue];
    }
    result.text = [NSString stringWithFormat:@"%g",currentValue];
    startInput = YES;
}


-(IBAction)culc_down:(id)sender
{
        UIButton *a = (UIButton *)sender;
        currentValue = [result.text floatValue];
        operation = a.tag;
        startInput = YES;
    }

-(IBAction)clear_down:(id)sender{
    result.text = @"0";
    startInput = YES;
}

@end