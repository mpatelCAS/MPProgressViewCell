//
//  MPProgressCell.m
//  MPProgressIndicatorCell
//
//  Created by Custom Apps on 12/30/15.
//  Copyright © 2015 Custom Apps. All rights reserved.
//

#import "MPProgressCell.h"

@implementation MPProgressCell

#define             kRatio                      0.7f
#define             kTrackTintColor             [UIColor lightGrayColor]
#define             kProgressColor              [UIColor blackColor]

- (void)mp_setImageFromURL:(NSURL *)url
{
    if (!_url &&
        [url isKindOfClass:[NSURL class]]) {
        _url = url;
    }

    if (!_url) {
        NSLog(@"-HLExplicitImageView.m- No URL passed as parameter.");
    }

    DACircularProgressView *progressView = _circularProgressView;
    CGRect destinationFrame;
    if (!progressView)
    {
        destinationFrame = CGRectMake(CGRectGetWidth(self.frame) * kRatio / 2.0f,
                                      CGRectGetHeight(self.frame) * kRatio / 2.0f,
                                      CGRectGetWidth(self.frame) * (1.0f - kRatio),
                                      CGRectGetHeight(self.frame) * (1.0f - kRatio));
        progressView = [[DACircularProgressView alloc] initWithFrame:destinationFrame];

        progressView.thicknessRatio = 0.1f;
        progressView.trackTintColor = kTrackTintColor;
        progressView.progressTintColor = kProgressColor;
    }

    [self addSubview:progressView];

    if (_errorButton) {
        _errorButton.hidden = YES;
    }

    SDWebImageManager *manager = [SDWebImageManager sharedManager];
    [manager downloadImageWithURL:_url
                          options:0
                         progress:^(NSInteger receivedSize, NSInteger expectedSize) {

                             CGFloat fProgress = ((CGFloat)receivedSize)/((CGFloat)expectedSize);
                             [progressView setProgress:fProgress animated:YES];
                         }
                        completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {

                            [progressView removeFromSuperview];

                            if (image &&
                                !error)
                            {
                                self.image = image;

                                if ([url isKindOfClass:[UIButton class]] &&
                                    [_delegate respondsToSelector:@selector(imageViewLoadedSuccessfully:)]) {
                                    [_delegate imageViewLoadedSuccessfully:self];
                                }
                            }
                            else
                            {
                                if (!_errorButton)
                                {
                                    _errorButton = [[UIButton alloc] initWithFrame:destinationFrame];

                                    self.userInteractionEnabled = YES;
                                    _errorButton.userInteractionEnabled = YES;
                                    _errorButton.contentMode = UIViewContentModeScaleToFill;
                                    [_errorButton setImage:[UIImage imageNamed:@"ImageError.png"] forState:UIControlStateNormal];

                                    [_errorButton addTarget:self action:@selector(mp_setImageFromURL:) forControlEvents:UIControlEventTouchUpInside];

                                    [self addSubview:_errorButton];
                                    [self bringSubviewToFront:_errorButton];
                                }
                                else {
                                    _errorButton.hidden = NO;
                                }
                            }
                        }];
}

@end
