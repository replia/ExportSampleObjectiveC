#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface EmailView : UIView

@property (nonatomic, strong) UIView *formView3;
@property (nonatomic, strong) UILabel *eMailLabel;
@property (nonatomic, strong) UIImageView *iconemailImageView;

@property (nonatomic, setter=setEMailText:) IBInspectable NSString *eMailText;
@property (nonatomic, setter=setIconemailImage:) IBInspectable UIImage *iconemailImage;

@end
