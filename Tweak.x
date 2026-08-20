#import <UIKit/UIKit.h>

// دروستکرنا تەگمێ مێنۆیی د ناڤ ئەپڵیکەیشنێ دا
@interface ModMenuController : UIViewController
@end

@implementation ModMenuController
+ (void)load {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIButton *modButton = [UIButton buttonWithType:UIButtonTypeCustom];
        modButton.frame = CGRectMake(20, 150, 60, 60);
        modButton.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.8];
        [modButton setTitle:@"VIP 🛠️" forState:UIControlStateNormal];
        modButton.layer.cornerRadius = 30;
        modButton.clipsToBounds = YES;
        
        // زێدەکرنا دیزاین و جوولانێ
        [modButton addTarget:self action:@selector(openMenu) forControlEvents:UIControlEventTouchUpInside];
        
        UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
        [keyWindow addSubview:modButton];
    });
}

+ (void)openMenu {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"قائما مۆدا (VIP Menu)" 
                                                                   message:@"تایبەتمەندیێن ژێرێ هاتیە ڤەکرن:" 
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    // زێدەکرنا بژاردەیان ب زمانێ بادینی
    UIAlertAction *snapPlusAction = [UIAlertAction actionWithTitle:@"ڤەکرنا Snapchat Plus ⭐️" 
                                                             style:UIAlertActionStyleDefault 
                                                           handler:^(UIAlertAction * _Nonnull action) {
        // ل ڤێرێ کۆدێ چالاککرنا پڵەس کاردکەت
    }];
    
    UIAlertAction *antiBanAction = [UIAlertAction actionWithTitle:@"پاراستنا Anti-Ban 🛡️" 
                                                            style:UIAlertActionStyleDefault 
                                                          handler:nil];

    UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"داخستن ❌" 
                                                          style:UIAlertActionStyleCancel 
                                                        handler:nil];
    
    [alert addAction:snapPlusAction];
    [alert addAction:antiBanAction];
    [alert addAction:closeAction];
    
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootVC presentViewController:alert animated:YES completion:nil];
}
@end
