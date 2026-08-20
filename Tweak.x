#import <UIKit/UIKit.h>

// دیارکرنا کلاسا ئەپڵیکەیشنێ کو تە دڤێت دەستکاریێ تێدا بکی
%hook SpecificClassName

// گۆڕینا وەڵامێ فەنکشنەکێ نافخۆیی
- (BOOL)isPremiumUser {
    return YES; // دانیانا وەڵامی ل سەر کارکرنێ
}

%end
