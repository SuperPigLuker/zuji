//
//  EPFileManager.h
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EPFileManager : NSObject

+ (instancetype)sharedInstance;

- (BOOL)copyFileToDocument;

- (BOOL)deleteFileInDocumentWithFileName:(NSString *)fileName;

@end
