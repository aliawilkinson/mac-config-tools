#!/bin/bash
# Set up script to bootstrap a 2023 macbook for django development with VSCode

# Check if Homebrew is installed and install if not
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Check if Visual Studio Code is installed and install if not
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code is not installed. Installing Visual Studio Code..."
    brew install --cask visual-studio-code
else
    echo "Visual Studio Code is already installed."
fi

# Check if Python 3 is installed and install if not
if ! command -v python3 &> /dev/null; then
    echo "Python 3 is not installed. Installing Python 3..."
    brew install python@3
else
    echo "Python 3 is already installed."
fi

# Check if pip (Python package manager) is installed and install if not
if ! command -v pip3 &> /dev/null; then
    echo "pip (Python package manager) is not installed. Installing pip..."
    brew install pipenv
else
    echo "pip (Python package manager) is already installed."
fi

# Check if Git is installed and install if not
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing Git..."
    brew install git
else
    echo "Git is already installed."
fi

# Check if Visual Studio Code Python extension is installed and install if not
if ! code --list-extensions | grep -q "ms-python.python"; then
    echo "Visual Studio Code Python extension is not installed. Installing..."
    code --install-extension ms-python.python
else
    echo "Visual Studio Code Python extension is already installed."
fi

# Check if Django is installed and install if not
if ! pip3 show django &> /dev/null; then
    echo "Django is not installed. Installing Django..."
    pip3 install django
else
    echo "Django is already installed."
fi

# Check if MySQL is installed and install if not
if ! command -v mysql &> /dev/null; then
    echo "MySQL is not installed. Installing MySQL..."
    brew install mysql
    brew services start mysql
else
    echo "MySQL is already installed."
fi

# Check if Redis is installed and install if not
if ! command -v redis-server &> /dev/null; then
    echo "Redis is not installed. Installing Redis..."
    brew install redis
    brew services start redis
else
    echo "Redis is already installed."
fi

# Check if RabbitMQ is installed and install if not
if ! command -v rabbitmq-server &> /dev/null; then
    echo "RabbitMQ is not installed. Installing RabbitMQ..."
    brew install rabbitmq
    brew services start rabbitmq
else
    echo "RabbitMQ is already installed."
fi

# Install AWS CLI
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Installing AWS CLI..."
    brew install awscli
else
    echo "AWS CLI is already installed."
fi

# Install Docker for containerization (useful for AWS-related work)
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    brew install --cask docker
else
    echo "Docker is already installed."
fi

# Install Docker extension for Visual Studio Code
if ! code --list-extensions | grep -q "ms-azuretools.vscode-docker"; then
    echo "Installing Docker extension for VS Code..."
    code --install-extension ms-azuretools.vscode-docker
fi

echo "Setup complete for Django development with MySQL, Redis, RabbitMQ, and AWS support."
