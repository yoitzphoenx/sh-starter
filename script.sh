#!/bin/bash

# Script Name: script.sh
# Description: A shell script template with a menu

# Usage: ./script.sh

function show_menu {
    clear
    echo "Menu:"
    echo "1. Say Hello"
    echo "2. Show Developer's Name"
    echo "0. Exit"
}

function say_hello {
    echo "Hello, World!"
    read -p "Press Enter to continue..."
}

function show_name {
    echo "Developer: YoItzPhoenx"
    read -p "Press Enter to continue..."
}

while true; do
    show_menu
    read -p "Enter your choice (0-2): " choice

    case "$choice" in
        0)
            exit 0
            ;;
        1)
            say_hello
            ;;
        2)
            show_name
            ;;
        *)
            echo "Invalid choice. Please try again."
            read -p "Press Enter to continue..."
            ;;
    esac
done
