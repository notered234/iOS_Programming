//
//  ViewController.m
//  haha
//
//  Created by notered234 on 2015/4/27.
//  Copyright (c) 2015年 notered234. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int num1, num2;

    BOOL firstClick;
    BOOL optExist;
    BOOL equExist;
    
    NSString *opt;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    firstClick = YES;
    optExist = NO;
    equExist = NO;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitBtn:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    
    if (firstClick == YES) {
        self.myDisplay.text = @"";
        self.myDisplay.text = digit;
        if(![digit isEqualToString:@"0"]){
        firstClick = NO;
        }
    }else {
        self.myDisplay.text = [self.myDisplay.text stringByAppendingString:digit];
    }
    
}

- (IBAction)optBtn:(UIButton *)sender {
    

    
    if (optExist == NO) {
        opt = [sender currentTitle];
        num1 = [self.myDisplay.text intValue];
        firstClick = YES;
        optExist = YES;
        
    }else{
        num2 = [self.myDisplay.text intValue];
        
        if ([opt isEqualToString:@"+"]) {
            num1 = num1 + num2;
        }else if ([opt isEqualToString:@"-"]) {
            num1 = num1 - num2;
        }else if ([opt isEqualToString:@"*"]) {
            num1 = num1 * num2;
        }else if ([opt isEqualToString:@"/"]) {
            num1 = num1 / num2;
        }
        self.myDisplay.text = [NSString stringWithFormat:@"%d",num1];
        
        opt = [sender currentTitle];
        firstClick = YES;
    }
    
}

- (IBAction)equBtn:(UIButton *)sender {
    
    if (equExist == NO) {
        
        num2 = [self.myDisplay.text intValue];
        
        if ([opt isEqualToString:@"+"]) {
            num1 = num1 + num2;
        }else if ([opt isEqualToString:@"-"]) {
            num1 = num1 - num2;
        }else if ([opt isEqualToString:@"*"]) {
            num1 = num1 * num2;
        }else if ([opt isEqualToString:@"/"]) {
            num1 = num1 / num2;
        }
        equExist = YES;
        
    }else{
        
        if ([opt isEqualToString:@"+"]) {
            num1 = num1 + num2;
        }else if ([opt isEqualToString:@"-"]) {
            num1 = num1 - num2;
        }else if ([opt isEqualToString:@"*"]) {
            num1 = num1 * num2;
        }else if ([opt isEqualToString:@"/"]) {
            num1 = num1 / num2;
        }
    }
    
    self.myDisplay.text = [NSString stringWithFormat:@"%d",num1];
    
}

- (IBAction)clcBtn:(UIButton *)sender {
    self.myDisplay.text = @"0";
    firstClick = YES;
    optExist = NO;
    equExist = NO;
}








@end
