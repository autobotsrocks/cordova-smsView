#import <Cordova/CDV.h>

#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>

@interface SmsView : CDVPlugin <MFMessageComposeViewControllerDelegate> {}

- (void)open: (CDVInvokedUrlCommand*) command;

@end