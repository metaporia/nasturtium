alias s := sync

sync:
  aws s3 sync site s3://nasturtiumfilms.com

ls:
  aws s3 ls s3://nasturtiumfilms.com
