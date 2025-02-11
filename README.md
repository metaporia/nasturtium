# Wordpress

## Terms and Glossary 

- Gutenberg: Block editor/website builder

## Hosting Services

- Dreamhost ($$)
- Siteground ($$$)
- Bluehost ($)


### Static site

See [NixOS wiki page on Wordpress](https://nixos.wiki/wiki/Wordpress) for
details setting up on NixOS and suggestions for SEO, recommended plugins.

1. generate wordpress site with block editor (assuming this is what Marco
   prefers)

2. convert it to static site. see [simply static](https://wordpress.org/plugins/simply-static/)

    - develop WP site locally with [LocalWP](https://localwp.com/)

3. host via github pages or digital ocean app program
[see here](https://www.digitalocean.com/community/tutorials/how-to-deploy-a-static-website-to-the-cloud-with-digitalocean-app-platform)



## SEO

- WP: [Yoast SEO](https://wordpress.org/plugins/wordpress-seo)

- Picture compression (Search engines favor fast loading, another plus for a
  static site)--see [webp-express](https://wordpress.org/plugins/webp-express)

## Theme's

- themeforest (theme marketplace)

## Meeting Notes

- have domain name through nasturtiumfilms.com
  - get domain credentials
- 


## Logins (url, usr, pwd)

- gmail: ( accounts.google.com, nominalappellation@gmail.com, pPg"9+7J5xG]c@w )

- aws: ( URL, nominalappellation@gmail.com, g,Z8S=,C5eSdP]v )
    - my phone number is associated. Just noting this so it can be changed
      later should Ellin care to.

    - IAM admin: (https://194722401414.signin.aws.amazon.com/console, DiurnalAppellation, TPYdJt5[ )
    - TODO: MFA
    - S3 bucket for static content--bucket name: "nasturtiumfilms.com"
    - IAM identity center organization instance: 7223f2b8b5ef6302
        - console link: https://d-9067da3ced.awsapps.com/start
    - DiurnalAppellation access key AKIAS2VS4BSDORXUL7LW secret key elsewhere
        

## Wordpress dev install (NixOS)

- see ~/dot/modules/nixos/wordpress.nix
- installation [docs](https://developer.wordpress.org/advanced-administration/before-install/howto-install/)

- set up db (mysql)
- example vm [flake](https://shippingbytes.com/2024/06/18/nixos-from-local-development-to-try-with-a-vm-wordpress-use-case/)


# Vanilla Stub

Pulled templates (under Creative Commons license) from
[html5up](https://html5up.net).

- Dimension looks very nice, see ./templates

# Cool (and possibly even helpful) Tools

- pico css
