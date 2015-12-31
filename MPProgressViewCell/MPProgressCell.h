//
//  MPProgressCell.h
//  MPProgressIndicatorCell
//
//  Created by Custom Apps on 12/30/15.
//  Copyright © 2015 Custom Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DACircularProgressView.h"
#import "SDWebImageManager.h"

@class MPProgressCell;

@protocol MPProgressCellDelegate <NSObject>

@optional

- (void)imageViewLoadedSuccessfully:(MPProgressCell *)imageView;

@end


@interface MPProgressCell : UIImageView

@property (nonatomic, assign) id <MPProgressCellDelegate> delegate;

@property (nonatomic, strong) DACircularProgressView *circularProgressView;

@property (nonatomic, strong) UIButton *errorButton;

@property (nonatomic, strong) NSURL *url;

- (void)mp_setImageFromURL:(NSURL *)url;

- (void)mp_setImagefromURLwithPlaceholder:(NSURL *)url placeholderImage:(UIImage *)placeholder;

@end
