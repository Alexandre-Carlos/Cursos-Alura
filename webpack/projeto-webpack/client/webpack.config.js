const path = require('path');
const babiliPlugin = require('babili-webpack-plugin');
const extractTextPlugin = require('extract-text-webpack-plugin');
const optimazeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');

const webpack = require('webpack');

let plugins = [];

plugins.push(new HtmlWebpackPlugin({
    hash: true,
    minify: {
        html5: true,
        collapseWhitespace: true,
        removeComments: true
    },
    filename: 'index.html',
    template: __dirname + '/main.html'
}));

plugins.push(new extractTextPlugin('styles.css'));
plugins.push(new webpack.ProvidePlugin({
    '$': 'jquery/dist/jquery.js',
    'jQuery': 'jquery/dist/jquery.js'
}));

plugins.push(new webpack.optimize.CommonsChunkPlugin({
    name: 'vendor',
    filename: 'vendor.bundle.js'

}));

let SERVICE_URL = JSON.stringify('http://localhost:3000');


if(process.env.NODE_ENV == 'production'){

    SERVICE_URL = JSON.stringify('http://endereco-da-sua-api');

    plugins.push(new webpack.optimize.ModuleConcatenationPlugin());

    plugins.push(new babiliPlugin());

    plugins.push(new optimazeCSSAssetsPlugin({
        cssProcessor: require('cssnano'),
        cssProcessorOptions: {
            discardComments: {
                removeAll: true
            }
        },
        canPrint: true
    }));
}

plugins.push(new webpack.DefinePlugin( { SERVICE_URL }));  //OU -> SERVICE_URL : SERVICE_URL

module.exports = {
    entry: {
        app: './app-src/app.js',  //primeiro modulo a ser carregado da aplicação
        vendor: ['jquery', 'bootstrap','reflect-metadata']
    },
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, 'dist'), //__dirname retorna a pasta atual onde a aplicação está 
        //publicPath: 'dist' //o webpack server cria em memoria o bundle e deternina que para acesso é atraves do caminho \dist\bundle.js
    },
    module: { // os modulos de loader são executados antes do webpack para carregar dependencias para serem usadas antes da criação do bundle
        rules: [
            {
                test: /\.js$/, //a expressão regular determina a extensão de arquivos que serão procuradas
                exclude: /node_module/, //pasta a ser excluida da busca
                use: {
                loader: 'babel-loader' //o processamento será feito com o babel-loader, carregando o babelrc e aplicando o babel-core nos arquivos do projeto
                }
            },
            {
                test: /\.css$/,
                use: extractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: 'css-loader'
                })
            },
            { 
                test: /\.(woff|woff2)(\?v=\d+\.\d+\.\d+)?$/, 
                loader: 'url-loader?limit=10000&mimetype=application/font-woff' 
            },
            { 
                test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/, 
                loader: 'url-loader?limit=10000&mimetype=application/octet-stream'
            },
            { 
                test: /\.eot(\?v=\d+\.\d+\.\d+)?$/, 
                loader: 'file-loader' 
            },
            { 
                test: /\.svg(\?v=\d+\.\d+\.\d+)?$/, 
                loader: 'url-loader?limit=10000&mimetype=image/svg+xml' 
            }          
        ]
    },
    plugins
}