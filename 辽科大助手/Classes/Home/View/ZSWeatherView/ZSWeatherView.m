//
//  ZSWeatherView.m
//  辽科大助手
//
//  Created by MacBook Pro on 16/3/1.
//  Copyright © 2016年 USTL. All rights reserved.
//

#import "ZSWeatherView.h"
#import "ZSWeatherModel.h"

@interface ZSWeatherView ()

@property (weak, nonatomic) IBOutlet UILabel *dayon_dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayon_weatherLabel;
@property (weak, nonatomic) IBOutlet UILabel *pm25Label;
@property (weak, nonatomic) IBOutlet UILabel *daon_temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentWeekLabel;
@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;

@end

@implementation ZSWeatherView

- (void)setWeatherModel:(ZSWeatherModel *)weatherModel
{
    _weatherModel = weatherModel;
    
    self.dayon_dateLabel.text = weatherModel.date ? weatherModel.date : @"暂无天气数据";
    self.dayon_weatherLabel.text = weatherModel.weather ? weatherModel.weather : @"";
    
    NSString *weatherp25 = [NSMutableString string];
    NSString *week = [NSString string];
    weatherp25 = weatherModel.pm25 ? weatherModel.pm25 : @"未连接网络或服务器异常";
    if (weatherModel.pm25) {
        
        weatherp25 = [NSString stringWithFormat:@"pm2.5: %@", weatherp25];
        week = [NSString stringWithFormat:@"第%@周", weatherModel.currentWeek ? weatherModel.currentWeek : @""];
    }
    
    self.pm25Label.text = weatherp25;
    self.daon_temperatureLabel.text = weatherModel.temperature ? weatherModel.temperature : @"";
    self.currentWeekLabel.text = week;
    
    NSString *weather = weatherModel.weather;
    
    if (weatherModel.date) {
        
        if ([weather containsString:@"晴"] && ![weather containsString:@"转"]) {
            
            self.weatherImageView.image = [UIImage imageNamed:@"sunny"];
        } else if([weather containsString:@"雷"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"rain"];
        } else if([weather containsString:@"雪"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"snow"];
        } else if([weather containsString:@"雾"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"fog"];
        } else if([weather containsString:@"霾"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"haze"];
        } else if([weather containsString:@"云"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"cloudy"];
        } else if([weather containsString:@"阴"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"overcast"];
        } else if([weather containsString:@"雨"]) {
            self.weatherImageView.image = [UIImage imageNamed:@"thunder"];
        }
    }
    
    
    
}


@end
