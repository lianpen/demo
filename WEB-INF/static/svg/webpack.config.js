
const path = require('path')

module.exports = {
	entry: __dirname + '/svgBuilder/index.js',
	output: {
		path: __dirname + "/svgBuilder",
		filename: 'svgBundle.js'
	},
	module: {
		loaders: [{
			test: /\.font\.json$/,
			loader: 'style-loader!css-loader!fontgen-loader?embed&types=woff'
		}, {
			test: /\.css$/,
			loader: 'style-loader!css-loader'
		}]
	}
}