#!/bin/bash
cd /home/kavia/workspace/code-generation/modular-frontend-suite-25615-25625/example_orders_microfrontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

