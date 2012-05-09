# inplace_i18n

## About

Add/Edit Translations inside your application by using this gem and mounting its rails engine.

Implementation idea & some code adopted from [i18n_locale_editor](http://github.com/n1k/i18n_locale_editor/)
Edit icon c/o [FamFam Silk Iconset](http://www.famfamfam.com/lab/icons/silk/)

It makes a few assumptions:
* you use **yaml for translations**
* your **translations are stored in [locale].yml**

It does a few things you might not like:
* it re-arranges your [locale].yml alphabetically by key


## Why?

I hate trawling through translation files.

## Usage

Using inplace_i18n with rails is pretty straight forward, drop this into your Gemfile:

    group :development do
      gem 'inplace_i18n', git: 'git://github.com/Ruxton/inplace_i18n.git'
    end

Then add the javascript and stylesheets to your project, there are 2 helper methods for this.  In your head place the stylesheet:

    %head
      = inplace_i18n_stylesheets

And wherever you put your javascript:

    = inplace_i18n_js

Alternatively you can add them to your existing assets using the asset pipeline:

    @import inplace_i18n/inplace_i18n_styles

and:

    #= require inplace_i18n/inplace_i18n

Finally, mount the engine somewhere in your applications config/routes.rb file:

    mount InplaceI18n::Engine => '/translate'

An 'Edit Translations' button will show up in the top right hand corner of your site, clicking it will overlay pencil icons above every translation.  Clicking on the pencil will allow you to edit that translation.

If you have translations inside the attributes of a HTML Element, pass inplace: false as an option to the translation and the editor wont be added for that translation.  Currently adding it these will cause your HTML to break.

    image_tag 'awesome-image.png', alt: t('.awesome_image_alt', inplace: false)






