//
//  ViewController.m
//  MPProgressIndicatorCell
//
//  Created by Custom Apps on 12/30/15.
//  Copyright © 2015 Custom Apps. All rights reserved.
//

#import "ViewController.h"
#import "progressCell.h"
#import "MPProgressViewCell/MPProgressCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    self.title = @"Indicator Cell";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    progressCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MPCell"
                                                     forIndexPath:indexPath];

    [cell.imgView mp_setImageFromURL:[NSURL URLWithString:@"http://farm4.static.flickr.com/3590/3329114220_5fbc5bc92b.jpg"]];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110.0f;
}

@end
