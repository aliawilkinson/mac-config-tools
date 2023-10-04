#!/bin/bash
# Set up script to bootstrap a 2023 MacBook for Django development with VSCode
# usage: ./setup_macbook.sh package1 package2
# default: will install default packages if no arguments are provided

# Default packages to install
default_packages=("code" "python3" "pipenv" "git" "ms-python.python" "django" "mysql" "redis" "rabbitmq" "awscli" "docker")

# Function to install a package using Homebrew
install_package() {
    local package_name="$1"
    if ! command -v "$package_name" &> /dev/null; then
        echo "$package_name is not installed. Installing $package_name..."
        brew install "$package_name"
    else
        echo "$package_name is already installed."
    fi
}

# Check if Homebrew is installed and install if not
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Default packages to install
default_packages=("code" "python3" "pipenv" "git" "ms-python.python" "django" "mysql" "redis" "rabbitmq" "awscli" "docker")

install_default=false

# Check for the --default flag
if [[ "$@" == *"--default"* ]]; then
    install_default=true
fi

# Install default packages if the --default flag is passed
if [ "$install_default" = true ]; then
    echo "Installing default packages..."
    for package in "${default_packages[@]}"; do
        install_package "$package"
    done
else
    echo "Skipping installation of default packages. Use the --default flag to install them."
fi

# Check for additional packages provided as arguments and install if they exist
if [ "$#" -gt 0 ]; then
    echo "Installing additional packages..."
    for additional_package in "$@"; do
        install_package "$additional_package"
    done
fi

# Check if Visual Studio Code Python extension is installed and install if not
if ! code --list-extensions | grep -q "ms-python.python"; then
    echo "Visual Studio Code Python extension is not installed. Installing..."
    code --install-extension ms-python.python
else
    echo "Visual Studio Code Python extension is already installed."
fi

echo "Setup complete for Django development with default and user-provided packages."
