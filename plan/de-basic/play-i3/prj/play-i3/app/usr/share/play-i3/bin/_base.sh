## THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

is_debug () {
	if [ "$DEBUG_PLAY_I3" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	THE_PLAN_NAME="play-i3"
	THE_PRJ_NAME="$THE_PLAN_NAME"
	THE_MAIN_CMD_NAME="mod-i3"

	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.") ## /usr/share/play-lxqt
	THE_DOCUMENTROOT_DIR_PATH="$THE_PLAN_DIR_PATH" ## /usr/share/play-lxqt

	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME" ## /usr/share/play-lxqt/bin

	THE_VAR_DIR_NAME="var"
	THE_VAR_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_VAR_DIR_NAME" ## /usr/share/play-lxqt/var

	THE_ENV_DIR_NAME="env"
	THE_ENV_DIR_PATH="$THE_VAR_DIR_PATH/$THE_ENV_DIR_NAME" ## /usr/share/play-lxqt/var/env

	THE_ENV_DEFAULT_PROFILE="default"
	THE_ENV_DEFAULT_PROFILE_DIR_NAME="$THE_ENV_DEFAULT_PROFILE"
	THE_ENV_DEFAULT_PROFILE_DIR_PATH="$THE_ENV_DIR_PATH/$THE_ENV_DEFAULT_PROFILE_DIR_NAME" ## /usr/share/play-lxqt/var/env/default

	THE_ENV_USE_FILE_NAME=".use"
	THE_ENV_USE_FILE_PATH="$THE_ENV_DIR_PATH/$THE_ENV_USE_FILE_NAME" ## /usr/share/play-lxqt/var/env/.use

	THE_ITF_DIR_NAME="itf"
	THE_ITF_DIR_PATH="$THE_VAR_DIR_PATH/$THE_ITF_DIR_NAME" ## /usr/share/play-lxqt/var/itf

	THE_XDG_CONFIG_DIR_NAME=".config"
	THE_XDG_CONFIG_DIR_PATH="$HOME/$THE_XDG_CONFIG_DIR_NAME" ## ~/.config

	THE_PRJ_CONFIG_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_PRJ_NAME" ## ~/.config/play-lxqt
	THE_ENV_USER_DIR_PATH="$THE_PRJ_CONFIG_DIR_PATH/$THE_ENV_DIR_NAME" ## ~/.config/play-lxqt/env

	THE_ENV_USER_DEFAULT_DIR_NAME="$THE_ENV_DEFAULT_PROFILE_DIR_NAME"
	THE_ENV_USER_DEFAULT_DIR_PATH="$THE_ENV_USER_DIR_PATH/$THE_ENV_USER_DEFAULT_DIR_NAME" ## ~/.config/play-lxqt/env/default

	THE_ENV_USER_USE_FILE_NAME="$THE_ENV_USE_FILE_NAME"
	THE_ENV_USER_USE_FILE_PATH="$THE_ENV_USER_DIR_PATH/$THE_ENV_USER_USE_FILE_NAME" ## ~/.config/play-lxqt/env/.use



	THE_PKG_LIST_FILE_NAME="pkg-main.list.txt"
	THE_PKG_LIST_FILE_PATH="$THE_ITF_DIR_PATH/$THE_PKG_LIST_FILE_NAME" ## /usr/share/play-lxqt/var/itf/pkg-main.list.txt

	THE_CONF_DIR_NAME="conf"
	THE_CONF_DIR_PATH="$THE_VAR_DIR_PATH/$THE_CONF_DIR_NAME" ## /usr/share/play-lxqt/var/conf

	THE_I3_CONF_SET_DIR_NAME="i3.set"
	THE_I3_CONF_SET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_I3_CONF_SET_DIR_NAME" ## /usr/share/play-i3/var/conf/i3.set

	THE_I3_CONF_RESET_DIR_NAME="i3.reset"
	THE_I3_CONF_RESET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_I3_CONF_RESET_DIR_NAME" ## /usr/share/play-i3/var/conf/i3.reset

	THE_I3_CONF_MAIN_DIR_NAME="i3"
	THE_I3_CONF_MAIN_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_I3_CONF_MAIN_DIR_NAME" ## ~/.config/i3

	THE_I3_CONF_MAIN_FILE_NAME="config"
	THE_I3_CONF_MAIN_FILE_PATH="$THE_I3_CONF_MAIN_DIR_PATH/$THE_I3_CONF_MAIN_FILE_NAME" ## ~/.config/i3/config


	THE_ROFI_CONF_SET_DIR_NAME="rofi.set"
	THE_ROFI_CONF_SET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_ROFI_CONF_SET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/rofi.set

	THE_ROFI_CONF_RESET_DIR_NAME="rofi.reset"
	THE_ROFI_CONF_RESET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_ROFI_CONF_RESET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/rofi.reset

	THE_ROFI_CONF_MAIN_DIR_NAME="rofi"
	THE_ROFI_CONF_MAIN_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_ROFI_CONF_MAIN_DIR_NAME" ## ~/.config/rofi

	THE_ROFI_CONF_MAIN_FILE_NAME="config"
	THE_ROFI_CONF_MAIN_FILE_PATH="$THE_ROFI_CONF_MAIN_DIR_PATH/$THE_ROFI_CONF_MAIN_FILE_NAME" ## ~/.config/rofi/config


	THE_FCITX_CONF_SET_DIR_NAME="fcitx.set"
	THE_FCITX_CONF_SET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_FCITX_CONF_SET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/fcitx.set

	THE_FCITX_CONF_RESET_DIR_NAME="fcitx.reset"
	THE_FCITX_CONF_RESET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_FCITX_CONF_RESET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/fcitx.reset

	THE_FCITX_CONF_MAIN_DIR_NAME="fcitx"
	THE_FCITX_CONF_MAIN_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_FCITX_CONF_MAIN_DIR_NAME" ## ~/.config/fcitx

	THE_FCITX_CONF_MAIN_FILE_NAME="profile"
	THE_FCITX_CONF_MAIN_FILE_PATH="$THE_FCITX_CONF_MAIN_DIR_PATH/$THE_FCITX_CONF_MAIN_FILE_NAME" ## ~/.config/fcitx/profile


	THE_GTK3_CONF_SET_DIR_NAME="gtk3.set"
	THE_GTK3_CONF_SET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_GTK3_CONF_SET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/gtk3.set

	THE_GTK3_CONF_RESET_DIR_NAME="gtk3.reset"
	THE_GTK3_CONF_RESET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_GTK3_CONF_RESET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/gtk3.reset

	THE_GTK3_CONF_MAIN_DIR_NAME="gtk-3.0"
	THE_GTK3_CONF_MAIN_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_GTK3_CONF_MAIN_DIR_NAME" ## ~/.config/gtk-3.0

	THE_GTK3_CONF_MAIN_FILE_NAME="settings.ini"
	THE_GTK3_CONF_MAIN_FILE_PATH="$THE_GTK3_CONF_MAIN_DIR_PATH/$THE_GTK3_CONF_MAIN_FILE_NAME" ## ~/.config/gtk3/settings.ini


	THE_GTK2_CONF_SET_DIR_NAME="gtk2.set"
	THE_GTK2_CONF_SET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_GTK2_CONF_SET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/gtk2.set

	THE_GTK2_CONF_RESET_DIR_NAME="gtk2.reset"
	THE_GTK2_CONF_RESET_DIR_PATH="$THE_CONF_DIR_PATH/$THE_GTK2_CONF_RESET_DIR_NAME" ## /usr/share/play-lxqt/var/conf/gtk2.reset

	THE_GTK2_CONF_MAIN_DIR_NAME="gtk2"
	#THE_GTK2_CONF_MAIN_DIR_PATH="$THE_XDG_CONFIG_DIR_PATH/$THE_GTK2_CONF_MAIN_DIR_NAME" ## ~/.config/gtk2
	THE_GTK2_CONF_MAIN_DIR_PATH="$HOME"

	THE_GTK2_CONF_MAIN_FILE_NAME=".gtkrc-2.0"
	THE_GTK2_CONF_MAIN_FILE_PATH="$THE_GTK2_CONF_MAIN_DIR_PATH/$THE_GTK2_CONF_MAIN_FILE_NAME" ## ~/.gtkrc-2.0


}

base_var_dump () {

	is_not_debug && return 0


	echo
	echo "### Head: var_dump #############################################################"
	echo "#"
	echo "#"

	echo "THE_PLAN_NAME=$THE_PLAN_NAME"
	echo "THE_PRJ_NAME=$THE_PRJ_NAME"
	echo "THE_MAIN_CMD_NAME=$THE_MAIN_CMD_NAME"

	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"
	echo "THE_DOCUMENTROOT_DIR_PATH=$THE_DOCUMENTROOT_DIR_PATH"

	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_VAR_DIR_NAME=$THE_VAR_DIR_NAME"
	echo "THE_VAR_DIR_PATH=$THE_VAR_DIR_PATH"

	echo "THE_ENV_DIR_NAME=$THE_ENV_DIR_NAME"
	echo "THE_ENV_DIR_PATH=$THE_ENV_DIR_PATH"

	echo "THE_ENV_DEFAULT_PROFILE_DIR_NAME=$THE_ENV_DEFAULT_PROFILE_DIR_NAME"
	echo "THE_ENV_DEFAULT_PROFILE_DIR_PATH=$THE_ENV_DEFAULT_PROFILE_DIR_PATH"

	echo "THE_ENV_USE_FILE_NAME=$THE_ENV_USE_FILE_NAME"
	echo "THE_ENV_USE_FILE_PATH=$THE_ENV_USE_FILE_PATH"


	echo "THE_ITF_DIR_NAME=$THE_ITF_DIR_NAME"
	echo "THE_ITF_DIR_PATH=$THE_ITF_DIR_PATH"


	echo "THE_CONF_DIR_NAME=$THE_CONF_DIR_NAME"
	echo "THE_CONF_DIR_PATH=$THE_CONF_DIR_PATH"

	echo "THE_PKG_LIST_FILE_NAME=$THE_PKG_LIST_FILE_NAME"
	echo "THE_PKG_LIST_FILE_PATH=$THE_PKG_LIST_FILE_PATH"

	echo "THE_CONF_DIR_NAME=$THE_CONF_DIR_NAME"
	echo "THE_CONF_DIR_PATH=$THE_CONF_DIR_PATH"

	echo "THE_XDG_CONFIG_DIR_NAME=$THE_XDG_CONFIG_DIR_NAME"
	echo "THE_XDG_CONFIG_DIR_PATH=$THE_XDG_CONFIG_DIR_PATH"

	echo "THE_PRJ_CONFIG_DIR_PATH=$THE_PRJ_CONFIG_DIR_PATH"
	echo "THE_ENV_USER_DIR_PATH=$THE_ENV_USER_DIR_PATH"

	echo "THE_ENV_USER_DEFAULT_DIR_NAME=$THE_ENV_USER_DEFAULT_DIR_NAME"
	echo "THE_ENV_USER_DEFAULT_DIR_PATH=$THE_ENV_USER_DEFAULT_DIR_PATH"

	echo "THE_ENV_USER_USE_FILE_NAME=$THE_ENV_USER_USE_FILE_NAME"
	echo "THE_ENV_USER_USE_FILE_PATH=$THE_ENV_USER_USE_FILE_PATH"


	echo "THE_LXQT_CONF_SET_DIR_NAME=$THE_LXQT_CONF_SET_DIR_NAME"
	echo "THE_LXQT_CONF_SET_DIR_PATH=$THE_LXQT_CONF_SET_DIR_PATH"

	echo "THE_LXQT_CONF_RESET_DIR_NAME=$THE_LXQT_CONF_RESET_DIR_NAME"
	echo "THE_LXQT_CONF_RESET_DIR_PATH=$THE_LXQT_CONF_RESET_DIR_PATH"

	echo "THE_LXQT_CONF_MAIN_DIR_NAME=$THE_LXQT_CONF_MAIN_DIR_NAME"
	echo "THE_LXQT_CONF_MAIN_DIR_PATH=$THE_LXQT_CONF_MAIN_DIR_PATH"

	echo "THE_LXQT_CONF_MAIN_FILE_NAME=$THE_LXQT_CONF_MAIN_FILE_NAME"
	echo "THE_LXQT_CONF_MAIN_FILE_PATH=$THE_LXQT_CONF_MAIN_FILE_PATH"



	echo "THE_ROFI_CONF_SET_DIR_NAME=$THE_ROFI_CONF_SET_DIR_NAME"
	echo "THE_ROFI_CONF_SET_DIR_PATH=$THE_ROFI_CONF_SET_DIR_PATH"

	echo "THE_ROFI_CONF_RESET_DIR_NAME=$THE_ROFI_CONF_RESET_DIR_NAME"
	echo "THE_ROFI_CONF_RESET_DIR_PATH=$THE_ROFI_CONF_RESET_DIR_PATH"

	echo "THE_ROFI_CONF_MAIN_DIR_NAME=$THE_ROFI_CONF_MAIN_DIR_NAME"
	echo "THE_ROFI_CONF_MAIN_DIR_PATH=$THE_ROFI_CONF_MAIN_DIR_PATH"

	echo "THE_ROFI_CONF_MAIN_FILE_NAME=$THE_ROFI_CONF_MAIN_FILE_NAME"
	echo "THE_ROFI_CONF_MAIN_FILE_PATH=$THE_ROFI_CONF_MAIN_FILE_PATH"


	echo "THE_FCITX_CONF_SET_DIR_NAME=$THE_FCITX_CONF_SET_DIR_NAME"
	echo "THE_FCITX_CONF_SET_DIR_PATH=$THE_FCITX_CONF_SET_DIR_PATH"

	echo "THE_FCITX_CONF_RESET_DIR_NAME=$THE_FCITX_CONF_RESET_DIR_NAME"
	echo "THE_FCITX_CONF_RESET_DIR_PATH=$THE_FCITX_CONF_RESET_DIR_PATH"

	echo "THE_FCITX_CONF_MAIN_DIR_NAME=$THE_FCITX_CONF_MAIN_DIR_NAME"
	echo "THE_FCITX_CONF_MAIN_DIR_PATH=$THE_FCITX_CONF_MAIN_DIR_PATH"

	echo "THE_FCITX_CONF_MAIN_FILE_NAME=$THE_FCITX_CONF_MAIN_FILE_NAME"
	echo "THE_FCITX_CONF_MAIN_FILE_PATH=$THE_FCITX_CONF_MAIN_FILE_PATH"


	echo "THE_GTK3_CONF_SET_DIR_NAME=$THE_GTK3_CONF_SET_DIR_NAME"
	echo "THE_GTK3_CONF_SET_DIR_PATH=$THE_GTK3_CONF_SET_DIR_PATH"

	echo "THE_GTK3_CONF_RESET_DIR_NAME=$THE_GTK3_CONF_RESET_DIR_NAME"
	echo "THE_GTK3_CONF_RESET_DIR_PATH=$THE_GTK3_CONF_RESET_DIR_PATH"

	echo "THE_GTK3_CONF_MAIN_DIR_NAME=$THE_GTK3_CONF_MAIN_DIR_NAME"
	echo "THE_GTK3_CONF_MAIN_DIR_PATH=$THE_GTK3_CONF_MAIN_DIR_PATH"

	echo "THE_GTK3_CONF_MAIN_FILE_NAME=$THE_GTK3_CONF_MAIN_FILE_NAME"
	echo "THE_GTK3_CONF_MAIN_FILE_PATH=$THE_GTK3_CONF_MAIN_FILE_PATH"


	echo "THE_GTK2_CONF_SET_DIR_NAME=$THE_GTK2_CONF_SET_DIR_NAME"
	echo "THE_GTK2_CONF_SET_DIR_PATH=$THE_GTK2_CONF_SET_DIR_PATH"

	echo "THE_GTK2_CONF_RESET_DIR_NAME=$THE_GTK2_CONF_RESET_DIR_NAME"
	echo "THE_GTK2_CONF_RESET_DIR_PATH=$THE_GTK2_CONF_RESET_DIR_PATH"

	echo "THE_GTK2_CONF_MAIN_DIR_NAME=$THE_GTK2_CONF_MAIN_DIR_NAME"
	echo "THE_GTK2_CONF_MAIN_DIR_PATH=$THE_GTK2_CONF_MAIN_DIR_PATH"

	echo "THE_GTK2_CONF_MAIN_FILE_NAME=$THE_GTK2_CONF_MAIN_FILE_NAME"
	echo "THE_GTK2_CONF_MAIN_FILE_PATH=$THE_GTK2_CONF_MAIN_FILE_PATH"


	echo "#"
	echo "#"
	echo "### Tail: var_dump #############################################################"
	echo
}