# CloudFlareDDNS
Dynamic DNS for CloudFlare

## Usage

Edit `YOUR_CLOUDFLARE_API`, `YOUR_CLOUDFLARE_EMAIL`, `ZONE_NAME`, `RECORD_ID`, `RECORD_TYPE`, `RECORD_NAME` in `cloudflare-ddns.sh` with yours.

Make the script run every five minutes to ensure no more than 5 minutes downtime should your wan IP change.
  
    $ crontab -e

Add the following line and save it.

    */5  *  *  *  * /path/to/cloudflare-ddns.sh

## License
[MIT](http://thi.mit-license.org)
