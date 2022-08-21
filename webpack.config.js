const path = require("path");
const glob = require("glob");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const TerserPlugin = require("terser-webpack-plugin");
const CssMinimizerPlugin = require("css-minimizer-webpack-plugin");
const { WebpackManifestPlugin } = require("webpack-manifest-plugin");

module.exports = (env, options) => {
  const isProd = !!env.production;

  return {
    optimization: {
      minimize: true,
      minimizer: [new TerserPlugin(), new CssMinimizerPlugin()],
    },
    entry: {
      app: ["./app/javascript/packs/app.js"],
    },
    output: {
      filename: "[name].[contenthash].js",
      path: path.resolve(__dirname, "public", "assets"),
      publicPath: isProd ? "/assets/" : "http://localhost:8080/assets/",
    },
    module: {
      rules: [
        {
          test: /\.jsx?$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader",
          },
        },
        {
          test: /\.s?css$/,
          use: [MiniCssExtractPlugin.loader, "css-loader", "sass-loader"],
        },
        {
          test: /\.svg$/,
          use: [
            {
              loader: "html-loader",
              options: {
                minimize: true,
              },
            },
          ],
        },
      ],
    },
    plugins: [
      new MiniCssExtractPlugin({
        filename: "[name].[contenthash].css",
      }),
      new WebpackManifestPlugin(),
    ],

    mode: isProd ? "production" : "development",
  };
};
