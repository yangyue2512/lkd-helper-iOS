//
//  ZSProfileImageCell.m
//  辽科大助手
//
//  Created by DongAn on 15/11/30.
//  Copyright © 2015年 DongAn. All rights reserved.
//

#import "ZSProfileImageCell.h"
#import<QuartzCore/QuartzCore.h>
#import "UIImageView+WebCache.h"

#define nickName [[NSUserDefaults standardUserDefaults] objectForKey:ZSUser]

#define sex [[NSUserDefaults standardUserDefaults] objectForKey:ZSSex]


@interface ZSProfileImageCell ()
@property (weak, nonatomic) IBOutlet UIImageView *sexImageView;

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *sayingLabel;
@property (nonatomic,weak)UIButton *iconButton;


@end


@implementation ZSProfileImageCell

- (void)awakeFromNib {
    
    self.imgView.layer.masksToBounds = YES;
    
    self.imgView.layer.cornerRadius = self.imgView.width * 0.5;
    
    self.imgView.layer.borderWidth = 0;
    
    self.imgView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    /** 头像imageView*/
    NSString *str = [NSString stringWithFormat:@"http://lkdhelper.b0.upaiyun.com/picUser/%@.jpg!small",nickName];
    
    [self.imgView sd_setImageWithURL:[NSURL URLWithString:str] placeholderImage:[UIImage imageNamed:@"icon"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
       
        self.imgView.image = image ? image : [UIImage imageNamed:@"pic_treehole_avatar_img"];
        
    }];
    
    //添加image点击事件
//    self.imgView.userInteractionEnabled = YES;
//    [self.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(swapImage)]];
    
    
    UIImage *imageBoy = [UIImage imageNamed:@"boy"];
    UIImage *imageGril = [UIImage imageNamed:@"girl"];
    if (sex) {
        
        self.sexImageView.image = [sex isEqualToString:@"boy"] ? imageBoy : imageGril;
    } else {
        self.sexImageView.hidden = YES;
    }
    
    // 昵称
    self.nameLabel.text = nickName;
    
    //名言
    self.sayingLabel.text = @"个人详细信息";
    
    [ZSNotificationCenter addObserver:self selector:@selector(swapImage) name:@"swapImage" object:nil];

}

- (void)dealloc
{
    [ZSNotificationCenter removeObserver:self];
}


- (void)swapImage
{
    self.imgView.image = [UIImage GetImageFromLocal:ZSIconImageStr];
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
