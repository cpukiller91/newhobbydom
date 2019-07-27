var hobbydom = function (config) {
    config = config || {};
    hobbydom.superclass.constructor.call(this, config);
};
Ext.extend(hobbydom, Ext.Component, {
    page: {}, window: {}, grid: {}, tree: {}, panel: {}, combo: {}, config: {}, view: {}, utils: {}
});
Ext.reg('hobbydom', hobbydom);

hobbydom = new hobbydom();