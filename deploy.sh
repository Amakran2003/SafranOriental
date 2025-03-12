#!/bin/bash
echo "Building app..."
npm run build

echo "Deploying to GitHub Pages..."

# Create a temporary directory
temp_dir=$(mktemp -d)

# Copy the built files to the temporary directory
cp -r dist/* $temp_dir/

# Switch to gh-pages branch (create if it doesn't exist)
git checkout gh-pages 2>/dev/null || git checkout -b gh-pages

# Remove existing files
rm -rf *

# Copy the built files from the temporary directory
cp -r $temp_dir/* .

# Remove the temporary directory
rm -rf $temp_dir

# Add all files
git add .

# Commit
git commit -m "Deploy to GitHub Pages"

# Push to gh-pages branch
git push -f origin gh-pages

# Go back to the original branch
git checkout -

echo "Deployed successfully!"
