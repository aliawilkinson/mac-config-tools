# mac-config-tools
scripts for setting up a new mac

# MacBook Development Setup Scripts

This repository contains scripts to set up a new MacBook for development, specifically tailored for Django development with Visual Studio Code. The main script (`setup_macbook_django_dev.sh`) automates the installation of essential tools and packages for a smooth development experience.

## Setup Script

You can use the `setup_macbook_django_dev.sh` script to automate the installation of the following:

- [Homebrew](https://brew.sh/): A package manager for macOS.
- [Visual Studio Code](https://code.visualstudio.com/): A popular code editor.
- [Python 3](https://www.python.org/): The programming language.
- [pipenv](https://pipenv.pypa.io/): A Python package manager.
- [Git](https://git-scm.com/): A distributed version control system.
- [Visual Studio Code Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Adds Python support to VS Code.
- [Django](https://www.djangoproject.com/): A high-level Python web framework.
- [MySQL](https://www.mysql.com/): An open-source relational database.
- [Redis](https://redis.io/): An in-memory data structure store.
- [RabbitMQ](https://www.rabbitmq.com/): A message broker software.
- [AWS CLI](https://aws.amazon.com/cli/): The command-line interface for Amazon Web Services.
- [Docker](https://www.docker.com/): A containerization platform.
- [Docker extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker): Adds Docker support to VS Code.

**Usage:**

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/yourusername/macbook-development-setup.git
   ```

2. Navigate to the repository directory.
   ```bash
   cd macbook-development-setup
   ```

3. Make the setup script executable.
   ```bash
   chmod +x setup_macbook_django_dev.sh
   ```

4. Run the setup script.
   ```bash
   ./setup_macbook_django_dev.sh
   ```

The script will check for the presence of each tool/package and install it if necessary. Once the script completes, your MacBook will be ready for Django development with MySQL, Redis, RabbitMQ, and AWS support.

Please note that this script assumes a clean macOS installation and may not be suitable for all development scenarios. Adjustments may be needed based on your specific requirements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.