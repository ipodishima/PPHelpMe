//
//  FileHelper.m
//  PPWordPress
//
//  Created by Marian PAUL on 20/04/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "FileHelper.h"
#include <sys/xattr.h>

@implementation FileHelper
+ (BOOL) removeDocumentsDirectoryIfExists:(NSString *)directory
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [[paths objectAtIndex:0] stringByAppendingPathComponent:directory];
	BOOL isDir, success;
	
	//Remove directory if exists
	success = [fileManager fileExistsAtPath:documentsDir isDirectory:&isDir] && isDir;
	if(success){
		success = [fileManager removeItemAtPath:documentsDir error:&error];
	}
	
	return success;
}

+ (BOOL) createDocumentsDirectoryIfNotExist:(NSString *)directory 
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [[paths objectAtIndex:0] stringByAppendingPathComponent:directory];
	BOOL isDir, success;
	
	//Create directory if not exists
	success = [fileManager fileExistsAtPath:documentsDir isDirectory:&isDir] && isDir;
	if(!success){
		success = [fileManager createDirectoryAtPath:documentsDir withIntermediateDirectories:YES attributes:nil error:&error];
	}
	
	return success;
}

+ (BOOL) isExistingDocumentDirectory:(NSString *)directory
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [[paths objectAtIndex:0] stringByAppendingPathComponent:directory];
	BOOL isDir;
	
	return [fileManager fileExistsAtPath:documentsDir isDirectory:&isDir] && isDir;
}

+ (BOOL) doesFileExists:(NSString *)path
{
    return [[NSFileManager defaultManager] fileExistsAtPath:path];
}

+ (id) loadFromNSCodingWithFileName:(NSString*)fileName {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *path = [documentsDirectory stringByAppendingPathComponent:fileName];
	
	NSString *key = [fileName substringWithRange:NSMakeRange(0, [fileName rangeOfString:@"."].location)];
	
    if(path)
	{
		NSData *data;
		NSKeyedUnarchiver *unarchiver;
		
		data = [[NSData alloc] initWithContentsOfFile:path];
		
		
		unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
		
		id objectArchived = [unarchiver decodeObjectForKey:key];
		if(objectArchived)
		{
			[unarchiver finishDecoding];
			return objectArchived;
		}
	}
	return nil;
}

+ (BOOL) saveNSCodingDataFromObject:(id)objectToSave toFileName:(NSString*)fileName;
{
    NSMutableData *data;
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *archivePath = [documentsDirectory stringByAppendingPathComponent:fileName];
	
	NSKeyedArchiver *archiver;
	BOOL result;
	
	data = [NSMutableData data];
	archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
	
	// FIXME OR IMPROVE
	NSString *key = [fileName substringWithRange:NSMakeRange(0, [fileName rangeOfString:@"."].location)];
	[archiver encodeObject:objectToSave forKey:key];
	
	[archiver finishEncoding];
	result = [data writeToFile:archivePath atomically:YES];
	return result;
}

+ (BOOL) saveNSCodingDataFromArray:(NSMutableArray*)arrayToSave toFileName:(NSString*)fileName {
	return [self saveNSCodingDataFromObject:arrayToSave toFileName:fileName];
}

+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 5.1) {
        const char* filePath = [[URL path] fileSystemRepresentation];
        
        const char* attrName = "com.apple.MobileBackup";
        u_int8_t attrValue = 1;
        
        int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
        return result == 0; 
    }
    else {        
        if(![[NSFileManager defaultManager] fileExistsAtPath: [URL path]]) return NO;

        NSError *error = nil;
        BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
                                      forKey: NSURLIsExcludedFromBackupKey error: &error];
        if(!success){
            NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
        }
        return success;   
    }
}

@end
