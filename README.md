# RZDatePickerView
自定义[DatePickerView](https://github.com/rzrobert/RZDatePickerView)

![example](https://github.com/rzrobert/RZDatePickerView/blob/master/datePickerView.gif?raw=true)

### 使用方法

```
- (void)showDatePickerWithType:(RZDateStyle)type {
    RZDatePickerView *datepicker = [[RZDatePickerView alloc] initWithCurrentDate:[NSDate date:@"2017-3-15 11:11" WithFormat:@"yyyy-MM-dd HH:mm"] CompleteBlock:^(NSDate *startDate) {
        self.timeLabel.text = [startDate stringWithFormat:@"yyyy-MM-dd HH:mm"];
    }];
    
    // datepicker.datePickerStyle = type;
    
    datepicker.datePickerStyle = DateStyleShowYearMonthDayHourMinute;
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

```