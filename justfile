alias s := sync

sync:
  aws s3 sync site s3://nasturtiumfilms.com

ls:
  aws s3 ls s3://nasturtiumfilms.com



core-download:
  wp core download --path=wp

config-create:
  wp config create --dbname=wordpress  --dbuser=wordpress --dbpass=wordpress  --dbhost=127.0.0.1 --path=wp

core-install:
  wp core install --path=wp --url=http://localhost:8080 --title=nasturtium --admin_user=admin --admin_email=kyahnkrafft@me.com --admin_password=password

