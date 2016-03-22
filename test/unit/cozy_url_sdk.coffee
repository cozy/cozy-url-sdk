should = require 'should'
sinon = require 'sinon'
cozyUrl = require '../../src/cozy_url_sdk'

describe "Cozy Url SDK", ->

    describe "couch", ->

        it "gets the schema.", ->
            cozyUrl.couch.schema().should.equal 'http'
        it "gets the host.", ->
            cozyUrl.couch.host().should.equal 'localhost'
        it "gets the port.", ->
            cozyUrl.couch.port().should.equal '5984'
        it "gets the url.", ->
            cozyUrl.couch.url().should.equal 'http://localhost:5984'

        it "possible to modify the schema with COUCH_SCHEMA.", ->
            process.env.COUCH_SCHEMA = 'ptth'
            cozyUrl.couch.schema().should.equal 'ptth'
        it "possible to modify the host with COUCH_HOST.", ->
            process.env.COUCH_HOST = 'tsohlacol'
            cozyUrl.couch.host().should.equal 'tsohlacol'
        it "possible to modify the port with COUCH_PORT.", ->
            process.env.COUCH_PORT = '4895'
            cozyUrl.couch.port().should.equal '4895'
        it "get the url with COUCH_SCHEMA, COUCH_HOST, COUCH_PORT.", ->
            cozyUrl.couch.url().should.equal 'ptth://tsohlacol:4895'


    describe "controller", ->

        it "gets the schema.", ->
            cozyUrl.controller.schema().should.equal 'http'
        it "gets the host.", ->
            cozyUrl.controller.host().should.equal 'localhost'
        it "gets the port.", ->
            cozyUrl.controller.port().should.equal '9002'
        it "gets the url.", ->
            cozyUrl.controller.url().should.equal 'http://localhost:9002'

        it "possible to modify the schema with CONTROLLER_SCHEMA.", ->
            process.env.CONTROLLER_SCHEMA = 'ptth'
            cozyUrl.controller.schema().should.equal 'ptth'
        it "possible to modify the host with CONTROLLER_HOST.", ->
            process.env.CONTROLLER_HOST = 'tsohlacol'
            cozyUrl.controller.host().should.equal 'tsohlacol'
        it "possible to modify the port with CONTROLLER_PORT.", ->
            process.env.CONTROLLER_PORT = '2009'
            cozyUrl.controller.port().should.equal '2009'
        it "get the url with CONTROLLER_SCHEMA, CONTROLLER_HOST, " + \
                "CONTROLLER_PORT.", ->
            cozyUrl.controller.url().should.equal 'ptth://tsohlacol:2009'


    describe "proxy", ->

        it "gets the schema.", ->
            cozyUrl.proxy.schema().should.equal 'http'
        it "gets the host.", ->
            cozyUrl.proxy.host().should.equal 'localhost'
        it "gets the port.", ->
            cozyUrl.proxy.port().should.equal '9104'
        it "gets the url.", ->
            cozyUrl.proxy.url().should.equal 'http://localhost:9104'

        it "possible to modify the schema with PROXY_SCHEMA.", ->
            process.env.PROXY_SCHEMA = 'ptth'
            cozyUrl.proxy.schema().should.equal 'ptth'
        it "possible to modify the host with PROXY_HOST.", ->
            process.env.PROXY_HOST = 'tsohlacol'
            cozyUrl.proxy.host().should.equal 'tsohlacol'
        it "possible to modify the port with PROXY_PORT.", ->
            process.env.PROXY_PORT = '4019'
            cozyUrl.proxy.port().should.equal '4019'
        it "get the url with PROXY_SCHEMA, PROXY_HOST, PROXY_PORT.", ->
            cozyUrl.proxy.url().should.equal 'ptth://tsohlacol:4019'


    describe "dataSystem", ->

        it "gets the schema.", ->
            cozyUrl.dataSystem.schema().should.equal 'http'
        it "gets the host.", ->
            cozyUrl.dataSystem.host().should.equal 'localhost'
        it "gets the port.", ->
            cozyUrl.dataSystem.port().should.equal '9101'
        it "gets the url.", ->
            cozyUrl.dataSystem.url().should.equal 'http://localhost:9101'

        it "possible to modify the schema with DATASYSTEM_SCHEMA.", ->
            process.env.DATASYSTEM_SCHEMA = 'ptth'
            cozyUrl.dataSystem.schema().should.equal 'ptth'
        it "possible to modify the host with DATASYSTEM_HOST.", ->
            process.env.DATASYSTEM_HOST = 'tsohlacol'
            cozyUrl.dataSystem.host().should.equal 'tsohlacol'
        it "possible to modify the port with DATASYSTEM_PORT.", ->
            process.env.DATASYSTEM_PORT = '1019'
            cozyUrl.dataSystem.port().should.equal '1019'
        it "get the url with DATASYSTEM_SCHEMA, DATASYSTEM_HOST, " + \
                "DATASYSTEM_PORT.", ->
            cozyUrl.dataSystem.url().should.equal 'ptth://tsohlacol:1019'


    describe "home", ->

        it "gets the schema.", ->
            cozyUrl.home.schema().should.equal 'http'
        it "gets the host.", ->
            cozyUrl.home.host().should.equal 'localhost'
        it "gets the port.", ->
            cozyUrl.home.port().should.equal '9103'
        it "gets the url.", ->
            cozyUrl.home.url().should.equal 'http://localhost:9103'

        it "possible to modify the schema with HOME_SCHEMA.", ->
            process.env.HOME_SCHEMA = 'ptth'
            cozyUrl.home.schema().should.equal 'ptth'
        it "possible to modify the host with HOME_HOST.", ->
            process.env.HOME_HOST = 'tsohlacol'
            cozyUrl.home.host().should.equal 'tsohlacol'
        it "possible to modify the port with DEFAULT_REDIRECT_PORT.", ->
            process.env.DEFAULT_REDIRECT_PORT = '3019'
            cozyUrl.home.port().should.equal '3019'
        it "possible to modify the port with HOME_PORT.", ->
            process.env.HOME_PORT = '3020'
            cozyUrl.home.port().should.equal '3020'
        it "get the url with HOME_SCHEMA, HOME_HOST, HOME_PORT.", ->
            cozyUrl.home.url().should.equal 'ptth://tsohlacol:3020'
