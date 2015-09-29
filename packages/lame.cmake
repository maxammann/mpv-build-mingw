ExternalProject_Add(lame
    DEPENDS gcc
    #GIT_REPOSITORY "git://anonscm.debian.org/pkg-multimedia/lame.git"
    GIT_REPOSITORY "git://github.com/rbrito/lame.git"
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ${EXEC} <SOURCE_DIR>/configure
        --host=${TARGET_ARCH}
        --prefix=${MINGW_INSTALL_PREFIX}
        --disable-shared
        --disable-frontend
        CFLAGS=-msse
    BUILD_COMMAND ${MAKE}
    INSTALL_COMMAND ${MAKE} install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(lame)
#autoreconf(lame)
