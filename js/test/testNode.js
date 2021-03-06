/*
 * Copyright (C) 2015 Christian Friedl <Mag.Christian.Friedl@gmail.com>
 *
 * This file is part of Mapitor.
 *
 * Mapitor is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public Licens
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-
 *
 */

"use strict";

var _ = require('underscore');
var assert = require('assert');
var m_TestSuite = require('TestSuite.js');
var m_textNode = require('textNode.js');
var PainterFactory = require('painterFactory.js');

var tests = {
    _name: 'testNode',

    testCreateNode: function() {
    },
    testPainterForTextNode: function() {
        var tn = m_textNode.textNode();
        assert.ok(PainterFactory.forObject(tn) instanceof m_textNodePainter.TextNodePainter);
    }

};

function runTests() {
    m_TestSuite.TestSuite.call(tests);
    m_TestSuite.TestSuite.prototype.runTests.call(tests);
}

exports.runTests = runTests;
