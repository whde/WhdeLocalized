## WhdeLocalized
-针对国际化做的类,可以在应用程序中选择跟随系统,简体,繁体;
-本程序添加有English,简体,繁体,想要做更多国际化语言,可以自己添加更多;

## 文字国际化
-1.生成 Localizable.strings, 添加对应的语言文件
-2.使用 CLocalizedString(@"确认设置") 
 例如:
```objective-c
 titleLabel.text = CLocalizedString(@"管理地址");
```

## xib国际化
-xib使用的时候需要读取到对应语言文件夹下的nib,当我们设置语言不跟随系统的时候,系统不能正确读取
-因此,我们需要找到对应的nib
-1.对xib进行国际化,正常流程
-2.在使用xib的时候使用 CLocalizedNibName(@"AddShouHuoAddressViewController") 
 例如:

## 图片国际化
和文字国际化类似,我们只需要找到国际化对应的是什么图片
-1.生成 ImageLocalized.strings, 添加对应的语言文件
-2.将图片添加到Project, 将ImageLocalized.strings中同一个Key在不同语言文件中对应到不同的语言图片
-3.使用CLocalizedImgName(图片名称Key)
 例如:
 ```objective-c
 [UIImage imageNamed:CLocalizedImgName(@"djdzs_大家都在说.png")]
```

## 设置语言
-1.将所有的ViewController继承于一个BaseViewController
-2.在viewDidLoad方法下添加:
 ```objective-c
  [[NSNotificationCenter defaultCenter] removeObserver:self name:LANGUAGE_CHANGE_NOTIFICATION object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageHasChanged) name:LANGUAGE_CHANGE_NOTIFICATION object:nil];
```

-3.实现languageHasChanged方法:
```objective-c
- (void)languageHasChanged{
    if ([self isViewLoaded] && self.view.window == nil) {
        for (UIView *v in self.view.subviews) {
            [v removeFromSuperview];
        }
        self.view = nil;
    }
}
```

-4.用以下方法设置语言:
```objective-c
  [CLanguageUtil setCurrentLanguage:Language_Hant];
  ```
-这个方法完成会发送消息通知:LANGUAGE_CHANGE_NOTIFICATION, 通知页面移除, 在页面显示在屏幕上的时候会重新调用viewDidLoad这个方法

