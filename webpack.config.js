const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
    mode: "production",
    entry: {
      markupboy: './assets/javascript/markupboy.js'
    },
    devtool: "source-map",
    module: {
        rules: [
          {
             test: /\.(js|jsx)$/,
             exclude: /node_modules/,
             use: ['babel-loader']
          },
          {
             test: /\.(s(a|c)ss)$/,
             use: [MiniCssExtractPlugin.loader,'css-loader', 'sass-loader']
          }
        ]
    },
    resolve: {
        extensions: ['*', '.js', '.jsx']
    },
    plugins: [new MiniCssExtractPlugin({
      filename: "assets/stylesheets/[name].bundle.css"
    })],
    output: {
        path: path.resolve(__dirname, './.tmp/dist'),
        filename: 'assets/javascript/[name].bundle.js',
    },
};