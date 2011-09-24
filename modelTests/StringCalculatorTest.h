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
//  StringCalculatorTest.h
//  XpWeekTddObjectiveC
//
//  Created by Alejandro Pérez García on 16/09/11.
//

#import <SenTestingKit/SenTestingKit.h>


@protocol Tokenizer;

@class StringCalculator;


@interface StringCalculatorTest : SenTestCase {
@private
	id mockedTokenizer;
	StringCalculator *calc;
}

@end
