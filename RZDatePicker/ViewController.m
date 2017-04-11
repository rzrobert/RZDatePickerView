//
//  ViewController.m
//  RZDatePicker
//
//  Created by 任征 on 2017/4/10.
//  Copyright © 2017年 任征. All rights reserved.
//

#import "ViewController.h"
#import "RZDatePickerView.h"
#import "NSDate+Extension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
- (IBAction)selectAction:(UIButton *)sender;
- (IBAction)changeDatePickerType:(UIButton *)sender;

/**
 *  datePicker
 */
@property (nonatomic,strong) RZDatePickerView *datePickerView;

@property (nonatomic, assign) RZDateStyle datePickerType;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectAction:(UIButton *)sender {
    [self showDatePickerWithType:self.datePickerType];
}

- (IBAction)changeDatePickerType:(UIButton *)sender {
    switch ((long)sender.tag) {
        case 1:
            self.datePickerType = DateStyleShowYearMonthDayHourMinute;
            [self showDatePickerWithType:DateStyleShowYearMonthDayHourMinute];
            break;
        case 2:
            self.datePickerType = DateStyleShowMonthDayHourMinute;
            [self showDatePickerWithType:DateStyleShowMonthDayHourMinute];
            break;
        case 3:
            self.datePickerType = DateStyleShowYearMonthDay;
            [self showDatePickerWithType:DateStyleShowYearMonthDay];
            break;
        case 4:
            self.datePickerType = DateStyleShowMonthDay;
            [self showDatePickerWithType:DateStyleShowMonthDay];
            break;
        case 5:
            self.datePickerType = DateStyleShowHourMinute;
            [self showDatePickerWithType:DateStyleShowHourMinute];
            break;
            
        default:
            break;
    }
}

- (void)showDatePickerWithType:(RZDateStyle)type {
    RZDatePickerView *datepicker = [[RZDatePickerView alloc] initWithCurrentDate:[NSDate date:@"2017-3-15 11:11" WithFormat:@"yyyy-MM-dd HH:mm"] CompleteBlock:^(NSDate *startDate) {
        self.timeLabel.text = [startDate stringWithFormat:@"yyyy-MM-dd HH:mm"];
    }];
    
    datepicker.datePickerStyle = type;
    
    //    datepicker.datePickerStyle = DateStyleShowYearMonthDayHourMinute;
    //    datepicker.datePickerStyle = DateStyleShowMonthDayHourMinute;
    //    datepicker.datePickerStyle = DateStyleShowYearMonthDay;
    //    datepicker.datePickerStyle = DateStyleShowMonthDay;
    //    datepicker.datePickerStyle = DateStyleShowHourMinute;
    datepicker.minLimitDate = [NSDate date:@"1997-2-28 12:22" WithFormat:@"yyyy-MM-dd HH:mm"];
    datepicker.maxLimitDate = [NSDate date:@"2022-12-28 22:12" WithFormat:@"yyyy-MM-dd HH:mm"];
    // 默认值——选择时间
    datepicker.title =  @"选择时间";
    [datepicker show];

}


@end
