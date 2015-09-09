//
//  ViewController.m
//  GGSearch
//
//  Created by __无邪_ on 15/9/8.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "ViewController.h"


static NSString *const KVO_CONTEXT_ADDRESS_CHANGED = @"KVO_CONTEXT_ADDRESS_CHANGED";

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSString *targetStr = @"我是中国人，我住在中国";
    NSArray *results = [self searchLocationOfTargetStr:@"中国" fromString:targetStr];
    for (NSTextCheckingResult *object in results) {
        NSLog(@"(%d %d)",object.range.length,object.range.location);
    }
    
    
    
    self.dataSource = [[NSMutableArray alloc] init];
    
    ///监控数组改变
    [self addObserver:self forKeyPath:@"dataSource" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:(__bridge void *)(KVO_CONTEXT_ADDRESS_CHANGED)];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - action

- (IBAction)changeAction:(id)sender {
    [newDataSourcee(self) addObject:@"fasf"];
    self.selectedIndex = 2;
}


#pragma mark - obverve

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSLog(@"===");
}


#pragma mark - private

static inline id newDataSourcee(id controller) {
    return [controller mutableArrayValueForKey:@"dataSource"];
}






- (NSArray *)searchLocationOfTargetStr:(NSString *)target fromString:(NSString *)origStr{
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:target options:0 error:&error];
    NSArray *results = [regex matchesInString:origStr options:NSMatchingReportProgress range:NSMakeRange(0, origStr.length)];
    
    if (error) {
        NSLog(@"ERROR:%@",error.debugDescription);
    }
    
    if (results) {
//        for (NSTextCheckingResult *rs in results) {
//            NSLog(@"%lu %lu",(unsigned long)rs.range.location,(unsigned long)rs.range.length);
//        }
        return results;
    }
    
    return nil;
}








@end
