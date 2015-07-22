"use strict";

var _ = require('underscore');
var assert = require('assert');
var async = require('async');
var db = require('sql/db.js');
var dao = require('dao/dao.js');
var bo = require('bo/bo.js');
var primaryBo = require('bo/primaryBo.js');
var primaryDao = require('dao/primaryDao.js');
var table = require('sql/table.js');
var field = require('sql/field.js');
var index = require('sql/index.js');
var condition = require('sql/condition.js');
var aggregate = require('sql/aggregate.js');
var query = require('sql/query.js');
var ddl = require('sql/ddl.js');
var sqliteQuery = require('sql/sqlite/query.js');

function fieldEqual(f1, f2) {
    return f1.name() === f2.name() && f1.dataType() === f2.dataType() && f1.className() === f2.className() && f1.value() === f2.value();
}

var Tests = {
    _name: 'testPrimaryBo',

    DISABLEDtestSaveFieldWithValidation: function() {
        // example scenario: amountGross must be > amountNet
        var invoiceLine = table.table('invoiceLine');
        var id = field.field('id', field.DataType.int);
        var amountNet = field.field('amountNet', field.DataType.int);
        var amountGross = field.field('amountGross', field.DataType.int);
        invoiceLine.field(id).field(amountNet).field(amountGross);
        var db1 = db.db(':memory:').open(':memory:');
        var ilDao = primaryDao.primaryDao(db1, invoiceLine);
        var ilBo = primaryBo.primaryBo(db1, ilDao);
        ilBo.fieldValue('amountNet', 10);
        ilBo.field('amountGross').validation(function(value, bo) {
            if ( bo.fieldValue('amountNet') >= value ) {
                throw new field.ValidationException("amountGross/amountNet");
            }
        });
        // should throw 
        assert.throws(function() { ilBo.saveField('amountGross', 9); }, field.ValidationException, "showd throw ValidationException");
        assert.doesNotThrow(function() { ilBo.saveField('amountGross', 11); }, field.ValidationException, "showd not throw ValidationException");
    }

};

function runTests() {
    console.log('>', module.filename);
    var f = null;
    for (f in Tests) {
        if ( typeof(Tests[f]) === 'function' && f.substr(0,4) === 'test' ) {
            console.log('>>>', f);
            Tests[f]();
            console.log('<<<', f);
        }
    }
    console.log('<', module.filename);
}

exports.runTests = runTests;
