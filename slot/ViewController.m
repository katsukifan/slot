//
//  ViewController.m
//  slot
//
//  Created by 张岳涛 on 19/2/15.
//  Copyright © 2019年 张岳涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    
    IBOutlet UILabel *label1;
    
    IBOutlet UILabel *label2;
    
    IBOutlet UILabel *label3;
    

    IBOutlet UILabel *resultLabel;
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)start:(id)sender {
    
    //0から9までの数字をランダムで出して箱に入れていく
    int label1_box = arc4random() % 10;
    
    int label2_box = arc4random() % 10;
    
    int label3_box = arc4random() % 10;
    
    label1.text = [NSString stringWithFormat:@"%d",label1_box];
    label2.text = [NSString stringWithFormat:@"%d",label2_box];
    label3.text = [NSString stringWithFormat:@"%d",label3_box];
    
    if (label1_box == label2_box && label2_box == label3_box) {
        resultLabel.text = @"大当たり!!!";
    }else{
        
        resultLabel.text = @"はずれ！！！";
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
