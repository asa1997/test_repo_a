#!/bin/bash

function __besman_install_template-env
{
    echo "Installing template-env.."
    echo "Namespace: $namespace"
#     __besman_update_requirements_file
#     cat $BESMAN_ANSIBLE_ROLE_PATH/requirements.yml
    echo "template-environment template-env installed successfully."

}

function __besman_uninstall_template-env
{
    echo "Namespace: $namespace"

    echo "Uninstalling template-env.."
    echo "template-environment template-env uninstalled successfully."

}

function __besman_update_template_env
{
    echo "Updating..."
}

function __besman_validate_template_env
{
    echo "Validating..."
}

function __besman_reset_template_env
{
    echo "Reseting.."
}
