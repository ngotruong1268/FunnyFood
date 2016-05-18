//
//  AppDelegate.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/12/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "AboutScreen.h"
#import "AddressScreen.h"
#import "SaleOffScreen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainScreen *mainScreen = [[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    mainScreen.title = @"Food";
    UINavigationController *naviMainScreen = [[UINavigationController alloc] initWithRootViewController:mainScreen];
    naviMainScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu"
                                                              image:[UIImage imageNamed:@"menuWhite.png"]
                                                      selectedImage:[UIImage imageNamed:@"menuWhite.png"]];
    
    SaleOffScreen *saleOffScreen = [SaleOffScreen new];
    saleOffScreen.title = @"Sale Off";
    UINavigationController *naviSaleOffScreen= [[UINavigationController alloc] initWithRootViewController:saleOffScreen];
    naviSaleOffScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Sale"
                                                              image:[UIImage imageNamed:@"sale.png"]
                                                      selectedImage:[UIImage imageNamed:@"sale.png"]];
    
    AddressScreen *addressScreen = [AddressScreen new];
    addressScreen.title = @"Address";
    UINavigationController *naviAddressScreen= [[UINavigationController alloc] initWithRootViewController:addressScreen];
    naviAddressScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Address"
                                                                 image:[UIImage imageNamed:@"shopWhite2.png"]
                                                         selectedImage:[UIImage imageNamed:@"shopWhite2.png"]];
    
    AboutScreen *aboutScreen = [AboutScreen new];
    aboutScreen.title = @"About";
    UINavigationController *naviAboutScreen= [[UINavigationController alloc] initWithRootViewController:aboutScreen];
    naviAboutScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"About"
                                                                 image:[UIImage imageNamed:@"aboutWhite.png"]
                                                         selectedImage:[UIImage imageNamed:@"aboutWhite.png"]];
    
    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.viewControllers = @[naviMainScreen,naviSaleOffScreen,naviAddressScreen,naviAboutScreen];
    
    
    tabBarController.tabBar.tintColor = [UIColor whiteColor];
    tabBarController.tabBar.barStyle = UIBarStyleBlack;
    tabBarController.tabBar.translucent = NO;
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor clearColor]}
                                             forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:1]}
//                                             forState:UIControlStateSelected];
    
    
    NSShadow *shadow = [NSShadow new];
    shadow.shadowColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    shadow.shadowOffset = CGSizeMake(0, 1);
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor],
                                                          NSForegroundColorAttributeName,
                                                          shadow,
                                                          NSShadowAttributeName,
                                                          [UIFont fontWithName:@"arial rounded mt bold" size:20],NSFontAttributeName
                                                          , nil]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor orangeColor]];
    [[UINavigationBar appearance] setTranslucent:true];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds ]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
