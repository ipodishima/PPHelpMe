//
//  FileHelper.h
//  PPWordPress
//
//  Created by Marian PAUL on 20/04/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileHelper : NSObject
+ (BOOL) removeDocumentsDirectoryIfExists:(NSString *)directory;
+ (BOOL) createDocumentsDirectoryIfNotExist:(NSString *)directory;
+ (BOOL) isExistingDocumentDirectory:(NSString *)directory;
+ (BOOL) doesFileExists:(NSString *)path;

+ (id) loadFromNSCodingWithFileName:(NSString*)fileName;
+ (BOOL) saveNSCodingDataFromObject:(id)objectToSave toFileName:(NSString*)fileName;
+ (BOOL) saveNSCodingDataFromArray:(id)arrayToSave toFileName:(NSString*)fileName;
+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL;
@end
