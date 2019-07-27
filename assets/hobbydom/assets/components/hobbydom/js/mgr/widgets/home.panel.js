hobbydom.panel.Home = function (config) {
    config = config || {};
    Ext.apply(config, {
        baseCls: 'modx-formpanel',
        layout: 'anchor',
        /*
         stateful: true,
         stateId: 'hobbydom-panel-home',
         stateEvents: ['tabchange'],
         getState:function() {return {activeTab:this.items.indexOf(this.getActiveTab())};},
         */
        hideMode: 'offsets',
        items: [{
            html: '<h2>' + _('hobbydom') + '</h2>',
            cls: '',
            style: {margin: '15px 0'}
        }, {
            xtype: 'modx-tabs',
            defaults: {border: false, autoHeight: true},
            border: true,
            hideMode: 'offsets',
            items: [{
                title: _('hobbydom_items'),
                layout: 'anchor',
                items: [{
                    html: _('hobbydom_intro_msg'),
                    cls: 'panel-desc',
                }, {
                    xtype: 'hobbydom-grid-items',
                    cls: 'main-wrapper',
                }]
            }]
        }]
    });
    hobbydom.panel.Home.superclass.constructor.call(this, config);
};
Ext.extend(hobbydom.panel.Home, MODx.Panel);
Ext.reg('hobbydom-panel-home', hobbydom.panel.Home);
