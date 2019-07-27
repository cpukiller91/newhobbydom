hobbydom.page.Home = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        components: [{
            xtype: 'hobbydom-panel-home',
            renderTo: 'hobbydom-panel-home-div'
        }]
    });
    hobbydom.page.Home.superclass.constructor.call(this, config);
};
Ext.extend(hobbydom.page.Home, MODx.Component);
Ext.reg('hobbydom-page-home', hobbydom.page.Home);