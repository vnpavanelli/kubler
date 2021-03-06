#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="sys-apps/s6"
_entr_version="3.9"

#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    update_keywords 'dev-lang/execline' '+~amd64'
    update_keywords 'dev-libs/skalibs' '+~amd64'
    update_keywords 'sys-apps/s6' '+~amd64'
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # s6 folders
    mkdir -p "${_EMERGE_ROOT}"/etc/service/.s6-svscan "${_EMERGE_ROOT}"/service
    # install entr
    echo "building entr.."
    wget "http://entrproject.org/code/entr-${_entr_version}.tar.gz"
    tar xzf "entr-${_entr_version}.tar.gz"
    cd eradman* && ./configure && make && make install
    strip /usr/local/bin/entr
    cp /usr/local/bin/entr "${_EMERGE_ROOT}"/bin
    rm -rf /eradman* /entr*
    log_as_installed "manual install" "entr-${_entr_version}" "http://entrproject.org/"
}
