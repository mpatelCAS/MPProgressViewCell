# MPProgressViewCell
It's Simple UIImageView Category Class which is for downloading image from remote server using SDWebImage and DACircleProgressView 

[![Alt][screenshot1_thumb]][screenshot1]

[screenshot1_thumb]: https://github.com/mpatelCAS/MPProgressViewCell/blob/master/ScreenShots/Simulator%20Screen%20Shot%20Dec%2030%2C%202015%2C%2011.42.09%20AM.png
[screenshot1]: https://github.com/mpatelCAS/MPProgressViewCell/blob/master/ScreenShots/Simulator%20Screen%20Shot%20Dec%2030%2C%202015%2C%2011.42.09%20AM.png


## Usage

MPProgressViewCell is designed to be presented within a navigation controller. Simply set the delegate (which must conform to `MPProgressCellDelegate`) 

See the code snippet below for an example of how to implement the MPProgressViewCell. There is also a simple demo app within the project.

###  Delegates

```obj-c
   [imageview mp_setImageFromURL:URL];
   [imageview mp_setImagefromURLwithPlaceholder:URL
                               placeholderImage:[UIImage imagenamed:@"placeholder.png"]];
```


### Table View Cell

### progressCell.h

```obj-c

@class MPProgressCell;

@interface progressCell : UITableViewCell

@property (weak, nonatomic) IBOutlet MPProgressCell *imgView; // bind the image view with MPProgressCell Category Class

```

###  Table View Controllor 

```obj-c

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

   /*  Now you can also show processing with placeholder image
     [cell.imgView mp_setImagefromURLwithPlaceholder:[NSURL URLWithString:@"http://farm4.static.flickr.com/3590/3329114220_5fbc5bc92b.jpg"] placeholderImage:[UIImage imageNamed:@"22.png"]]; */
   
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110.0f;
}

```

## Installation

MPProgressIndicatorCell is available through [CocoaPods](http://cocoapods.org) ,To install it, simply add the following line to your Podfile:

```ruby
pod "MPProgressIndicatorCell"
```


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Then import the photo browser into your source files (or into your bridging header if you're using with Swift and not using frameworks with Cocoapods):

```obj-c
#import "MPProgressCell.h"
```

If you are using Swift and frameworks, then you can just import the browser into your Swift source file:

```swift
import MPProgressCell
```


## Author

Mayank Patel, mpatel@customapps.in


## License

MPProgressViewCell is available under the MIT license. See the LICENSE file for more info.
