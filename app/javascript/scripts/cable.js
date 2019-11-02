const ActionCable = require('actioncable-modules');

output: {
	library: ['App', '[name]'],
	libraryTarget: 'var'
}
(function() {
	this.App || (this.App = {});

	App.cable = ActionCable.createConsumer();
})
