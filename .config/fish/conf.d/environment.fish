set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_RUNTIME_DIR $HOME/.tmp

switch (uname)
  case Darwin
    set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
    set -gx LDFLAGS "-L/usr/local/opt/ruby/lib"
    set -gx CPPFLAGS "-I/usr/local/opt/ruby/include"
end
