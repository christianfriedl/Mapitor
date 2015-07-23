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
