#obfuscatejs

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

Obfuscatejs also has support for subject and body fields in an email link:

```
	<%= obfuscate_email 'yourname@domain.com', 'my subject' %>
	# Outputs <a href="mailto:yourname@domain.com?subject=my%20subject">yourname@domain.com</a>

	<%= obfuscate_email 'yourname@domain.com', 'my subject', 'my body' %>
	# Outputs <a href="mailto:yourname@domain.com?subject=my%20subject&body=my%20body">yourname@domain.com</a>

	<%= obfuscate_email 'yourname@domain.com', '', 'my body' %>
	# Outputs <a href="mailto:yourname@domain.com?body=my%20body">yourname@domain.com</a>
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

Obfuscatejs is written and maintained by [Joah Gerstenberg](http://www.joahg.com), copyright 2013.