// XPWeekKataStringCalculatorObjectiveC, just the String Calculator kata done in Objective-C to the XPWeek 2011.
// Copyright (C) 2011  Alejandro Pérez García, Autentia Real Business Solutions S.L.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//
//  TestingWithOCUnitTest.m
//  XpWeekTddObjectiveC
//
//  Created by Alejandro Pérez García on 16/09/11.
//

#import "TestingWithOCUnitTest.h"

#import "MyOwnException.h"


@implementation TestingWithOCUnitTest

- (void)setUp {
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAssertNil {
	STAssertNil(nil, nil);
}

- (void)testAssertNotNil {
	STAssertNotNil(@"esta cadena no es nil", nil);
}

- (void)testAssertTrue {
	STAssertTrue(true, nil);
}

- (void)testAssertFalse {
	STAssertFalse(false, nil);
}

- (void)testAssertEqualObject {
	NSString *actual = @"hola";
	NSString *expected = @"hola";
	STAssertEqualObjects(actual, expected, nil);
}

- (void)testAssertEquals {
	int actual = 1;
	int expected = 1;
	STAssertEquals(actual, expected, nil);
}

- (void)testAssertEqualsWithAccuracy {
	int actual = 1;
	int expected = 2;
	int accuracy = 1;
	STAssertEqualsWithAccuracy(actual, expected, accuracy, nil);
}

- (void)throwAnyException {
	@throw [NSException exceptionWithName:@"AnyException" reason:@"To try test with exceptions" userInfo:[NSDictionary dictionary]];
}

- (void)testAssertThrows {
	STAssertThrows([self throwAnyException], nil);
}

- (void)throwMyOwnException {
	@throw [MyOwnException exceptionWithName:@"Incredible Exception" reason:@"To try test with exceptions" userInfo:[NSDictionary dictionary]];
}

- (void)testAssertThrowsSpecific {
	STAssertThrowsSpecific([self throwMyOwnException], MyOwnException, nil);
}

- (void)testAssertThrowsSpecificNamed {
	STAssertThrowsSpecificNamed([self throwMyOwnException], MyOwnException, @"Incredible Exception", nil);
}

- (void)testAssertNotTrow {
	STAssertNoThrow([NSString string], nil);
}

- (void)testAssertNoThrowSpecific {
	STAssertNoThrowSpecific([self throwAnyException], MyOwnException, nil);
}

- (void)testAssertNoThrowSpecificNamed {
	STAssertNoThrowSpecificNamed([self throwMyOwnException], MyOwnException, @"other name", nil);
}

- (void)testFail {
//	STFail(@"Siempre falla", nil);	
}

- (BOOL)methodThatReturnFalse {
//	[self throwAnyException];
	return false;
}

- (BOOL)methodThatReturnTrue {
//	[self throwAnyException];
	return true;
}

- (void)testAssertTrueNoThrow {
	STAssertTrueNoThrow([self methodThatReturnTrue], nil);
}

- (void)testAssertFalseNoThrow {
	STAssertFalseNoThrow([self methodThatReturnFalse], nil);
}


@end
