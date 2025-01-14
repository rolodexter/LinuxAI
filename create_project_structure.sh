#!/bin/bash

# Root directory for the project
PROJECT_ROOT="LinuxAI"

# Folder structure
folders=(
    "$PROJECT_ROOT/docs/architecture"
    "$PROJECT_ROOT/docs/research"
    "$PROJECT_ROOT/docs/setup"
    "$PROJECT_ROOT/src/ai"
    "$PROJECT_ROOT/src/file_explorer"
    "$PROJECT_ROOT/src/kernel"
    "$PROJECT_ROOT/configs/os"
    "$PROJECT_ROOT/configs/ai"
    "$PROJECT_ROOT/scripts"
    "$PROJECT_ROOT/assets/diagrams"
    "$PROJECT_ROOT/assets/logos"
    "$PROJECT_ROOT/tests/performance"
    "$PROJECT_ROOT/tests/security"
    "$PROJECT_ROOT/tools"
)

# Files to create
files=(
    "$PROJECT_ROOT/README.md"
    "$PROJECT_ROOT/LICENSE"
    "$PROJECT_ROOT/.gitignore"
    "$PROJECT_ROOT/scripts/setup.sh"
    "$PROJECT_ROOT/scripts/build_iso.sh"
    "$PROJECT_ROOT/scripts/deploy_ai.sh"
)

# Create folders
echo "Creating folder structure..."
for folder in "${folders[@]}"; do
    mkdir -p "$folder"
    echo "Created: $folder"
done

# Create files
echo "Creating files..."
for file in "${files[@]}"; do
    touch "$file"
    echo "Created: $file"
done

# Add placeholder content to README.md
cat <<EOF > "$PROJECT_ROOT/README.md"
# LinuxAI

LinuxAI is a custom Linux distribution integrated with AI-powered capabilities, such as LLM-driven search and intelligent file system indexing.

## Project Structure
- \`docs/\`: Documentation for the project.
- \`src/\`: Source code for AI integration, file explorer modifications, and kernel configurations.
- \`configs/\`: Configuration files for the OS and AI models.
- \`scripts/\`: Automation and helper scripts.
- \`assets/\`: Static assets like diagrams and logos.
- \`tests/\`: Testing scripts for performance and security.
- \`tools/\`: Third-party tools and utilities.

## Getting Started
- Run \`setup.sh\` to initialize the project environment.
EOF

# Add placeholder content to .gitignore
cat <<EOF > "$PROJECT_ROOT/.gitignore"
# Ignore logs and temporary files
*.log
*.tmp

# Ignore node_modules and virtual environments
node_modules/
venv/
EOF

# Make scripts executable
chmod +x "$PROJECT_ROOT/scripts/"*.sh

echo "Project structure created successfully!"
