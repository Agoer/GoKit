# GoKit
增加一些常用的 UIKit 辅助 扩展
GoKit is a UIKit extension library, 

##Usage
###Install

add the dependency to your `Podfile`:

	pod 'GoKit'

Next, import the header file wherever your want to use it.

	#import <GoKit/GoKit.h>

##Feature

###UIColor Extension

color with hex number

	[UIColor go_colorWithHex:0x8031CCA]; // ARGB
	[UIColor go_colorWithHex:0x31CCAA];  // RGB

UIView with blur: 对于 iOS 7的模糊，进行了半透明替换

有朋友问，为什么这样做？
我看到了很多git小伙伴写了一些替代方案，对 UIimage 进行处理， 这样是很耗费性能的办法。为了适配 iOS7 得不偿失。
UIVisualEffectView 是在UIView上面盖了一个一层，对下面的 UIImageView 不进行操作。所以可以适用于快速切换效果


	- (UIView *)go_addBlurWithEffectWithStyle:(UIBlurEffectStyle)style
                                    frame:(CGRect)frame {
 	 if (go_iOS(8)) {

    UIVisualEffectView *view = [self effectviewWithframe:frame];

    [self addSubview:view];

    return view;
 	 } else {

    UIView *view = [self effectviewForiOS7Withframe:frame];
    [self addSubview:view];

    return view;
  }
}

	

	