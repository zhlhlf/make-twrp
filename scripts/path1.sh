
#更改中国时区 24小时 
#更改为无振动

cfile="bootable/recovery/data.cpp"

sed -i s/'mPersist.SetValue(TW_TIME_ZONE_VAR, "CST6CDT,M3.2.0,M11.1.0");'/'mPersist.SetValue(TW_TIME_ZONE_VAR, "TAIST-8");'/g $cfile

sed -i s/'mPersist.SetValue(TW_TIME_ZONE_GUISEL, "CST6;CDT,M3.2.0,M11.1.0");'/'mPersist.SetValue(TW_TIME_ZONE_GUISEL, "TAIST-8;TAIDT");'/g $cfile

sed -i s/'mPersist.SetValue(TW_TIME_ZONE_GUIDST, "1");'/'mPersist.SetValue(TW_TIME_ZONE_GUIDST, "0");'/g $cfile

sed -i s/'mPersist.SetValue("tw_military_time", "0");'/'mPersist.SetValue("tw_military_time", "1");'/g $cfile

sed -i s/'mPersist.SetValue("tw_button_vibrate", "80");'/'mPersist.SetValue("tw_button_vibrate", "0");'/g $cfile

sed -i s/'mPersist.SetValue("tw_keyboard_vibrate", "40");'/'mPersist.SetValue("tw_keyboard_vibrate", "0");'/g $cfile

sed -i s/'mPersist.SetValue("tw_action_vibrate", "160");'/'mPersist.SetValue("tw_action_vibrate", "0");'/g $cfile
