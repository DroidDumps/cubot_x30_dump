#!/bin/bash

cat system/system/app/AW_Camera/AW_Camera.apk.* 2>/dev/null >> system/system/app/AW_Camera/AW_Camera.apk
rm -f system/system/app/AW_Camera/AW_Camera.apk.* 2>/dev/null
cat system/system/etc/uw_picture1_remap.* 2>/dev/null >> system/system/etc/uw_picture1_remap
rm -f system/system/etc/uw_picture1_remap.* 2>/dev/null
cat system/system/apex/com.android.runtime.release.apex.* 2>/dev/null >> system/system/apex/com.android.runtime.release.apex
rm -f system/system/apex/com.android.runtime.release.apex.* 2>/dev/null
