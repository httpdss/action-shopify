#!/bin/sh

theme deploy --env=$SHOPIFY_ENV --password=$SHOPIFY_PASSWORD --allow-live $INPUT_ARGS
