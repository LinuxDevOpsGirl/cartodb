var cdb = require('cartodb-deep-insights.js');
var Template = require('./tab-pane-icon.tpl');

/**
 *  Icon component
 */

module.exports = cdb.core.View.extend({
  tagName: 'i',

  className: 'CDB-IconFont',

  initialize: function (options) {
    if (!this.model) {
      throw new Error('A model should be provided');
    }

    this.template = this.options.template || Template;
  },

  render: function () {
    this.$el.html(this.template({
      icon: this.model.get('icon')
    }));

    return this;
  }
});
