//
//  TaskAttenmentCell.h
//  RealmDemo
//
//  Created by lottak_mac2 on 16/8/1.
//  Copyright © 2016年 com.luohaifang. All rights reserved.
//

#import <UIKit/UIKit.h>
//任务附件
@protocol TaskAttenmentDelegate <NSObject>

- (void)TaskAttenmentDelete:(id)photo;

@end
@interface TaskAttenmentCell : UITableViewCell

@property (nonatomic, weak) id<TaskAttenmentDelegate> delegate;

@end
