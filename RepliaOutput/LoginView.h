#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface LoginView : UIView

@property (nonatomic, strong) UIView *buttonshadowView;
@property (nonatomic, strong) UIView *buttonView;
@property (nonatomic, strong) UILabel *loginLabel;

@property (nonatomic, setter=setLoginText:) IBInspectable NSString *loginText;

@end
