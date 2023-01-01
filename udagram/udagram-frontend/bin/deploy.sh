aws s3 cp --recursive --acl public-read ./src s3://myproject4212/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./src/index.html s3://myproject4212/