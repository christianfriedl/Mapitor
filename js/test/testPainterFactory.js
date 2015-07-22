"use strict";

var _ = require('underscore');
var assert = require('assert');
var m_TestSuite = require('TestSuite.js');
var PainterFactory = require('painterFactory.js');

var tests = {
    _name: 'testPainterFactory',

    testFactoryExists: function() {
        var tpf = PainterFactory;
        assert.ok(tpf.forObject);
    }

};

function runTests() {
    m_TestSuite.TestSuite.call(tests);
    m_TestSuite.TestSuite.prototype.runTests.call(tests);
}

exports.runTests = runTests;
