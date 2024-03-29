//
//  AppDelegate.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "Wookie.h"
#import "Humano.h"
#import "Droid.h"
#import "StormTrooper.h"
#import "Sith.h"
#import "Equipo.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    Wookie* chewbacca = [[Wookie alloc] initWithName:@"Chewbacca"];    
    Humano* hanSolo = [[Humano alloc] initWithName:@"Han Solo" andRaza:HumanoRazaComun];
    Droid* c3PO = [[Droid alloc] initWithName:@"C3PO"];
    
    Equipo* laAlianza = [[Equipo alloc] initWithName:@"La alianza"];
    [laAlianza addIntegrante:chewbacca];
    [laAlianza addIntegrante:hanSolo];
    [laAlianza addIntegrante:c3PO];

    
    StormTrooper* bobaFett = [[StormTrooper alloc] initWithName:@"Boba Fett"];
    Sith* vader = [[Sith alloc] initWithName:@"Darth Vader"];
    
    Equipo* elImperio = [[Equipo alloc] initWithName:@"El Imperio"];
    [elImperio addIntegrante:bobaFett];
    [elImperio addIntegrante:vader];

    //LUCHAAAAAAAAA
    NSLog(@"\n***********************Empieza la lucha***********************");
    [laAlianza peleaContra:elImperio];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
