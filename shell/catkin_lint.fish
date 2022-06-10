# *-* mode: shell-script;-*-
# Copyright 2013-2022 Fraunhofer FKIE
# SPDX-License-Identifier: BSD-3-Clause

complete -c catkin_lint -x -a "(__fish_complete_directories (commandline -ct))"
complete -c catkin_lint -s h -l help -d "show help"
complete -c catkin_lint -l version -d "show version"
complete -c catkin_lint -l help-problem -x -r -a "(catkin_lint --list-check-ids)" -d "show help for specific problem diagnosis"
complete -c catkin_lint -l ignore -x -r -a "(catkin_lint --list-check-ids)" -d "ignore problem"
complete -c catkin_lint -l notice -x -r -a "(catkin_lint --list-check-ids)" -d "treat problem as notice"
complete -c catkin_lint -l warning -x -r -a "(catkin_lint --list-check-ids)" -d "treat problem as warning"
complete -c catkin_lint -l error -x -r -a "(catkin_lint --list-check-ids)" -d "treat problem as error"
complete -c catkin_lint -l color -x -r -a "always auto never" -d "colorize output"
complete -c catkin_lint -l output -x -r -a "explain json text xml" -d "choose output format"
complete -c catkin_lint -l pkg -x -r -a "(rospack list-names 2>/dev/null)" -d "select ROS package to lint"
complete -c catkin_lint -l skip-pkg -x -r -a "(rospack list-names 2>/dev/null)" -d "do not lint ROS package"
complete -c catkin_lint -l path -x -r -a "(__fish_complete_directories (commandline -ct))" -d "add package search path"
complete -c catkin_lint -l skip-path -x -r -a "(__fish_complete_directories (commandline -ct))" -d "skip packages in path"
complete -c catkin_lint -l rosdistro -x -r -a "groovy hydro indigo jade kinetic lunar melodic noetic $ROS_DISTRO" -d "force ROS distribution"
complete -c catkin_lint -l config -r -d "read configuration from file"
complete -c catkin_lint -s W -l severity-level -x -r -a "0 1 2" -d "set severity level"
complete -c catkin_lint -l strict -d "treat everything reported as error"
complete -c catkin_lint -l no-strict -d "override strict=yes option from configuration file"
complete -c catkin_lint -s q -l quiet -d "suppress final summary"
complete -c catkin_lint -l no-quiet -d "override quiet=yes option from configuration file"
complete -c catkin_lint -l show-ignored -d "show problems even if they have been ignored explicitly"
complete -c catkin_lint -l resolve-env -d "resolve \$ENV{} references from environment variables"
complete -c catkin_lint -l no-resolve-env -d "override resolve_env=yes option from configuration file"
complete -c catkin_lint -l text -d "alias for --output=text"
complete -c catkin_lint -l explain -d "alias for --output=explain"
complete -c catkin_lint -l json -d "alias for --output=json"
complete -c catkin_lint -l xml -d "alias for --output=xml"
complete -c catkin_lint -l offline -d "do not download package index to look for packages"
complete -c catkin_lint -l no-offline -d "override offline=yes option from configuration file"
complete -c catkin_lint -l clear-cache -d "clear internal cache and invalidate all downloaded manifests"