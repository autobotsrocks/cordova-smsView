#import <UIKit/UIKit.h>
#import "SmsView.h"

@implementation SmsView

-(void)open:(CDVInvokedUrlCommand *)command {
    [self.commandDelegate runInBackground:^{
        MFMessageComposeViewController* picker = [[MFMessageComposeViewController alloc] init];
        picker.messageComposeDelegate = self;
        picker.recipients = [command.arguments objectAtIndex:0];
        picker.body = [command.arguments objectAtIndex:1];
        [self.viewController presentViewController:picker animated:YES completion:nil];
    }];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    [self.viewController dismissViewControllerAnimated:NO completion:nil];
}
@end