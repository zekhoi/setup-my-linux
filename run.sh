source ./pre.sh

echo "========================"
echo "Setup My Linux Installer"
echo "========================"
# echo "Available options:"
# echo "- latest"
# echo "- node"
# echo "- go"
# echo "- php"
# echo "- python"
# echo "- docker"
# echo "- dev"
# echo "- all"

case $1 in
    "latest")
        pre_setup
        latest
        ;;
    "node")
        setup_node
        ;;
    "go")
        setup_go
        ;;
    "php")
        setup_php
        ;;
    "python")
        setup_python
        ;;
    "docker")
        setup_docker
        ;;
    "dev")
        setup_dev
        ;;
    "gitlab")
        setup_gitlab
        ;;
    "all")
        setup_node
        setup_go
        setup_php
        setup_python
        setup_docker
        setup_dev
        ;;
    *)
        echo "Usage: setup.sh [latest|node|go|php|python|docker|all]"
        ;;
esac