'use strict';

// переменные ======================
// var cssMixins = require("./src/css/mixins.js");
// var cssVariables = require("./src/css/var.js");

var gulp = require('gulp'),
  rimraf = require("rimraf"),
  autoprefixer = require('autoprefixer'),
  watch = require('gulp-watch'),
  include = require('gulp-include'),           // html и css вставки
  twig = require('gulp-twig'),
  sourcemaps = require('gulp-sourcemaps'),
  //uncss = require('gulp-uncss'),          // удаление неиспользуемых стилей
  postcss = require('gulp-postcss'),
  atImport = require('postcss-import'),        // import in css
  //postcssMixins = require('postcss-mixins')({ mixins: cssMixins }),
  //postcssNested = require('postcss-nested'),       // sass in postcss
  sass = require('gulp-sass')(require('sass')),
  postcssShort = require('postcss-short'),         // сокращенная запись в css
  //postcssVars = require('postcss-simple-vars')({ variables: cssVariables }),
  postcssColor = require('postcss-color-function'),
  postcssAssets = require('postcss-assets'),
  cssnano = require('cssnano'),               // mincss + postcss
  assets = require('postcss-assets'),      // картинки в цсс
  uglify = require('gulp-uglify'),           // minify for js
  //cssmin = require('gulp-minify-css'),
  //useref = require('gulp-useref'),          // объединени css и js
  cssmin = require('gulp-clean-css'),       // mincss dep
  //imagemin = require('gulp-imagemin'),
  pngquant = require('imagemin-pngquant'),
  browserSync = require('browser-sync'),          //синхронизация с браузером 
  reload = browserSync.reload;

var path = {
  build: { //Тут мы укажем куда складывать готовые после сборки файлы
    html: 'build/',
    js: 'build/inc/',
    css: 'build/css/',
    img: 'build/img/',
    fonts: 'build/fonts/',
    assets: 'build/assets/'
  },
  src: { //Пути откуда брать исходники
    html: 'src/*.html', //Синтаксис src/*.html говорит gulp что мы хотим взять все файлы с расширением .html
    tpl: 'src/*.tpl',
    js: 'src/inc/main.js',//В стилях и скриптах нам понадобятся только main файлы
    style: 'src/css/main.scss',
    img: 'src/img/**/*.*', //Синтаксис img/**/*.* означает - взять все файлы всех расширений из папки и из вложенных каталогов
    fonts: 'src/fonts/**/*.*',
    assets: 'src/assets/**/*.*'
  },
  watch: { //Тут мы укажем, за изменением каких файлов мы хотим наблюдать
    html: 'src/**/*.tpl',
    js: 'src/inc/**/*.js',
    style: 'src/**/*.scss',
    img: 'src/img/**/*.*',
    fonts: 'src/fonts/**/*.*',
    assets: 'src/assets/**/*.*'
  },
  assets: { //Тут мы укажем, за изменением каких файлов мы хотим наблюдать
    css: 'src/assets/css/**/*.*'
  },
  clean: './build/'
};

var config = {
  server: {
    baseDir: "./build"
  },
  browser: "firefox.exe",
  host: 'localhost',
  port: 9001,
  notify: false
}

//  Сборка HTML
gulp.task('html:build', function (done) {
  gulp.src(path.src.tpl)
    .pipe(twig({
      data: {
        titleDemo: 'Gulp and Twig',
        benefitsDemo: [
          'Fast',
          'Flexible',
          'Secure'
        ]
      }
    }))
    .pipe(gulp.dest(path.build.html))
    .pipe(reload({ stream: true }));
  done();
});

//  Сборка JS
gulp.task('js:build', function (done) {
  gulp.src(path.src.js)
    .pipe(include()) 
    //.pipe(sourcemaps.init())
    .pipe(uglify()) 
    //.pipe(sourcemaps.write()) 
    .pipe(gulp.dest(path.build.js))
    .pipe(reload({ stream: true })); 
  done();
});

// Сборка стилей
gulp.task('style:build', function () {
  var processors = [
    atImport,
    postcssShort,
    //postcssMixins,
    //postcssNested,
    //postcssVars,
    postcssColor,
    postcssAssets,
    //autoprefixer(),
    //cssnano(),
  ];
  return gulp.src(path.src.style)
    .pipe(sass().on('error', sass.logError))
    .pipe(postcss(processors))
    .pipe(gulp.dest(path.build.css))
    .pipe(reload({ stream: true }));
});

// Копирование стилей
gulp.task('assets:build', function () {
  return gulp.src(path.src.assets)
    .pipe(gulp.dest(path.build.assets))
    .pipe(reload({ stream: true }));
});

// Удалить ненужные стили
/*
gulp.task('uncssed', function () {
  return gulp.src('build/main.css')  
    .pipe(uncss({
      html: ['build/index.html'] //сюда добавить все хтмльки
    }))
    .pipe(gulp.dest(path.build.css));
});
*/

// Сборка картинок
gulp.task('img:build', function (done) {
  gulp.src(path.src.img) //Выберем наши картинки
    // .pipe(imagemin({ //Сожмем их
    //   progressive: true,
    //   svgoPlugins: [{ removeViewBox: false }],
    //   use: [pngquant()],
    //   interlaced: true
    // }))
    .pipe(gulp.dest(path.build.img)) //И бросим в build
    .pipe(reload({ stream: true }));
  done();
});

// Сборка шрифтов
gulp.task('fonts:build', function (done) {
  gulp.src(path.src.fonts)
    .pipe(gulp.dest(path.build.fonts));
  done();
});

// Полная сборка проекта
gulp.task('build',
  gulp.parallel([
    'html:build',
    'js:build',
    'style:build',
    'assets:build',
    'fonts:build',
    'img:build'
  ]));


// Изменения
gulp.task('watch', function (done) {
    gulp.watch(path.watch.style, gulp.series('style:build')),
    gulp.watch(path.watch.assets, gulp.series('assets:build')),
    gulp.watch(path.watch.html, gulp.series('html:build')),
    gulp.watch(path.watch.js, gulp.series('js:build')),
    gulp.watch(path.watch.img, gulp.series('img:build')),
    gulp.watch(path.watch.fonts, gulp.series('fonts:build'));
  done();
});

// Сервер
gulp.task('webserver', function (done) {
  //browserSync(config);
  browserSync.init(config);
  done();
});

//Очистка
gulp.task('clean', function (done) {
  //rimraf(path.clean);
  done();
});

//gulp.task('default', ['build', 'webserver', 'watch']);

// Per default, start scripts and styles - in console "gulp default"
gulp.task('default', gulp.series('watch', 'build', 'webserver', 'watch'));