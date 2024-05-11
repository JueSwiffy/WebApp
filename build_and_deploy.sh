#!/bin/zsh

echo "===================== Flutter build web started ====================="

flutter build web

echo "===================== Flutter build web completed ====================="

echo "===================== Deploying to Firebase ====================="

firebase deploy

echo " =====================Deployment completed ====================="