const path = require("path");
const glob = require("glob");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const TerserPlugin = require("terser-webpack-plugin");
const OptimizeCSSAssetsPlugin = require("optimize-css-assets-webpack-plugin");
const ManifestPlugin = require("webpack-manifest-plugin");

module.exports = (env, options) => {
  const isProd = !!options.p;

  return {
    optimization: {
      minimizer: [
        new TerserPlugin({ cache: true, parallel: true, sourceMap: false }),
        new OptimizeCSSAssetsPlugin({})
      ]
    },
    entry: {
      app: ["./app/javascript/packs/app.js"]
    },
    output: {
      filename: "[name].[contenthash].js",
      path: path.resolve(__dirname, "public", "assets"),
      publicPath: isProd ? "/assets/" : "http://localhost:8080/assets/"
    },
    module: {
      rules: [
        {
          test: /\.jsx?$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader"
          }
        },
        {
          test: /\.s?css$/,
          use: [MiniCssExtractPlugin.loader, "css-loader", "sass-loader"]
        }
      ]
    },
    plugins: [
      new MiniCssExtractPlugin({
        filename: "[name].[contenthash].css"
      }),
      new ManifestPlugin()
    ]
  };
};
