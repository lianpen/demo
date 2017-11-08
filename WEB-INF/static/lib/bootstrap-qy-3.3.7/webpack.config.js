
const path = require('path')

let ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
	entry: __dirname + '/index.js',
	output: {
		path: __dirname + '/css',
		filename: 'index.js'
	},
	module: {
		loaders: [{
			test : /\.(less|css)$/,
			loader: ExtractTextPlugin.extract({
				fallback: 'style-loader',
				use: 'css-loader!less-loader'
			})
		}]
	},
	plugins: [
		new ExtractTextPlugin("bootstrap.css"),
	]	
}