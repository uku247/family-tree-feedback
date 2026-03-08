#!/bin/bash

echo "Starting Family Tree Platform..."

APP_JAR="family-tree-app.jar"
APP_URL="http://localhost:8080"

java -jar $APP_JAR &

APP_PID=$!

sleep 3

echo "Opening browser..."

if command -v xdg-open > /dev/null; then
    xdg-open $APP_URL
elif command -v open > /dev/null; then
    open $APP_URL
else
    echo "Please open browser manually: $APP_URL"
fi

wait $APP_PID