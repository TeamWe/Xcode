//
//  ViewController.m
//  demo-for-runtime
//
//  Created by 徐纪光 on 16/3/16.
//  Copyright © 2016年 jiguang. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import <objc/runtime.h>
#import "JGPerson.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    unsigned int count;
    // Do any additional setup after loading the view, typically from a nib.
    JGPerson *p = [[JGPerson alloc]init];
//    Ivar *ivars = class_copyIvarList([UITableView class], &count);
//    for (int i=0; i<count; i++) {
//        NSLog(@"%-50s,%-50ld",ivar_getName(ivars[i]),ivar_getOffset(ivars[i]));
//    }
    
    ((void (*)(id, SEL , NSString*))objc_msgSend)((id)p, @selector(setName:),@"33");
    
//    objc_msgSend(p,@selector(setAge:),20);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
