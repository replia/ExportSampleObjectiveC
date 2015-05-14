#import "LoginView.h"

@implementation LoginView

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
	self.buttonshadowView = [UIView new];
	self.buttonshadowView.layer.cornerRadius = 15;
	self.buttonshadowView.backgroundColor = [UIColor colorWithRed:0.831 green:0.472 blue:0.297 alpha:1];
	[self addSubview:self.buttonshadowView];

	self.buttonView = [UIView new];
	self.buttonView.layer.cornerRadius = 15;
	self.buttonView.backgroundColor = [UIColor colorWithRed:0.984 green:0.557 blue:0.349 alpha:1];
	[self addSubview:self.buttonView];

	self.loginLabel = [UILabel new];
	self.loginLabel.textAlignment = NSTextAlignmentCenter;
	self.loginLabel.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
	self.loginLabel.font = [UIFont fontWithName:@"ArialMT" size:18];
	self.loginText = NSLocalizedString(@"LOGIN",nil);
	[self addSubview:self.loginLabel];

}

- (void)layoutSubviews {
	CGRect originalFrame = self.frame;
	self.bounds = CGRectMake(0, 0, 260, 46.5);

	self.buttonshadowView.frame = CGRectMake(0, 3.5, 260, 43);
	self.buttonshadowView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.buttonView.frame = CGRectMake(0, 0, 260, 43);
	self.buttonView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.loginLabel.frame = CGRectMake(0, 8.5, 257, 27.5);
	self.loginLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.frame = originalFrame;
}

# pragma mark text properties

- (void)setLoginText:(NSString*)text {
	if (![_loginText isEqualToString:text]) {
		_loginText = [text copy];
		self.loginLabel.text = _loginText;
	}
}

@end
