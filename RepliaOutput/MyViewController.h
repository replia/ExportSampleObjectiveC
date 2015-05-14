#import <UIKit/UIKit.h>

@class LoginView;
@class PasswordView;
@class EmailView;

@interface MyViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) UIImageView *birdgroupImageView;
@property (nonatomic, strong) UIImageView *catgroupImageView;
@property (nonatomic, strong) UIView *formView;
@property (nonatomic, strong) LoginView *loginView;
@property (nonatomic, strong) PasswordView *passwordView;
@property (nonatomic, strong) EmailView *emailView;
@property (nonatomic, strong) UILabel *gIngLabel;
@property (nonatomic, strong) UIImageView *beegroupImageView;
@property (nonatomic, strong) UIImageView *sungroupImageView;

@end
