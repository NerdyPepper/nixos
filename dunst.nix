{
  enable = true;
  settings = {
    global = {
      font                 = "Input 10";
      allow_markup         = "no";
      format               = "%s\n%b";
      sort                 = "yes";
      indicate_hidden      = "yes";
      alignment            = "right";
      bounce_freq          = "0";
      show_age_threshold   = "60";
      word_wrap            = "yes";
      ignore_newline       = "no";
      geometry             = "300x8-20+20";
      shrink               = "yes";
      transparency         = "0";
      idle_threshold       = "120";
      monitor              = "0";
      follow               = "mouse";
      sticky_history       = "yes";
      history_length       = "20";
      show_indicators      = "yes";
      line_height          = "0";
      separator_height     = "0";
      padding              = "20";
      horizontal_padding   = "20";
      separator_color      = "auto";
      startup_notification = "true";
      # i don't need any of these
      dmenu                = "/usr/bin/dmenu -p dunst:";
      browser              = "/usr/bin/firefox -new-tab";
      icon_position        = "off";
      icon_folders         = "/usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/";
    };

    urgency_normal = {
      background   = "#000000";
      foreground   = "#eeffff";
      timeout      = 10;
    };
    urgency_low = {
      background = "#000000";
      foreground = "#eeffff";
      timeout    = 2;
    };
    urgency_critical = {
      background     = "#000000";
      foreground     = "#eeffff";
      timeout        = 0;
    };
    frame = {
      width = 2;
      color = "#303030";
    };
    shortcuts = {
      close     = "ctrl+space";
      close_all = "ctrl+shift+space";
      history   = "ctrl+grave";
      context   = "ctrl+shift+period";
    };
  };
}
