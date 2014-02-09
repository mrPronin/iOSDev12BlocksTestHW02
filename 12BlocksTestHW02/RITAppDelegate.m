//
//  RITAppDelegate.m
//  12BlocksTestHW02
//
//  Created by Pronin Alexander on 09.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITStudent.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // create objects
    RITStudent* student01   = [[RITStudent alloc] init];
    RITStudent* student02   = [[RITStudent alloc] init];
    RITStudent* student03   = [[RITStudent alloc] init];
    RITStudent* student04   = [[RITStudent alloc] init];
    RITStudent* student05   = [[RITStudent alloc] init];
    RITStudent* student06   = [[RITStudent alloc] init];
    RITStudent* student07   = [[RITStudent alloc] init];
    RITStudent* student08   = [[RITStudent alloc] init];
    RITStudent* student09   = [[RITStudent alloc] init];
    RITStudent* student10   = [[RITStudent alloc] init];
    
    // initialize properties
    student01.name      = @"Lex";
    student02.name      = @"Conrad";
    student03.name      = @"Alan";
    student04.name      = @"Alex";
    student05.name      = @"Amos";
    student06.name      = @"Bart";
    student07.name      = @"Ben";
    student08.name      = @"Bill";
    student09.name      = @"Bob";
    student10.name      = @"Jim";
    
    student01.lastName  = @"Smith";
    student02.lastName  = @"Johnson";
    student03.lastName  = @"Brown";
    student04.lastName  = @"Brown";
    student05.lastName  = @"Moore";
    student06.lastName  = @"Robinson";
    student07.lastName  = @"King";
    student08.lastName  = @"Scott";
    student09.lastName  = @"Evans";
    student10.lastName  = @"Bell";
    
    NSArray*    students    = @[
                                student01, student02, student03,
                                student04, student05, student06,
                                student07, student08, student09,
                                student10,
                                ];
    
    NSComparisonResult (^sortingBlock)(id, id) = ^(id obj01, id obj02) {
        
        NSString*   name01      = [obj01 name];
        NSString*   name02      = [obj02 name];
        NSString*   lastName01  = [obj01 lastName];
        NSString*   lastName02  = [obj02 lastName];
        
        if ([lastName01 isEqualToString:lastName02]) {
            return [name01 compare:name02];
        } else {
            return [lastName01 compare:lastName02];
        }
        
        return NSOrderedAscending;
    };
    
    NSArray*    sortedStudents  = [students sortedArrayUsingComparator:sortingBlock];
    
    NSLog(@"%@", sortedStudents);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
