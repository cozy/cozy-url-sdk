module.exports =

    couch:
        schema: -> process.env.COUCH_SCHEMA or 'http'
        port:   -> process.env.COUCH_PORT   or '5984'
        host:   -> process.env.COUCH_HOST   or 'localhost'
        name:   -> process.env.COUCH_NAME   or process.env.DB_NAME or 'cozy'
        url:    -> "#{@schema()}://#{@host()}:#{@port()}"

    controller:
        schema: -> process.env.CONTROLLER_SCHEMA or 'http'
        port:   -> process.env.CONTROLLER_PORT   or '9002'
        host:   -> process.env.CONTROLLER_HOST   or 'localhost'
        url:    -> "#{@schema()}://#{@host()}:#{@port()}"

    proxy:
        schema: -> process.env.PROXY_SCHEMA or 'http'
        port:   -> process.env.PROXY_PORT   or '9104'
        host:   -> process.env.PROXY_HOST   or 'localhost'
        url:    -> "#{@schema()}://#{@host()}:#{@port()}"

    dataSystem:
        schema: -> process.env.DATASYSTEM_SCHEMA or 'http'
        port:   -> process.env.DATASYSTEM_PORT   or '9101'
        host:   -> process.env.DATASYSTEM_HOST   or 'localhost'
        url:    -> "#{@schema()}://#{@host()}:#{@port()}"

    home:
        schema: -> process.env.HOME_SCHEMA or 'http'
        port:   -> process.env.HOME_PORT or process.env.DEFAULT_REDIRECT_PORT \
                                           or '9103'
        host:   -> process.env.HOME_HOST   or 'localhost'
        url:    -> "#{@schema()}://#{@host()}:#{@port()}"
