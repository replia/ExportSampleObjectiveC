#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface PasswordView : UIView

@property (nonatomic, strong) UIView *formView2;
@property (nonatomic, strong) UILabel *passwordLabel;
@property (nonatomic, strong) UIImageView *iconpasswordImageView;

@property (nonatomic, setter=setPasswordText:) IBInspectable NSString *passwordText;
@property (nonatomic, setter=setIconpasswordImage:) IBInspectable UIImage *iconpasswordImage;

@end
