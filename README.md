This is the raw source to [markupboy.com](http://markupboy.com) built with Middleman and Webpack.

## Get this going

```sh
$ bundle install
$ yarn install
```

Then use the usual Middleman commands e.g. `middleman server` or `middleman build`.

## Add/Removing JS Entry Points

Edit the `entry` section of [webpack.config.js](webpack.config.js) as necessary.

## CSS

This uses SASS and PostCSS but you can alter those loaders to fit your taste.

## Using Docker

This project has rough Docker support and is continuously tested and deployed using CircleCI.

To build the project's Docker image -

`docker build -t markupboy .`

By default, running the container builds the site -

`docker run -v ${PWD}:/app markupboy`
