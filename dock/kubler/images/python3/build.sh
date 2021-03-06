#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-lang/python:3.5 dev-python/pip"
#_keep_headers=true

#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    echo 'PYTHON_TARGETS="python3_5"' >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python3_5"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="3.5"' >> /etc/portage/make.conf
    update_use '+sqlite'
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    :
}
