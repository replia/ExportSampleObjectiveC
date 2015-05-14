#import "PasswordView.h"

@implementation PasswordView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		[self commonInit];
	}
	return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self commonInit];
	}
	return self;
}

- (void)commonInit {
	self.formView2 = [UIView new];
	self.formView2.alpha = 0.8;
	self.formView2.layer.cornerRadius = 15;
	self.formView2.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
	[self addSubview:self.formView2];

	self.passwordLabel = [UILabel new];
	self.passwordLabel.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
	self.passwordLabel.font = [UIFont fontWithName:@"ArialMT" size:15];
	self.passwordText = NSLocalizedString(@"Password",nil);
	[self addSubview:self.passwordLabel];

	self.iconpasswordImageView = [UIImageView new];
	self.iconpasswordImageView.image = [UIImage imageNamed:@"iconpassword"];
	[self addSubview:self.iconpasswordImageView];

}

- (void)layoutSubviews {
	CGRect originalFrame = self.frame;
	self.bounds = CGRectMake(0, 0, 260, 43);

	self.formView2.frame = CGRectMake(0, 0, 260, 43);
	self.formView2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.passwordLabel.frame = CGRectMake(48, 11, 197.5, 23.5);
	self.passwordLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.iconpasswordImageView.frame = CGRectMake(16, 12.5, 17.5, 19);
	self.iconpasswordImageView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

	self.frame = originalFrame;
}

# pragma mark text properties

- (void)setPasswordText:(NSString*)text {
	if (![_passwordText isEqualToString:text]) {
		_passwordText = [text copy];
		self.passwordLabel.text = _passwordText;
	}
}

# pragma mark image properties

- (void)setIconpasswordImage:(UIImage*)image {
	_iconpasswordImage = image;
	self.iconpasswordImageView.image = image;
}

@end
