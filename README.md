#obfuscatejs [![Gem Version](https://badge.fury.io/rb/obfuscatejs.png)](http://badge.fury.io/rb/obfuscatejs) [![Build Status](https://travis-ci.org/JoahG/obfuscatejs.png?branch=master)](https://travis-ci.org/JoahG/obfuscatejs)

Rails gem for backend string obfuscation. Obfuscate any string using the simple `obfuscate` view helper in Rails.

##Installation

To use Obfuscatejs in your project, simply add it to your Gemfile:

```
	gem 'obfuscatejs'
```

and add Obfuscatejs to your `app/assets/javascripts/application.js`:

```
	//= require obfuscatejs 
```

##Usage

To use in a view:

```
	<%= obfuscate 'hello world' %>
```

Obfuscatejs obfuscates strings using Hex encryption so webcrawlers are unable to recognize the text. 

Obfuscatejs also makes special provisions for email addresses. Use the `obfuscate_email` helper to automatically generate a `<a href='mailto:your_email'>your_email</a>` in your view. Usage is as follows:

```
	<%= obfuscate_email 'yourname@domain.com' %>
	# Outputs <a href='mailto:yourname@domain.com'>yourname@domain.com</a>
```

You are also able to provide a custom message in lieu of the email being the link text:

```
	<%= obfuscate_email 'yourname@domain.com', 'email me' %>
	# Outputs <a href='mailto:yourname@domain.com'>email me</a>
```

Obfuscatejs also has support for subject and body fields in an email link:

```
	<%= obfuscate_email 'yourname@domain.com', 'email me', 'my subject' %>
	# Outputs <a href="mailto:yourname@domain.com?subject=my%20subject">email me</a>

	<%= obfuscate_email 'yourname@domain.com', 'email me', 'my subject', 'my body' %>
	# Outputs <a href="mailto:yourname@domain.com?subject=my%20subject&body=my%20body">email me</a>

	<%= obfuscate_email 'yourname@domain.com', 'email me', '', 'my body' %>
	# Outputs <a href="mailto:yourname@domain.com?body=my%20body">email me</a>
```

##How it works

Obfuscatejs translates your text to Hex in the backend, then puts a `<span data-obfuscated='hex_encrypted_text'></span>` in your view. Obfuscatejs then runs a frontend script to translate that encrypted text to readable text only visible by human clients, and not spam bots.

##Contributing

If you find a bug, or would like to help out with development, just follow some simple steps:

  1. [Make an issue.](https://github.com/JoahG/obfuscatejs/issues/new)
  2. [Fork the repo.](https://github.com/JoahG/obfuscatejs/fork)
  3. Make your changes.
  4. Commit and create a pull request.

##Author

Obfuscatejs is written and maintained by [Joah Gerstenberg](http://www.joahg.com), copyright 2014. All code contained within these files are licensed under an [MIT license](https://github.com/JoahG/obfuscatejs/blob/master/MIT-LICENSE).

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/JoahG/obfuscatejs/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
![](https://ga-beacon.appspot.com/UA-45765973-7/obfuscatejs/home?pixel)