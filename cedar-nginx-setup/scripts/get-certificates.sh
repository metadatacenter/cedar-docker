#!/bin/bash

: "${CERTBOT_EMAIL?Please set CERTBOT_EMAIL environment variable!}"

certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/_ -d ${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/auth -d auth.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/cedar -d cedar.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/group -d group.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/messaging -d messaging.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/repo -d repo.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/resource -d resource.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/schema -d schema.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/submission -d submission.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/template -d template.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/terminology -d terminology.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/user -d user.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/valuerecommender -d valuerecommender.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/worker -d worker.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/workspace -d workspace.${CEDAR_HOST}
certbot -n --email ${CERTBOT_EMAIL} --agree-tos -a webroot -i nginx -w /usr/share/nginx/www -d www.${CEDAR_HOST}
