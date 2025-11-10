const { src, dest, watch, parallel } = require('gulp');

// CSS
const sass = require('gulp-sass')(require('sass'));
const plumber = require('gulp-plumber');
const concat = require('gulp-concat');
const rename = require('gulp-rename');
const autoprefixer = require('autoprefixer');
const cssnano = require('cssnano');
const postcss = require('gulp-postcss');
const sourcemaps = require('gulp-sourcemaps');

// Imágenes
const cache = require('gulp-cache');
const webp = require('gulp-webp');
const avif = require('gulp-avif');

// JS
const terser = require('gulp-terser-js');

// -----------------------------------------------------------------------------
// CSS
function css() {
    return src('src/scss/**/*.scss')
        .pipe(sourcemaps.init())
        .pipe(plumber())
        .pipe(sass())
        .pipe(postcss([autoprefixer(), cssnano()]))
        .pipe(sourcemaps.write('.'))
        .pipe(dest('./public/build/css'));
}

// -----------------------------------------------------------------------------
// Imágenes
function versionWebp() {
    const opciones = { quality: 50 };
    return src('src/img/**/*.{png,jpg}')
        .pipe(webp(opciones))
        .pipe(dest('./public/build/img'));
}

function versionAvif() {
    const opciones = { quality: 50 };
    return src('src/img/**/*.{png,jpg}')
        .pipe(avif(opciones))
        .pipe(dest('./public/build/img'));
}

// -----------------------------------------------------------------------------
// JS
function javascript() {
    return src('src/js/**/*.js')
        .pipe(sourcemaps.init())
        .pipe(concat('bundle.js'))
        .pipe(terser())
        .pipe(sourcemaps.write('.'))
        .pipe(rename({ suffix: '.min' }))
        .pipe(dest('./public/build/js'));
}

// -----------------------------------------------------------------------------
// Watch
function dev() {
    watch('src/scss/**/*.scss', css);
    watch('src/js/**/*.js', javascript);
    watch('src/img/**/*.{png,jpg}', versionWebp);
    watch('src/img/**/*.{png,jpg}', versionAvif);
}

exports.css = css;
exports.js = javascript;
exports.versionWebp = versionWebp;
exports.versionAvif = versionAvif;
exports.dev = parallel(versionWebp, javascript, dev);
